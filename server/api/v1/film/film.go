package film

import (
	"fmt"
	"gorm.io/gorm"
	"net/http"
	"strconv"

	"github.com/flipped-aurora/gin-vue-admin/server/model/common/request"
	"github.com/flipped-aurora/gin-vue-admin/server/model/common/response"
	"github.com/flipped-aurora/gin-vue-admin/server/model/film"
	"github.com/flipped-aurora/gin-vue-admin/server/service"
	"github.com/gin-gonic/gin"
)

type FilmApi struct{}

func (m *FilmApi) GetFilmList(c *gin.Context) {
	fmt.Println("GetFilmList...")
	var pageInfo request.PageInfo
	if err := c.ShouldBindQuery(&pageInfo); err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}

	// 添加服务调用和错误处理
	list, total, err := service.ServiceGroupApp.FilmServiceGroup.GetFilmList(pageInfo)
	if err != nil {
		response.FailWithMessage("获取失败", c)
		return
	}

	// 返回分页数据结构
	response.OkWithDetailed(response.PageResult{
		List:     list,
		Total:    total,
		Page:     pageInfo.Page,
		PageSize: pageInfo.PageSize,
	}, "获取成功", c)
}

// @Summary 新增电影
// @Tags Film
// @Accept json
// @Produce json
// @Param data body film.Movie true "电影信息"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"创建成功"}"
// @Router /film/create [post]
func (a *FilmApi) CreateMovie(c *gin.Context) {
	fmt.Println("CreateMovie...")
	var movie film.Movie
	if err := c.ShouldBindJSON(&movie); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"success": false, "msg": "参数错误", "error": err.Error()})
		return
	}
	fmt.Println(movie)
	err := filmService.CreateMovie(&movie)
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"success": false, "msg": "创建失败", "error": err.Error()})
		return
	}

	c.JSON(http.StatusOK, gin.H{"success": true, "msg": "创建成功", "data": movie})
}

// @Summary 获取演员列表
// @Tags Film
// @Produce json
// @Success 200 {object} response.Response{data=[]film.Actor}
// @Router /film/actors [get]
func (a *FilmApi) GetActors(c *gin.Context) {
	actors, err := filmService.GetActors()
	if err != nil {
		response.FailWithMessage("获取失败", c)
		return
	}
	response.OkWithDetailed(actors, "获取成功", c)
}

// DeleteMovie 删除电影
// @Summary 删除电影
// @Tags Film
// @Accept json
// @Produce json
// @Param id path int true "电影ID"
// @Success 200 {object} response.Response{msg=string} "删除成功"
// @Router /film/delete/{id} [delete]
func (a *FilmApi) DeleteMovie(c *gin.Context) {
	id := c.Param("id")
	movieID, err := strconv.Atoi(id)
	if err != nil {
		response.FailWithMessage("无效的电影ID", c)
		return
	}

	if err := filmService.DeleteMovie(uint(movieID)); err != nil {
		response.FailWithMessage("删除失败: "+err.Error(), c)
		return
	}

	response.OkWithMessage("删除成功", c)
}

// UpdateMovie 更新电影信息
// @Summary 更新电影
// @Tags Film
// @Accept json
// @Produce json
// @Param id path int true "电影ID"
// @Param data body film.Movie true "电影信息"
// @Success 200 {object} response.Response{msg=string} "更新成功"
// @Router /film/edit/{id} [put]
func (a *FilmApi) UpdateMovie(c *gin.Context) {
	id := c.Param("id")
	movieID, err := strconv.Atoi(id)
	if err != nil {
		response.FailWithMessage("无效的电影ID", c)
		return
	}

	var movie film.Movie
	if err := c.ShouldBindJSON(&movie); err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}

	if err := filmService.UpdateMovie(uint(movieID), &movie); err != nil {
		response.FailWithMessage("更新失败: "+err.Error(), c)
		return
	}

	response.OkWithMessage("更新成功", c)
}

// GetMovieDetail 获取电影详情
// @Summary 获取电影详情
// @Tags Film
// @Produce json
// @Param id path int true "电影ID"
// @Success 200 {object} response.Response{data=film.Movie} "获取成功"
// @Router /film/detail/{id} [get]
func (a *FilmApi) GetMovieDetail(c *gin.Context) {
	id := c.Param("id")
	movieID, err := strconv.Atoi(id)
	if err != nil {
		response.FailWithMessage("无效的电影ID", c)
		return
	}

	movie, err := filmService.GetMovieDetail(uint(movieID))
	if err != nil {
		if err == gorm.ErrRecordNotFound {
			response.FailWithMessage("电影不存在", c)
		} else {
			response.FailWithMessage("获取失败: "+err.Error(), c)
		}
		return
	}

	response.OkWithDetailed(movie, "获取成功", c)
}
