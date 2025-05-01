<template>
  <div class="film-list-container">
    <!-- 搜索区域 -->
    <div class="search-area">
      <el-form :inline="true" :model="searchForm" class="demo-form-inline">
        <el-form-item label="电影名称">
          <el-input v-model="searchForm.title" placeholder="请输入电影名称" clearable />
        </el-form-item>
        <el-form-item label="导演">
          <el-input v-model="searchForm.director" placeholder="请输入导演" clearable />
        </el-form-item>
        <el-form-item label="年份">
          <el-input v-model.number="searchForm.year" placeholder="请输入年份" clearable />
        </el-form-item>
        <el-form-item label="类型">
          <el-select v-model="searchForm.genres" multiple filterable placeholder="请选择类型" clearable>
            <el-option
                v-for="item in genresOptions"
                :key="item.value"
                :label="item.label"
                :value="item.value"
            />
          </el-select>
        </el-form-item>
        <el-form-item>
          <el-button type="primary" @click="handleSearch">查询</el-button>
          <el-button @click="resetSearch">重置</el-button>
        </el-form-item>
      </el-form>
    </div>

    <!-- 新增电影对话框 -->
    <el-dialog v-model="addDialogVisible" title="新增电影" width="600px">
      <el-form ref="createForm" :model="formData" :rules="rules" label-width="80px">
        <el-form-item label="电影名称" prop="title">
          <el-input v-model="formData.title" />
        </el-form-item>
        <el-form-item label="导演" prop="director">
          <el-input v-model="formData.director" />
        </el-form-item>
        <el-form-item label="地区" prop="region">
          <el-input v-model="formData.region" />
        </el-form-item>
        <el-form-item label="年份" prop="year">
          <el-input-number v-model="formData.year" :min="1900" :max="new Date().getFullYear()"/>
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
              <el-button type="primary" class="upload-button">点击上传</el-button>
            </div>
          </el-upload>
          <CustomPic
            v-if="formData.poster"
            pic-type="file"
            :pic-src="formData.poster"
            preview
            class="poster-preview"
          />
        </el-form-item>
        <el-form-item label="类型" prop="genres">
          <el-select
              v-model="formData.genres"
              multiple
              filterable
              placeholder="请选择类型"
              style="width: 100%"
          >
            <el-option
                v-for="item in genresOptions"
                :key="item.value"
                :label="item.label"
                :value="item.value"
            />
          </el-select>
        </el-form-item>
        <el-form-item label="演员">
          <el-select v-model="formData.actors" multiple filterable placeholder="请选择演员">
            <el-option
                v-for="actor in actors"
                :key="actor.id"
                :label="actor.name"
                :value="actor.id">
            </el-option>
          </el-select>
        </el-form-item>
        <!-- 添加其他表单字段 -->
        <el-form-item label="评分设置">
          <div class="rating-container">
            <div v-for="(rating, index) in formData.ratings" :key="index" class="rating-item">
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
      </el-form>
      <template #footer>
        <el-button @click="addDialogVisible = false">取消</el-button>
        <el-button type="primary" @click="handleCreateSubmit">确定</el-button>
      </template>
    </el-dialog>
  
    <el-dialog title="编辑电影" v-model="editDialogVisible" width="50%">
      <el-form ref="editForm" :model="editForm" label-width="80px">
        <!-- 电影基本信息 -->
        <el-form-item label="电影名">
          <el-input v-model="editForm.title"></el-input>
        </el-form-item>
        <el-form-item label="导演">
          <el-input v-model="editForm.director"></el-input>
        </el-form-item>
        <el-form-item label="地区">
          <el-input v-model="editForm.region"></el-input>
        </el-form-item>
        <el-form-item label="年份">
          <el-input type="number" v-model.number="editForm.year"></el-input>
        </el-form-item>
    
        <!-- 海报上传 -->
        <el-form-item label="海报">
          <el-upload
            class="upload-demo"
            action="/api/fileUploadAndDownload/upload"
            :on-success="handleUploadSuccess"
            :show-file-list="false"
            accept="image/*"
          >
            <div class="poster-container">
              <el-button type="primary">点击上传</el-button>
            </div>
          </el-upload>
          <CustomPic
            v-if="editForm.poster"
            pic-type="file"
            :pic-src="editForm.poster"
            preview
            class="poster-preview"
          />
        </el-form-item>
    
        <!-- 类型选择 -->
        <el-form-item label="类型">
          <el-select 
            v-model="editForm.genres" 
            multiple 
            filterable 
            placeholder="请选择类型"
          >
            <el-option
              v-for="item in genresOptions"
              :key="item.value"
              :label="item.label"
              :value="item.value"
            />
          </el-select>
        </el-form-item>
    
        <!-- 演员选择 -->
        <el-form-item label="演员">
          <el-select
            v-model="editForm.actors"
            multiple
            filterable
            placeholder="请选择演员"
          >
            <el-option
              v-for="actor in actors"
              :key="actor.id"
              :label="actor.name"
              :value="actor.id"
            />
          </el-select>
        </el-form-item>
    
        <!-- 评分设置 -->
        <el-form-item label="评分设置">
          <div class="rating-container">
            <div v-for="(rating, index) in editForm.ratings" :key="index" class="rating-item">
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
          <el-button type="primary" @click="submitEdit">提交修改</el-button>
        </el-form-item>
      </el-form>
    </el-dialog>

    <!-- 操作按钮区域修改 -->
    <div class="operation-area">
      <el-button type="primary" @click="openCreateDialog">新增电影</el-button>
    </div>

    <!-- 表格区域 -->
    <el-table
        v-loading="loading"
        :data="tableData"
        style="width: 100%"
        border
    >
      <el-table-column prop="id" label="ID" width="80" />
      <el-table-column label="海报" width="100">
        <template #default="scope">
          <el-image
              v-if="scope.row.poster"
              :src="baseFileUrl + scope.row.poster"
              :preview-src-list="[baseFileUrl + scope.row.poster]"
              fit="cover"
              style="width: 50px; height: 70px"
          />
        </template>
      </el-table-column>
      <el-table-column prop="title" label="电影名称" />
      <el-table-column prop="director" label="导演" />
      <el-table-column prop="region" label="地区" />
      <el-table-column prop="year" label="年份" width="100" />
      <el-table-column label="类型">
        <template #default="scope">
          {{ formatGenres(scope.row.genres) }}
        </template>
      </el-table-column>
      <el-table-column label="演员">
        <template #default="scope">
          {{ scope.row.actors?.map(a => a.name).join(' / ') }}
        </template>
      </el-table-column>
      <el-table-column label="评分">
        <template #default="scope">
          <div v-for="rating in scope.row.ratings" :key="rating.platformid" class="rating-item">
            {{ getPlatformName(rating.platformid) }}: {{ rating.rating }}
          </div>
        </template>
      </el-table-column>
      <el-table-column label="操作" width="150" fixed="right">
        <template #default="scope">
          <el-button link type="primary" @click="handleEdit(scope.row)">编辑</el-button>
          <el-button link type="danger" @click="handleDelete(scope.row)">删除</el-button>
        </template>
      </el-table-column>
    </el-table>

    <!-- 分页区域 -->
    <div class="pagination-area">
      <el-pagination
          v-model:current-page="page"
          v-model:page-size="pageSize"
          :page-sizes="[10, 20, 50, 100]"
          :total="total"
          layout="total, sizes, prev, pager, next, jumper"
          @size-change="handleSizeChange"
          @current-change="handleCurrentChange"
      />
    </div>
  </div>
