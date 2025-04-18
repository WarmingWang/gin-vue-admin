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

    <!-- 操作按钮区域 -->
    <div class="operation-area">
      <el-button type="primary" @click="$router.push('/film/create')">新增电影</el-button>
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
              :src="scope.row.poster"
              :preview-src-list="[scope.row.poster]"
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
import { getFilmList, deleteMovie } from '@/api/film'
import { getDict, showDictLabel } from '@/utils/dictionary'
import { ElMessageBox } from 'element-plus'

export default {
  name: 'FilmList',
  data() {
    return {
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
      ]
    }
  },
  created() {
    this.getGenresDict()
    this.loadData()
  },
  methods: {
    async getGenresDict() {
      try {
        this.genresOptions = await getDict('movie_genres')
      } catch (error) {
        this.$message.error('类型字典加载失败')
        console.error(error)
      }
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
    handleEdit(row) {
      // TODO: 实现编辑功能
      this.$message.info('编辑功能开发中')
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
</style> 