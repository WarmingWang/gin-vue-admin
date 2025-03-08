import request from '@/utils/request'

export function getFilmList(params) {
  return request({
    url: '/film/list',
    method: 'get',
    params
  })
}

// 新增电影
export function createMovie(data) {
  return request({
    url: '/film/create',
    method: 'post',
    data
  })
}

export function getActors() {
  return request({
    url: '/film/actors',
    method: 'get'
  })
}