</template>

<script>
import { getFilmList, deleteMovie, createMovie, getActors, getMovieDetail, updateMovie } from '@/api/film'
import { getDict, showDictLabel } from '@/utils/dictionary'
import { ElMessageBox } from 'element-plus'
import CustomPic from "@/components/customPic/index.vue";
import { Delete } from '@element-plus/icons-vue'

export default {
  components: {CustomPic, Delete},
  name: 'FilmList',
  data() {
    return {
      isEditMode: false,
      baseFileUrl: import.meta.env.VITE_BASE_API,
      loading: false,
      searchForm: {
        title: '',
        director: '',
        year: null,
        genres: []
      },
      tableData: [],
      page: 1,
      pageSize: 10,
      total: 0,
      genresOptions: [],
      platformOptions: [
        { value: 1, label: '豆瓣' },
        { value: 2, label: 'Letterboxd' },
        { value: 3, label: 'IMDb' },
        { value: 4, label: 'Eiga' }
      ],
      addDialogVisible: false,
      formData: {
        title: '',
        director: '',
        region: "",
        year: new Date().getFullYear(),
        poster: "",
        genres: "",
        actors: [],
        ratings: []
        // 其他字段初始化
      },
      editDialogVisible: false,
      editForm: {
        id: null,
        title: "",
        director: "",
        region: "",
        year: null,
        poster: "",
        genres: [],
        actors: [],
        ratings: []
      },
      rules: {
        title: [{ required: true, message: '请输入电影名称', trigger: 'blur' }],
        director: [{ required: true, message: '请输入导演姓名', trigger: 'blur' }],
        year: [{ required: true, message: '请选择年份', trigger: 'change' }]
      }
    }
  },
  computed: {
    currentForm() {
      return this.isEditMode ? this.editForm : this.formData
    },
    // 获取已选择的平台值
    selectedPlatforms() {
      return this.currentForm.ratings
        .filter(r => r.platform)
        .map(r => r.platform)
    },
    // 判断是否达到最大平台数
    isMaxPlatforms() {
      return this.currentForm.ratings.length >= 4;
    }
  },
  created() {
    this.getGenresDict()
    this.loadActors()
    this.loadData()
  },
  methods: {
    openCreateDialog() {
      this.isEditMode = false
      this.addDialogVisible = true
    },

    async handleCreateSubmit() {
      try {
        await this.$refs.createForm.validate()
        const payload = {
          ...this.formData,
          genres: this.formData.genres.join(','),
          actors: this.actors.filter(actor =>
              this.formData.actors.includes(actor.id)
          ),
          ratings: this.formData.ratings.map(rating => ({
            platformid: parseInt(rating.platform),
            rating: rating.rating
          }))
        };
        const res = await createMovie(payload)
        if (res.code === 0) {
          this.$message.success('创建成功')
          this.addDialogVisible = false
          this.loadData() // 刷新列表
          this.$refs.createForm.resetFields() // 重置表单
        }
      } catch (error) {
        console.error(error)
      }
    },
    handleUploadSuccess(res) {
      this.formData.poster = "/"+res.data.file.url; // 拿到上传后的路径
    },
    async getGenresDict() {
      try {
        this.genresOptions = await getDict('movie_genres')
      } catch (error) {
        this.$message.error('类型字典加载失败')
        console.error(error)
      }
    },
    async loadActors() {
      try {
        const res = await getActors();
        this.actors = res.data
      } catch (error) {
        this.$message.error('演员加载失败');
      }
    },
    addRating() {
      if (!this.isMaxPlatforms) {
        this.currentForm.ratings.push({
          platform: null,
          rating: null
        })
      }
    },
    removeRating(index) {
      this.currentForm.ratings.splice(index, 1);
    },
    async loadData() {
      this.loading = true
      try {
        const params = {
          page: this.page,
          pageSize: this.pageSize,
          ...this.searchForm
        }
        const res = await getFilmList(params)
        if (res.code === 0) {
          this.tableData = res.data.list
          this.total = res.data.total
        } else {
          this.$message.error(res.msg || '加载失败')
        }
      } catch (error) {
        console.error(error)
        this.$message.error('加载失败')
      } finally {
        this.loading = false
      }
    },
    handleSearch() {
      this.page = 1
      this.loadData()
    },
    resetSearch() {
      this.searchForm = {
        title: '',
        director: '',
        year: null,
        genres: []
      }
      this.handleSearch()
    },
    handleSizeChange(val) {
      this.pageSize = val
      this.loadData()
    },
    handleCurrentChange(val) {
      this.page = val
      this.loadData()
    },
    formatGenres(genres) {
      if (!genres) return ''
      return genres.split(',')
          .map(code => showDictLabel(this.genresOptions, code))
          .filter(Boolean)
          .join(' / ')
    },
    getPlatformName(platformId) {
      const platform = this.platformOptions.find(p => p.value === platformId)
      return platform ? platform.label : ''
    },
    async handleEdit(row) {
      try {
        this.isEditMode = true
        // 调用获取电影详情的接口
        const res = await getMovieDetail(row.id)
        if (res.code === 0) {
          const data = res.data
          // 转换数据格式
          this.editForm = {
            id: data.id,
            title: data.title,
            director: data.director,
            region: data.region,
            year: data.year,
            poster: data.poster,
            genres: data.genres.split(','),
            actors: data.actors.map(actor => actor.id),
            ratings: data.ratings.map(rating => ({
              platform: rating.platformid,
              rating: rating.rating
            }))
          }
          this.editDialogVisible = true
        }
      } catch (error) {
        console.error(error)
        this.$message.error('获取电影详情失败')
      }
    },

    async submitEdit() {
      try {
        const payload = {
          ...this.editForm,
          genres: this.editForm.genres.join(','),
          actors: this.editForm.actors.map(id => ({ id })),
          ratings: this.editForm.ratings.map(rating => ({
            platformid: parseInt(rating.platform),
            rating: rating.rating
          }))
        }

        const res = await updateMovie(payload)
        if (res.code === 0) {
          this.$message.success('更新成功')
          this.editDialogVisible = false
          this.loadData() // 刷新列表
        }
      } catch (error) {
        console.error(error)
        this.$message.error('更新失败')
      }
    },
    handleDelete(row) {
      ElMessageBox.confirm(
        `确定要删除电影 "${row.title}" 吗？`,
        '警告',
        {
          confirmButtonText: '确定',
          cancelButtonText: '取消',
          type: 'warning',
        }
      )
        .then(async () => {
          try {
            const res = await deleteMovie(row.id)
            if (res.code === 0) {
              this.$message.success('删除成功')
              // 如果当前页只有一条数据，且不是第一页，则跳转到上一页
              if (this.tableData.length === 1 && this.page > 1) {
                this.page--
              }
              this.loadData() // 重新加载数据
            } else {
              this.$message.error(res.msg || '删除失败')
            }
          } catch (error) {
            console.error(error)
            this.$message.error('删除失败')
          }
        })
        .catch(() => {
          // 用户点击取消，不做任何操作
        })
    }
  }
}
</script>

<style scoped>
.film-list-container {
  padding: 20px;
}

.search-area {
  margin-bottom: 20px;
  padding: 20px;
  background: #fff;
  border-radius: 4px;
}

.operation-area {
  margin-bottom: 20px;
}

.pagination-area {
  margin-top: 20px;
  display: flex;
  justify-content: flex-end;
}

.rating-item {
  margin-bottom: 5px;
}

.rating-item:last-child {
  margin-bottom: 0;
}

.rating-container {
  display: flex;
  flex-direction: column;
  gap: 12px;
}

.rating-item {
  display: flex;
  align-items: center;
  margin-bottom: 12px;
}

.rating-actions {
  margin-top: 12px;
}
</style>