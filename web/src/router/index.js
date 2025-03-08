import { createRouter, createWebHashHistory } from 'vue-router'

const routes = [
  // {
  //   path: '/',
  //   redirect: '/login'
  // },
  {
    path: '/init',
    name: 'Init',
    component: () => import('@/view/init/index.vue')
  },
  {
    path: '/login',
    name: 'Login',
    component: () => import('@/view/login/index.vue')
  },
  {
    path: '/scanUpload',
    name: 'ScanUpload',
    meta: {
      title: '扫码上传'
    },
    component: () => import('@/view/example/upload/scanUpload.vue')
  },
  {
    path: '/:catchAll(.*)',
    meta: {
      closeTab: true
    },
    component: () => import('@/view/error/index.vue')
  },
  {
    path: '/home',
    name: 'Home',
    component: () => import('@/view/home/index.vue'),
    meta: { title: '首页' }
  },
  {
    path: '/film',
    name: 'Film',
    component: () => import('@/view/film/index.vue'),
    meta: { title: '影视' }
  },
  {
    path: '/',
    redirect: '/home',   // 将根路径重定向到首页
    hidden: true
  },
]

const router = createRouter({
  history: createWebHashHistory(),
  routes
})

export default router
