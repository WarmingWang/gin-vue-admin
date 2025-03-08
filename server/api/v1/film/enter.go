package film

import "github.com/flipped-aurora/gin-vue-admin/server/service"

type ApiGroup struct {
	FilmApi
}

var (
	filmService = service.ServiceGroupApp.FilmServiceGroup.FilmService
)
