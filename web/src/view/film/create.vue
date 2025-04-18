<template>
  <div>
    <el-form ref="movieForm" :model="movie" label-width="80px">
      <el-form-item label="电影名">
        <el-input v-model="movie.title"></el-input>
      </el-form-item>
      <el-form-item label="导演">
        <el-input v-model="movie.director"></el-input>
      </el-form-item>
      <el-form-item label="地区">
        <el-input v-model="movie.region"></el-input>
      </el-form-item>
      <el-form-item label="年份">
        <el-input type="number" v-model.number="movie.year"></el-input>
      </el-form-item>
      <el-form-item label="海报">
        <el-upload
            class="upload-demo"
            action="/api/fileUploadAndDownload/upload"
            :on-success="handleUploadSuccess"
            :show-file-list="false"
            accept="image/*"
        >
          <div class="poster-container">
            <el-button
                type="primary"
                class="upload-button"
            >点击上传
            </el-button>
          </div>
        </el-upload>
        <CustomPic
          v-if="movie.poster"
          pic-type="file"
          :pic-src="movie.poster"
          preview
          class="poster-preview"
      />
      </el-form-item>
      <el-form-item label="类型">
        <el-select v-model="movie.genres" multiple filterable placeholder="请选择类型">
          <el-option
              v-for="item in genresOptions"
              :key="item.value"
              :label="item.label"
              :value="item.value"
          ></el-option>
        </el-select>
      </el-form-item>
      <el-form-item label="演员">
        <el-select v-model="movie.actors" multiple filterable placeholder="请选择演员">
          <el-option
              v-for="actor in actors"
              :key="actor.id"
              :label="actor.name"
              :value="actor.id">
          </el-option>
        </el-select>
      </el-form-item>
      <!-- 在演员表单项后添加评分设置 -->
      <el-form-item label="评分设置">
        <div class="rating-container">
          <div v-for="(rating, index) in movie.ratings" :key="index" class="rating-item">
            <el-select
              v-model="rating.platform"
              placeholder="选择平台"
              style="width: 200px; margin-right: 10px;"
            >
              <el-option
                v-for="item in platformOptions"
                :key="item.value"
                :label="item.label"
                :value="item.value"
                :disabled="selectedPlatforms.includes(item.value) && item.value !== rating.platform"
              />
            </el-select>

            <el-input
              v-model.number="rating.rating"
              type="number"
              placeholder="分数"
              style="width: 120px; margin-right: 10px;"
              step="0.1"
              min="0"
              max="10"
            />
            <el-button type="danger" circle @click="removeRating(index)">
              <el-icon><Delete /></el-icon>
            </el-button>
          </div>
          <div class="rating-actions">
            <el-button 
              type="primary" 
              @click="addRating"
              :disabled="isMaxPlatforms"
            >添加评分</el-button>
          </div>
        </div>
      </el-form-item>

      <el-form-item>
        <el-button type="primary" @click="submitMovie">提交</el-button>
      </el-form-item>
    </el-form>
  </div>
</template>

<script>
import { createMovie, getActors } from "@/api/film";
import {getDict} from "@/utils/dictionary";
import CustomPic from "@/components/customPic/index.vue";

export default {
  components: {CustomPic},
  data() {
    return {
      movie: {
        title: "",
        director: "",
        region: "",
        year: null,
        poster: "",
        genres: "",
        actors: [],
        ratings: []
      },
      actors: [],
      genresOptions: [],
      platformOptions: [
        { value: 1, label: '豆瓣' },
        { value: 2, label: 'Letterboxd' },
        { value: 3, label: 'IMDb' },
        { value: 4, label: 'Eiga' }
      ]
    };
  },
  computed: {
    // 获取已选择的平台值
    selectedPlatforms() {
      return this.movie.ratings.map(rating => rating.platform);
    },
    // 判断是否达到最大平台数
    isMaxPlatforms() {
      return this.movie.ratings.length >= 4;
    }
  },
  created() {
    this.getGenresDict();
    this.loadActors();
  },
  methods: {
    handleUploadSuccess(res) {
      this.movie.poster = "/"+res.data.file.url; // 拿到上传后的路径
    },
    async getGenresDict() {
      try {
        this.genresOptions = await getDict('movie_genres');
      } catch (error) {
        this.$message.error('类型字典加载失败');
        console.error(error);
      }
    },
    async loadActors() {
      try {
        const res = await getActors();
        this.actors = res.data.map(item => ({
          id: item.id,
          name: item.name
        }));
      } catch (error) {
        this.$message.error('演员加载失败');
      }
    },
    addRating() {
      this.movie.ratings.push({ platform: '', rating: null });
    },
    removeRating(index) {
      this.movie.ratings.splice(index, 1);
    },
    submitMovie() {
      const payload = {
        ...this.movie,
        genres: this.movie.genres.join(','),
        actors: this.actors.filter(actor =>
            this.movie.actors.includes(actor.id)
        ),
        ratings: this.movie.ratings.map(rating => ({
          platformid: parseInt(rating.platform),
          rating: rating.rating
        }))
      };

      createMovie(payload)
          .then(response => {
            if (response.code === 0) {
              this.$message.success(response.msg || "电影创建成功");
              // 创建成功后可以添加跳转或其他操作
            }
          })
          .catch(error => {
            console.error(error);
          });
    }
  }
};
</script>
<style scoped>
.poster-container {
  display: flex;
  align-items: center;
  gap: 20px;
}

.poster-preview {
  max-width: 200px;
  max-height: 300px;
  margin-left: 20px; /* 为预览图添加左侧间距 */
}

.upload-button {
  /* 移除绝对定位相关属性 */
  margin: 0;
}

.rating-item {
  display: flex;
  align-items: center;
  margin-bottom: 12px;
}

.rating-container {
  display: flex;
  flex-direction: column;
  gap: 12px;
}

.rating-actions {
  margin-top: 12px;
}
</style>