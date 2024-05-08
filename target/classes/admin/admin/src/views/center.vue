<template>
  <div>
    <el-form
      class="detail-form-content"
      ref="ruleForm"
      :model="ruleForm"
      label-width="80px"
    >  
      <el-row>
        <el-col :span="12">
          <!-- ... （其他 el-form-item） -->
        </el-col>
        <el-col :span="12">
          <!-- ... （其他 el-form-item） -->
        </el-col>
        <el-col :span="24">  
          <!-- ... （其他 el-form-item） -->
        </el-col>
        <el-col :span="24">  
          <!-- ... （其他 el-form-item） -->
        </el-col>
        <el-form-item v-if="flag=='users'" label="用户名" prop="username">
          <el-input v-model="ruleForm.username" placeholder="用户名"></el-input>
        </el-form-item>
        <el-col :span="24">
          <el-form-item>
            <el-button type="primary" @click="onUpdateHandler">修改</el-button>
          </el-form-item>
        </el-col>
      </el-row>
    </el-form>
  </div>
</template>

<script>
// ... （其他 import）

export default {
  data() {
    return {
      // ... （其他 data）
    };
  },
  mounted() {
    // ... （其他 mounted 相关逻辑）
  },
  methods: {
    // ... （其他 methods 相关逻辑）
  }
};
</script>

<style lang="scss" scoped>
  /* ... （其他样式相关逻辑） */
</style>
