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

// 删除电影
export function deleteMovie(id) {
  return request({
    url: `/film/delete/${id}`,
    method: 'delete'
  })
}

export function getActors() {
  return request({
    url: '/film/actors',
    method: 'get'
  })
}

// 电影详情获取方法
export function getMovieDetail(id) {
  return request({
    url: `/film/detail/${id}`,
    method: 'get'
  })
}

// 电影更新方法
export function updateMovie(data) {
  const id = data.id;
  return request({
    url: `/film/edit/${id}`,
    method: 'put',
    data
  })
}