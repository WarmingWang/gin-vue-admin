<template>
  <div class="film-container">
    <!-- 头部导航 -->
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

    <!-- 新增内容区域 -->
    <article class="detDK Huans">
      <section class="fildD">
        <div class="filHd flexC">
          <img src="/film/images/pic/title10.png">
          <h3>最近更新</h3>
          <p>网站最新录入条目</p>
        </div>
        
        <div class="filzNew flex">
          <div v-for="(film) in films" :key="film.id" class="AlfRNr Huans">
            <div class="AlfRE flexC fl-bet Huans">
              <div class="AlfREI">
                <a href="javascript:;" class="Alfjh flex fl-cen" @click="showCollection">
                  <i></i>
                </a>
                <router-link :to="'/detail/' + film.id" class="AlfREImg flexC fl-cen">
                  <img :src="baseFileUrl + film.poster" :alt="film.title">
                </router-link>
              </div>
              
              <div class="AlfREP Huans">
                <router-link :to="'/detail/' + film.id" class="AlfREPh">{{ truncate(film.title, 8) }} ({{ film.year }})</router-link>
                <div class="AlfREPs">
                  <p>导演：{{ film.director || '待补充' }}</p>
                  <p>类型：{{ formatGenres(film.genres) }}</p>
                  <p>主演：{{ film.actors?.map(a => a.name).join(' / ') || '待补充' }}</p>
                  <p>制片国家/地区：{{ film.region }}</p>
                </div>
              </div>

              <div class="AlfREG">
                <div v-for="ratingItem in film.ratings"
                     :key="ratingItem.platform.name"
                     class="AlfREGe flexC">
                  <img :src="`/film/images/pic/${getPlatformIcon(ratingItem.platform.name)}`">
                  <p>{{ ratingItem.rating }}</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>

      <!-- 新增推荐影视 -->
      <section class="fildD">
        <div class="filHd flexC">
          <img src="/film/images/pic/title11.png">
          <h3>推荐影视</h3>
        </div>
        <div class="filRec flex">
          <div v-for="film in recommendedFilms" 
               :key="film.id" 
               class="filReca"
               :title="film.title">
            <img :src="film.poster" :alt="film.title">
            <div class="Alfjh flex fl-cen" @click="showCollection">
              <i></i>
            </div>
            <router-link :to="'/detail/' + film.id" class="detLhota_link"></router-link>
          </div>
        </div>
  <div class="filRec flexC fl-end">
    <a href="javascript:;" class="fildsxa flexC" @click="loadMoreRecommendations">
      <img src="/film/images/icon/shuaxin.png">
      <p>换一批</p>
    </a>
  </div>
      </section>

      <!-- 新增热门片单 -->
      <section class="fildD">
  <div class="filHd flexC">
    <img src="/film/images/pic/title11.png">
    <h3>热门片单</h3>
  </div>
  <div class="filhot flex">
    <div v-for="playlist in hotPlaylists" 
         :key="playlist.id" 
         class="slfDN">
      <div class="slfDI">
        <img :src="playlist.cover" :alt="playlist.title">
        <router-link :to="'/playlist/' + playlist.id" class="detrevIH flexC fl-cen">
          <p>{{ playlist.title }}</p>
        </router-link>
      </div>
      <div class="slfDP">{{ playlist.updateTime }}  •  {{ playlist.collectCount }}人收藏</div>
    </div>
  </div>
  <div class="filhot flexC fl-end">
    <a href="javascript:;" class="fildsxa flexC" @click="loadMorePlaylists">
      <img src="/film/images/icon/shuaxin.png">
      <p>换一批</p>
    </a>
  </div>
</section>
    </article>
    </div>


</template>

<script setup>
import { ref, onMounted } from 'vue';
import { getFilmList } from '@/api/film';
import { getDict, showDictLabel } from '@/utils/dictionary';

const baseFileUrl = ref(import.meta.env.VITE_BASE_API)

// 初始化空数组
const films = ref([]);
// const recommendedFilms = ref([]);
// const hotPlaylists = ref([]);

// 新增截断方法
const truncate = (text, length) => {
  return text.length > length ? text.substring(0, length) + '...' : text;
}

