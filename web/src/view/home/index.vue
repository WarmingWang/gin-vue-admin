<template>
  <div class="home-container">
    <header class="header">
      <div class="headK flexC Huans">
        <a href="/home" class="hdlogo"><img src="/film/images/icon/logo.png"></a>
        <ul class="Menu Huans flexC fl-bet">
          <li><router-link to="/home" class="MenuA flexC" active-class="on">首页</router-link></li>
          <li><router-link to="/film" class="MenuA flexC" active-class="on">影视</router-link></li>
          <li><router-link to="/disc" class="MenuA flexC" active-class="on">碟讯</router-link></li>
          <li><router-link to="/festival" class="MenuA flexC" active-class="on">电影节&电影奖</router-link></li>
        </ul>
        <div class="hdsea flexC fl-bet Huans">
          <input type="text" placeholder="搜索电影、电视剧、影人、电影节、电影奖" class="hdseaI Huans">
          <a href="javascript:;" class="hdseaA"></a>
        </div>
        <a href="javascript:;" class="hdBut Huans">登录</a>
      </div>
    </header>

    <article class="IndDK Huans">
      <div class="Indban">
        <div id="drag-container">
          <div id="spin-container">
            <img src="/film/images/znot/haibao01.jpg" alt="">
            <img src="/film/images/znot/haibao02.jpg" alt="">
            <img src="/film/images/znot/haibao03.jpg" alt="">
            <img src="/film/images/znot/haibao04.jpg" alt="">
            <img src="/film/images/znot/haibao02.jpg" alt="">
            <img src="/film/images/znot/haibao03.jpg" alt="">
            <img src="/film/images/znot/haibao04.jpg" alt="">
            <video controls autoplay loop>
              <source src="https://player.vimeo.com/external/322244668.sd.mp4" type="video/mp4">
            </video>
          </div>
          <div id="ground"></div>
        </div>
      </div>

      <section class="IndDB flex fl-bet">
        <!-- 左侧内容 -->
        <div class="IndDL">
          <div class="Indent">
            <div class="IndTit flexC"><i></i>
              <h3>最新录入</h3>
            </div>
            <div class="IndentN flex">
              <div v-for="n in 5" :key="n" class="filReca">
                <img :src="`/film/images/znot/haibao0${n % 4 || 4}.jpg`">
                <div class="Alfjh flex fl-cen"><i></i></div>
                <a href="/detail" class="detLhota_link"></a>
              </div>
            </div>
          </div>

          <div class="Indnew">
            <div class="IndTit flexC"><i></i>
              <h3>最新碟讯</h3>
            </div>
            <div class="IndnewN flex">
              <a v-for="n in 5" :key="n" href="/detail" class="filReca">
                <img :src="`/film/images/znot/haibao0${n % 4 || 4}.jpg`">
              </a>
            </div>
          </div>
        </div>

        <!-- 右侧边栏 -->
        <div class="IndDR">
          <div class="Indhot Huans">
            <div class="IndTit flexC fl-end">
              <h3>单片热门</h3><i></i>
            </div>
            <div class="IndhotN Huans">
              <a v-for="n in 5" :key="n" href="/detail" class="detLhota flexC fl-bet">
                <div class="detLhotI">
                  <img :src="`/film/images/znot/haibao0${n % 4 || 4}.jpg`">
                </div>
                <div class="detLhotP">
                  <p>日本导演的艺妓梦{{ n }}</p>
                  <span>2023-08-更新 • {{ 99999 - n }}人收藏</span>
                </div>
              </a>
            </div>
          </div>

          <div class="Indass Huans">
            <div class="IndassT flexC">
              <h3>合作联系</h3>
            </div>
            <div class="IndassN Huans"></div>
          </div>

          <div class="Indass Huans">
            <div class="IndassT flexC">
              <h3>关注我们</h3>
            </div>
            <div class="IndassN Huans"></div>
          </div>
        </div>
      </section>
    </article>

    <!-- 弹出层 -->
    <div class="TcN TcShou Huans">
      <a href="javascript:;" class="Tclose close"></a>
      <div class="TcShouT flexC Huans">
        <h3>添加影视到片单</h3>
      </div>
      <div class="TcShouK Huans">
        <div class="TcShouS flexC fl-end">
          <div class="TcShosea flexC fl-bet Huans">
            <input type="text" placeholder="输入片单名" class="TcShoseaI Huans">
            <a href="javascript:;" class="TcShoseaA"></a>
          </div>
        </div>
        <div class="TcShouN flex fl-bet">
          <div class="TcShouI"><img src="/film/images/znot/haibao01.jpg"></div>
          <div class="TcShouU Huans">
            <div class="TcShouP Huans">
              <a v-for="(item, index) in 7" :key="index" href="javascript:;" class="TcShoua flexC Huans"
                :class="{ on: index === 0 }">
                <i></i>
                <p>{{ ['日本影史百佳', '豆瓣电影Top250', 'IMDb网站Top250'][index % 3] }}</p>
              </a>
            </div>
          </div>
        </div>
      </div>
      <div class="TcShouF flexC Huans fl-end">
        <a href="javascript:;" class="TcShouB flexC fl-cen">
          <p>＋创建片单</p>
        </a>
      </div>
    </div>

    <a href="javascript:;" class="top"><img src="/film/images/icon/top.png"></a>
    <div class="TcB close"></div>
  </div>
