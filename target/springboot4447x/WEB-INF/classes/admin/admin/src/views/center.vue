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
        <el-form-item   v-if="flag=='xuesheng'"  label="学生账号" prop="xueshengzhanghao">
          <el-input v-model="ruleForm.xueshengzhanghao" readonly              placeholder="学生账号" clearable></el-input>
        </el-form-item>
      </el-col>
      <el-col :span="12">
        <el-form-item   v-if="flag=='xuesheng'"  label="学生姓名" prop="xueshengxingming">
          <el-input v-model="ruleForm.xueshengxingming"               placeholder="学生姓名" clearable></el-input>
        </el-form-item>
      </el-col>
      <el-col :span="12">
        <el-form-item v-if="flag=='xuesheng'"  label="性别" prop="xingbie">
          <el-select v-model="ruleForm.xingbie" placeholder="请选择性别">
            <el-option
                v-for="(item,index) in xueshengxingbieOptions"
                v-bind:key="index"
                :label="item"
                :value="item">
            </el-option>
          </el-select>
        </el-form-item>
      </el-col>
      <el-col :span="12">
        <el-form-item   v-if="flag=='xuesheng'"  label="专业" prop="zhuanye">
          <el-input v-model="ruleForm.zhuanye"               placeholder="专业" clearable></el-input>
        </el-form-item>
      </el-col>
      <el-col :span="12">
        <el-form-item   v-if="flag=='xuesheng'"  label="邮箱" prop="youxiang">
          <el-input v-model="ruleForm.youxiang"               placeholder="邮箱" clearable></el-input>
        </el-form-item>
      </el-col>
      <el-col :span="12">
        <el-form-item   v-if="flag=='xuesheng'"  label="联系方式" prop="lianxifangshi">
          <el-input v-model="ruleForm.lianxifangshi"               placeholder="联系方式" clearable></el-input>
        </el-form-item>
      </el-col>
      <el-col :span="12">
        <el-form-item   v-if="flag=='xuesheng'"  label="身份证" prop="shenfenzheng">
          <el-input v-model="ruleForm.shenfenzheng"               placeholder="身份证" clearable></el-input>
        </el-form-item>
      </el-col>
      <el-col :span="12">
        <el-form-item   v-if="flag=='xuesheng'"  label="出生年月" prop="chushengnianyue">
          <el-input v-model="ruleForm.chushengnianyue"               placeholder="出生年月" clearable></el-input>
        </el-form-item>
      </el-col>
      <el-col :span="12">
        <el-form-item v-if="flag=='xuesheng'" label="辅导员工号" prop="fudaoyuangonghao">
          <el-select  @change="xueshengfudaoyuangonghaoChange" v-model="ruleForm.fudaoyuangonghao" placeholder="请选择辅导员工号">
            <el-option
                v-for="(item,index) in xueshengfudaoyuangonghaoOptions"
                v-bind:key="index"
                :label="item"
                :value="item">
            </el-option>
          </el-select>
        </el-form-item>
      </el-col>
      <el-col :span="12">
        <el-form-item   v-if="flag=='xuesheng'"  label="辅导员姓名" prop="fudaoyuanxingming">
          <el-input v-model="ruleForm.fudaoyuanxingming"               placeholder="辅导员姓名" clearable></el-input>
        </el-form-item>
      </el-col>
      <el-col :span="24">  
        <el-form-item v-if="flag=='xuesheng'" label="个人技能" prop="gerenjineng">
          <file-upload
          tip="点击上传个人技能"
          action="file/upload"
          :limit="3"
          :multiple="true"
          :fileUrls="ruleForm.gerenjineng?ruleForm.gerenjineng:''"
          @change="xueshenggerenjinengUploadChange"
          ></file-upload>
        </el-form-item>
      </el-col>
      <el-col :span="24">  
        <el-form-item v-if="flag=='xuesheng'" label="奖项证书" prop="jiangxiangzhengshu">
          <file-upload
          tip="点击上传奖项证书"
          action="file/upload"
          :limit="3"
          :multiple="true"
          :fileUrls="ruleForm.jiangxiangzhengshu?ruleForm.jiangxiangzhengshu:''"
          @change="xueshengjiangxiangzhengshuUploadChange"
          ></file-upload>
        </el-form-item>
      </el-col>
      <el-col :span="12">
        <el-form-item   v-if="flag=='fudaoyuan'"  label="辅导员工号" prop="fudaoyuangonghao">
          <el-input v-model="ruleForm.fudaoyuangonghao" readonly              placeholder="辅导员工号" clearable></el-input>
        </el-form-item>
      </el-col>
      <el-col :span="12">
        <el-form-item   v-if="flag=='fudaoyuan'"  label="辅导员姓名" prop="fudaoyuanxingming">
          <el-input v-model="ruleForm.fudaoyuanxingming"               placeholder="辅导员姓名" clearable></el-input>
        </el-form-item>
      </el-col>
      <el-col :span="12">
        <el-form-item v-if="flag=='fudaoyuan'"  label="性别" prop="xingbie">
          <el-select v-model="ruleForm.xingbie" placeholder="请选择性别">
            <el-option
                v-for="(item,index) in fudaoyuanxingbieOptions"
                v-bind:key="index"
                :label="item"
                :value="item">
            </el-option>
          </el-select>
        </el-form-item>
      </el-col>
      <el-col :span="12">
        <el-form-item   v-if="flag=='fudaoyuan'"  label="联系电话" prop="lianxidianhua">
          <el-input v-model="ruleForm.lianxidianhua"               placeholder="联系电话" clearable></el-input>
        </el-form-item>
      </el-col>
      <el-col :span="12">
        <el-form-item   v-if="flag=='fudaoyuan'"  label="教师邮箱" prop="jiaoshiyouxiang">
          <el-input v-model="ruleForm.jiaoshiyouxiang"               placeholder="教师邮箱" clearable></el-input>
        </el-form-item>
      </el-col>
      <el-col :span="12">
        <el-form-item   v-if="flag=='qiye'"  label="企业账号" prop="qiyezhanghao">
          <el-input v-model="ruleForm.qiyezhanghao" readonly              placeholder="企业账号" clearable></el-input>
        </el-form-item>
      </el-col>
      <el-col :span="12">
        <el-form-item   v-if="flag=='qiye'"  label="企业名称" prop="qiyemingcheng">
          <el-input v-model="ruleForm.qiyemingcheng"               placeholder="企业名称" clearable></el-input>
        </el-form-item>
      </el-col>
      <el-col :span="12">
        <el-form-item   v-if="flag=='qiye'"  label="企业地址" prop="qiyedizhi">
          <el-input v-model="ruleForm.qiyedizhi"               placeholder="企业地址" clearable></el-input>
        </el-form-item>
      </el-col>
      <el-col :span="12">
        <el-form-item   v-if="flag=='qiye'"  label="负责人" prop="fuzeren">
          <el-input v-model="ruleForm.fuzeren"               placeholder="负责人" clearable></el-input>
        </el-form-item>
      </el-col>
      <el-col :span="12">
        <el-form-item   v-if="flag=='qiye'"  label="联系方式" prop="lianxifangshi">
          <el-input v-model="ruleForm.lianxifangshi"               placeholder="联系方式" clearable></el-input>
        </el-form-item>
      </el-col>
      <el-col :span="12">
        <el-form-item   v-if="flag=='qiye'"  label="邮箱" prop="youxiang">
          <el-input v-model="ruleForm.youxiang"               placeholder="邮箱" clearable></el-input>
        </el-form-item>
      </el-col>
      <el-col :span="24">  
        <el-form-item v-if="flag=='qiye'" label="企业图片" prop="qiyetupian">
          <file-upload
          tip="点击上传企业图片"
          action="file/upload"
          :limit="3"
          :multiple="true"
          :fileUrls="ruleForm.qiyetupian?ruleForm.qiyetupian:''"
          @change="qiyeqiyetupianUploadChange"
          ></file-upload>
        </el-form-item>
      </el-col>
      <el-col :span="24">  
        <el-form-item v-if="flag=='qiye'" label="企业资质" prop="qiyezizhi">
          <file-upload
          tip="点击上传企业资质"
          action="file/upload"
          :limit="3"
          :multiple="true"
          :fileUrls="ruleForm.qiyezizhi?ruleForm.qiyezizhi:''"
          @change="qiyeqiyezizhiUploadChange"
          ></file-upload>
        </el-form-item>
      </el-col>
      <el-col :span="24">  
        <el-form-item v-if="flag=='qiye'" label="营业许可证" prop="yingyexukezheng">
          <file-upload
          tip="点击上传营业许可证"
          action="file/upload"
          :limit="3"
          :multiple="true"
          :fileUrls="ruleForm.yingyexukezheng?ruleForm.yingyexukezheng:''"
          @change="qiyeyingyexukezhengUploadChange"
          ></file-upload>
        </el-form-item>
      </el-col>
      <el-form-item v-if="flag=='users'" label="用户名" prop="username">
        <el-input v-model="ruleForm.username" 
        placeholder="用户名"></el-input>
      </el-form-item>
      <el-col :span="24">
      <el-form-item>
        <el-button type="primary" @click="onUpdateHandler">修 改</el-button>
      </el-form-item>
      </el-col>
      </el-row>
    </el-form>
  </div>
