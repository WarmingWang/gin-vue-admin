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
        <div v-for="(rating, index) in movie.ratings" :key="index" class="rating-item">
          <el-select
            v-model.number="rating.platform"
            placeholder="选择平台"
            style="width: 200px; margin-right: 10px;"
          >
            <el-option
              v-for="item in platformOptions"
              :key="item.value"
              :label="item.label"
              :value="item.value"
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
          <el-button
            type="danger"
            icon="el-icon-delete"
            circle
            @click="removeRating(index)"
          />
        </div>
        <el-button type="primary" @click="addRating">添加评分</el-button>
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
        { value: '1', label: '豆瓣' },
        { value: '2', label: 'Letterboxd' },
        { value: '3', label: 'IMDb' },
        { value: '4', label: 'Eiga' }
      ]
    };
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
        genres: this.movie.genres.join(','), // 转换为逗号分隔字符串
        actors: this.actors.filter(actor =>
            this.movie.actors.includes(actor.id)
        ),
        ratings: this.movie.ratings.map(rating => ({
          platform: rating.platform,
          rating: rating.rating
        }))
      };

      createMovie(payload)
          .then(response => {
            // 添加业务状态码判断
            if (response.code === 200) {
              this.$message.success("电影创建成功");
            } else {
              throw new Error(response.msg || "未知错误");
            }
          })
          .catch(error => {
            // 增强错误处理
            const errorMsg = error.response?.data?.msg ||
                error.message ||
                "服务器连接失败";
            this.$message.error("创建失败: " + errorMsg);
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
</style>
