package film

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/common/request"
	"github.com/flipped-aurora/gin-vue-admin/server/model/film"
	"gorm.io/gorm"
)

type FilmService struct{}

func (f *FilmService) GetFilmList(info request.PageInfo) (list interface{}, total int64, err error) {
	limit := info.PageSize
	offset := info.PageSize * (info.Page - 1)
	db := global.GVA_DB.Model(&film.Movie{})

	var filmList []film.Movie
	err = db.Count(&total).Error
	if err != nil {
		return
	}
	db = db.Debug()
	err = db.Preload("MovieActors").Preload("Ratings.Platform").Scopes(Paginate(offset, limit)).Find(&filmList).Error

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

	// 如果有评分信息，更新 movie_ratings 关联表
	if len(movie.Ratings) > 0 {
		if err := db.Model(&movie).Association("Ratings").Replace(movie.Ratings); err != nil {
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