</template>
<script>
// 数字，邮件，手机，url，身份证校验
import { isNumber,isIntNumer,isEmail,isMobile,isPhone,isURL,checkIdCard } from "@/utils/validate";

export default {
  data() {
    return {
      ruleForm: {},
      flag: '',
      usersFlag: false,
      xueshengxingbieOptions: [],
      xueshengfudaoyuangonghaoOptions: [],
      fudaoyuanxingbieOptions: [],
    };
  },
  mounted() {
    var table = this.$storage.get("sessionTable");
    this.flag = table;
    this.$http({
      url: `${this.$storage.get("sessionTable")}/session`,
      method: "get"
    }).then(({ data }) => {
      if (data && data.code === 0) {
        this.ruleForm = data.data;
      } else {
        this.$message.error(data.msg);
      }
    });
    this.xueshengxingbieOptions = "男,女".split(',')
    this.$http({
      url: `option/fudaoyuan/fudaoyuangonghao`,
      method: "get"
    }).then(({ data }) => {
      if (data && data.code === 0) {
        this.xueshengfudaoyuangonghaoOptions = data.data;
      } else {
        this.$message.error(data.msg);
      }
    });
    this.fudaoyuanxingbieOptions = "男,女".split(',')
  },
  methods: {
    // 下二随
    xueshengfudaoyuangonghaoChange () {
      this.$http({
        url: `follow/fudaoyuan/fudaoyuangonghao?columnValue=`+ this.ruleForm.fudaoyuangonghao,
        method: "get"
      }).then(({ data }) => {
        if (data && data.code === 0) {
          console.log('下2随')
              if(data.data.fudaoyuanxingming){
                this.ruleForm.fudaoyuanxingming = data.data.fudaoyuanxingming
              }
        } else {
          this.$message.error(data.msg);
        }
      });
    },
    qiyeqiyetupianUploadChange(fileUrls) {
        this.ruleForm.qiyetupian = fileUrls;
    },
    qiyeyingyexukezhengUploadChange(fileUrls) {
        this.ruleForm.yingyexukezheng = fileUrls;
    },
    onUpdateHandler() {
      if( 'xuesheng' ==this.flag && this.ruleForm.youxiang&&(!isEmail(this.ruleForm.youxiang))){
        this.$message.error(`邮箱应输入邮箱格式`);
        return
      }
      if( 'xuesheng' ==this.flag && this.ruleForm.lianxifangshi&&(!isPhone(this.ruleForm.lianxifangshi))){
        this.$message.error(`联系方式应输入电话格式`);
        return
      }
      if( 'xuesheng' ==this.flag && this.ruleForm.shenfenzheng&&(!checkIdCard(this.ruleForm.shenfenzheng))){
        this.$message.error(`身份证应输入身份证格式`);
        return
      }
      if((!this.ruleForm.fudaoyuangonghao)&& 'fudaoyuan'==this.flag){
        this.$message.error('辅导员工号不能为空');
        return
      }
      if((!this.ruleForm.mima)&& 'fudaoyuan'==this.flag){
        this.$message.error('密码不能为空');
        return
      }
      if((!this.ruleForm.fudaoyuanxingming)&& 'fudaoyuan'==this.flag){
        this.$message.error('辅导员姓名不能为空');
        return
      }
      if( 'fudaoyuan' ==this.flag && this.ruleForm.lianxidianhua&&(!isMobile(this.ruleForm.lianxidianhua))){
        this.$message.error(`联系电话应输入手机格式`);
        return
      }
      if( 'fudaoyuan' ==this.flag && this.ruleForm.jiaoshiyouxiang&&(!isEmail(this.ruleForm.jiaoshiyouxiang))){
        this.$message.error(`教师邮箱应输入邮箱格式`);
        return
      }
      if((!this.ruleForm.qiyezhanghao)&& 'qiye'==this.flag){
        this.$message.error('企业账号不能为空');
        return
      }
      if((!this.ruleForm.mima)&& 'qiye'==this.flag){
        this.$message.error('密码不能为空');
        return
      }
      if((!this.ruleForm.qiyemingcheng)&& 'qiye'==this.flag){
        this.$message.error('企业名称不能为空');
        return
      }
      if( 'qiye' ==this.flag && this.ruleForm.lianxifangshi&&(!isMobile(this.ruleForm.lianxifangshi))){
        this.$message.error(`联系方式应输入手机格式`);
        return
      }
      if( 'qiye' ==this.flag && this.ruleForm.youxiang&&(!isEmail(this.ruleForm.youxiang))){
        this.$message.error(`邮箱应输入邮箱格式`);
        return
      }
      if('users'==this.flag && this.ruleForm.username.trim().length<1) {
	this.$message.error(`用户名不能为空`);
        return	
      }
      this.$http({
        url: `${this.$storage.get("sessionTable")}/update`,
        method: "post",
        data: this.ruleForm
      }).then(({ data }) => {
        if (data && data.code === 0) {
          this.$message({
            message: "修改信息成功",
            type: "success",
            duration: 1500,
            onClose: () => {
            }
          });
        } else {
          this.$message.error(data.msg);
        }
      });
    }
  }
};
</script>
<style lang="scss" scoped>
</style>