</template>

<script setup>

import { onMounted } from 'vue'
import $ from 'jquery'

const load3DJS = () => {
  const script = document.createElement('script')
  script.src = '/film/js/3d.js'
  script.onload = () => {
    if (typeof init3DCarousel === 'function') {
      init3DCarousel()

      // 优化自动旋转逻辑
      let rotation = 0
      const animate = () => {
        rotation += 0.3
        document.getElementById('spin-container').style.transform =
          `rotateX(-10deg) rotateY(${rotation}deg)`
        requestAnimationFrame(animate)
      }
      requestAnimationFrame(animate)
    }
  }
  document.head.appendChild(script)
}

// 初始化逻辑
const initComponents = () => {
  // 保持原有事件逻辑
  $('.top').click(() => $('html,body').animate({ scrollTop: '0px' }, 800))

  // 弹窗控制
  $('.Alfjh').click(() => {
    $('.TcB').fadeIn(100)
    $('.TcShou').slideDown(200)
  })

  $('.close').click(() => {
    $('.TcB').fadeOut(100)
    $('.TcN').slideUp(200)
  })

  // 导航下拉
  $(".MenuA").mouseover(function () {
    $(this).next(".MenuF").slideDown(400)
    $(this).addClass("menuO")
  })

  $(".Menu li").mouseleave(function () {
    $(this).children(".MenuF").slideUp(400)
    $(this).children(".MenuA").removeClass("menuO")
  })
}

onMounted(() => {
  initComponents()
  load3DJS()
})
</script>

<style scoped>
@import '/film/css/jquery.raty.css';
@import '/film/css/swiper.css';
@import '/film/css/style.css';
@import '/film/css/index.css';
</style>

<style scoped>
/* 添加平滑旋转效果 */
#spin-container {
  transition: transform 0.5s linear !important;
  animation: rotate 60s linear infinite;
}

@keyframes rotate {
  from {
    transform: rotateX(-10deg) rotateY(0deg);
  }

  to {
    transform: rotateX(-10deg) rotateY(360deg);
  }
}

/* 禁用鼠标事件时的过渡 */
#drag-container:active #spin-container {
  transition: transform 0.1s linear !important;
}

/* 修复全局高度 */
html,
body {
  height: 100%;
  margin: 0;
}

.home-container {
  min-height: 100vh;
  background: #FFFEF4;
  max-width: 1440px;
  margin: 0 auto;
  overflow-y: auto;
  /* 修改高度计算方式 */
  height: 100%;
  position: relative;
}

/* 新增内容容器修正 */
.IndDK {
  min-height: calc(100% - 60px);
  /* 60px 是头部高度 */
  padding-bottom: 40px;
}
/* 新增头部直角样式 */
.header {
  border-radius: 0 !important;
  border-top-left-radius: 0 !important;
  border-top-right-radius: 0 !important;
}
</style>
