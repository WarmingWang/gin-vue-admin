package film

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/film"
	"gorm.io/gorm"
	"strings"
)

type FilmService struct{}

func (f *FilmService) GetFilmList(params film.MovieSearch) (list interface{}, total int64, err error) {
	// 修改参数类型为film.MovieSearch
	db := global.GVA_DB.Model(&film.Movie{})

	// 添加查询条件
	if params.Title != "" {
		db = db.Where("title LIKE ?", "%"+params.Title+"%")
	}
	if params.Director != "" {
		db = db.Where("director LIKE ?", "%"+params.Director+"%")
	}
	if params.Year > 0 {
		db = db.Where("year = ?", params.Year)
	}
	if len(params.Genres) > 0 {
		db = db.Where("genres LIKE ?", "%"+strings.Join(params.Genres, ",")+"%")
	}
	limit := params.PageSize
	offset := params.PageSize * (params.Page - 1)

	var filmList []film.Movie
	err = db.Count(&total).Error
	if err != nil {
		return
	}

	err = db.Preload("MovieActors").
		Preload("Ratings.Platform").
		Scopes(Paginate(offset, limit)).
		Find(&filmList).Error

	return filmList, total, err
}

func Paginate(offset, limit int) func(db *gorm.DB) *gorm.DB {
	return func(db *gorm.DB) *gorm.DB {
		return db.Offset(offset).Limit(limit)
	}
}

func (f *FilmService) CreateMovie(movie *film.Movie) error {
	db := global.GVA_DB.Begin() // 开启事务

	// 先创建电影记录
	if err := db.Create(&movie).Error; err != nil {
		db.Rollback() // 回滚事务
		return err
	}

	// 如果有演员信息，更新 movie_actors 关联表
	if len(movie.MovieActors) > 0 {
		if err := db.Model(&movie).Association("MovieActors").Replace(movie.MovieActors); err != nil {
			db.Rollback()
			return err
		}
	}

	// 如果有评分信息，使用Append而不是Replace
	if len(movie.Ratings) > 0 {
		// 为每个评分设置MovieID
		for i := range movie.Ratings {
			movie.Ratings[i].MovieID = movie.ID
		}
		if err := db.Model(&movie).Association("Ratings").Append(movie.Ratings); err != nil {
			db.Rollback()
			return err
		}
	}

	db.Commit() // 提交事务
	return nil
}

func (m *FilmService) GetActors() ([]film.Actor, error) {
	var actors []film.Actor
	err := global.GVA_DB.Find(&actors).Error
	return actors, err
}

// DeleteMovie 删除电影
func (s *FilmService) DeleteMovie(id uint) error {
	// 开启事务
	tx := global.GVA_DB.Begin()
	defer func() {
		if r := recover(); r != nil {
			tx.Rollback()
		}
	}()

	// 删除电影相关的评分
	if err := tx.Where("movie_id = ?", id).Delete(&film.Rating{}).Error; err != nil {
		tx.Rollback()
		return err
	}

	// 删除电影与演员的关联
	if err := tx.Where("movie_id = ?", id).Delete(&film.MovieActor{}).Error; err != nil {
		tx.Rollback()
		return err
	}

	// 删除电影
	if err := tx.Delete(&film.Movie{}, id).Error; err != nil {
		tx.Rollback()
		return err
	}

	return tx.Commit().Error
}

// UpdateMovie 更新电影及关联数据
func (s *FilmService) UpdateMovie(id uint, movie *film.Movie) error {
	tx := global.GVA_DB.Begin()
	defer func() {
		if r := recover(); r != nil {
			tx.Rollback()
		}
	}()

	// 更新基础信息
	if err := tx.Model(&film.Movie{}).Where("id = ?", id).Updates(movie).Error; err != nil {
		tx.Rollback()
		return err
	}

	// 更新演员关联
	if err := tx.Model(&film.Movie{ID: id}).Association("MovieActors").Replace(movie.MovieActors); err != nil {
		tx.Rollback()
		return err
	}

	// 更新评分（先删除旧评分再添加新评分）
	if len(movie.Ratings) > 0 {
		if err := tx.Where("movie_id = ?", id).Delete(&film.Rating{}).Error; err != nil {
			tx.Rollback()
			return err
		}
		for i := range movie.Ratings {
			movie.Ratings[i].MovieID = id
		}
		if err := tx.Create(&movie.Ratings).Error; err != nil {
			tx.Rollback()
			return err
		}
	}

	return tx.Commit().Error
}

func (s *FilmService) GetMovieDetail(id uint) (*film.Movie, error) {
	var movie film.Movie
	// 修改预加载方式
	err := global.GVA_DB.
		Preload("MovieActors", func(db *gorm.DB) *gorm.DB {
			return db.Select("id, name, avatar") // 直接选择需要的演员字段
		}).
		Preload("Ratings.Platform").
		Where("id = ?", id).
		First(&movie).Error

	if err != nil {
		return nil, err
	}
	return &movie, nil
}
