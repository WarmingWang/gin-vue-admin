package film

type Movie struct {
	ID          uint     `json:"id" gorm:"primaryKey"`
	Title       string   `json:"title" gorm:"comment:标题"`
	Poster      string   `json:"poster" gorm:"comment:海报地址"`
	Director    string   `json:"director" gorm:"comment:导演"`
	MovieActors []Actor  `json:"actors" gorm:"many2many:movie_actors;"`
	Region      string   `json:"region" gorm:"comment:地区"`
	Year        int      `json:"year" gorm:"comment:年份"`
	Ratings     []Rating `json:"ratings" gorm:"foreignKey:MovieID;references:ID"` // 关联评分
	Genres      string   `json:"genres" gorm:"comment:影视类别"`
}

type Actor struct {
	ID     uint   `json:"id" gorm:"primaryKey"`
	Name   string `json:"name" gorm:"comment:演员姓名"`
	Avatar string `json:"avatar" gorm:"comment:演员头像"`
}

type Rating struct {
	MovieID    uint           `json:"movieid" gorm:"column:movie_id"`                      // 电影 ID
	PlatformID uint           `json:"platformid" gorm:"column:platform_id"`                // 评分平台 ID
	Score      float64        `json:"rating" gorm:"column:rating"`                         // 评分值
	Platform   RatingPlatform `json:"platform" gorm:"foreignKey:PlatformID;references:ID"` // 关联评分平台
}

// 评分平台
type RatingPlatform struct {
	ID   uint   `json:"-" gorm:"primaryKey"`
	Name string `json:"name" gorm:"column:name"` // 评分平台名称
	Icon string `json:"icon" gorm:"column:icon"` // 图标
}

// MovieActor 电影与演员的多对多关联表
type MovieActor struct {
	MovieID uint `json:"movie_id" gorm:"column:movie_id"`
	ActorID uint `json:"actor_id" gorm:"column:actor_id"`
}

func (Rating) TableName() string {
	return "movie_ratings"
}

func (RatingPlatform) TableName() string {
	return "rating_platforms"
}

func (Movie) TableName() string {
	return "movies"
}

func (Actor) TableName() string {
	return "actors"
}

func (MovieActor) TableName() string {
	return "movie_actors"
}