// 新增数据加载方法
const loadFilms = async () => {
  try {
    const res = await getFilmList({ page: 1, pageSize: 10 }); // 根据实际API调整参数
    if (res.code === 0) {  // 添加状态码检查
      films.value = res.data.list;  // 直接使用返回的数据，不需要额外解析
    } else {
      throw new Error(res.msg || '加载失败');
    }
  } catch (e) {
    console.error('加载电影数据失败:', e);
  }
};

const genreDict = ref([])

onMounted(async () => {
  loadFilms();
  // 推荐影视和片单的加载方法同理...
  // 获取类型字典
  genreDict.value = await getDict('movie_genres')
});

// 新增类型转换方法
const formatGenres = (genres) => {
  if (!genres) return '待补充'
  return genres.split(',')
      .map(code => showDictLabel(genreDict.value, code) || code)
      .join(' / ')
}

// 平台图标映射
const getPlatformIcon = (platform) => {
  const icons = {
    douban: 'PFIdoudan.svg',
    letterboxd: 'letterboxd.png',
    imdb: 'PFIIMDb.svg',
    eiga: 'PFIeiga.png'
  };
  return icons[platform] || '';
};

// 新增推荐影视数据
const recommendedFilms = ref([
  {
    id: 101,
    title: '经典悬疑电影合集',
    poster: '/film/images/znot/haibao01.jpg'
  },
  {
    id: 102,
    title: '2023年度最佳影片',
    poster: '/film/images/znot/haibao02.jpg'
  },
  // 更多推荐数据...
]);

// 新增热门片单数据
const hotPlaylists = ref([
  {
    id: 1,
    title: '文艺女王必修课「华语篇」',
    cover: '/film/images/znot/detrev01.jpg',
    updateTime: '2023-01-16 更新',
    collectCount: 50290
  },
  {
    id: 2,
    title: '经典悬疑电影合集',
    cover: '/film/images/znot/detrev02.jpg',
    updateTime: '2023-02-28 更新',
    collectCount: 37845
  },
  // 更多片单数据...
]);

// 添加换批方法
const loadMorePlaylists = () => {
  // 实现换批逻辑
  console.log('加载更多片单...');
};

// 原始推荐数据池（模拟多页数据）
const allRecommendations = ref([
  // 第一页数据
  { id: 101, title: '经典悬疑电影合集', poster: '/film/images/znot/haibao01.jpg' },
  { id: 102, title: '2023年度最佳影片', poster: '/film/images/znot/haibao02.jpg' },
  // 第二页数据 
  { id: 103, title: '奥斯卡获奖影片精选', poster: '/film/images/znot/haibao03.jpg' },
  { id: 104, title: '日韩高分爱情电影', poster: '/film/images/znot/haibao04.jpg' },
  // 更多数据...
]);

// 分页相关状态
const currentRecommendPage = ref(1)
const recommendationsPerPage = 4 // 每页显示4个推荐


// 换批方法
const loadMoreRecommendations = () => {
  const totalPages = Math.ceil(allRecommendations.value.length / recommendationsPerPage)
  currentRecommendPage.value = currentRecommendPage.value % totalPages + 1
}
</script>

<style scoped>
@import '/film/css/jquery.raty.css';
@import '/film/css/swiper.css';
@import '/film/css/style.css';
@import '/film/css/index.css';
</style>

<style scoped>
/* 修改容器背景与首页一致 */
.film-container {
  min-height: 100vh;
  background: #FFFEF4;  /* 同步首页的白色背景 */
  max-width: 1440px;
  margin: 0 auto;
  overflow-y: auto;
  height: 100%;
  position: relative;
}
/* 新增头部直角样式 */
.header {
  border-radius: 0 !important;
  border-top-left-radius: 0 !important;
  border-top-right-radius: 0 !important;
}
</style>


<style scoped>
/* 新增自定义样式 */
.playlist-container {
  gap: 20px;
  padding: 15px 0;
}
.playlist-item {
  background: #fff;
  padding: 15px;
  border-radius: 8px;
  box-shadow: 0 2px 8px rgba(0,0,0,0.1);
  width: 300px;
}
.playlist-movies img {
  width: 60px;
  height: 80px;
  object-fit: cover;
  margin-right: 5px;
}
</style>

