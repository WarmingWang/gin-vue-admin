package film

import (
	v1 "github.com/flipped-aurora/gin-vue-admin/server/api/v1"
	"github.com/gin-gonic/gin"
)

type FilmRouter struct{}

func (s *FilmRouter) InitFilmRouter(Router *gin.RouterGroup) {
	filmRouter := Router.Group("film")
	var filmApi = v1.ApiGroupApp.FilmApiGroup.FilmApi
	{
		filmRouter.GET("list", filmApi.GetFilmList)          // 电影列表接口
		filmRouter.POST("create", filmApi.CreateMovie)       // 创建电影
		filmRouter.GET("actors", filmApi.GetActors)          // 新增演员列表路由
		filmRouter.DELETE("delete/:id", filmApi.DeleteMovie) // 修改后的删除接口路径
	}
}
