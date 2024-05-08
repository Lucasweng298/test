<template>
  <div>
    <div class="container">
      <div class="login-form" style="backgroundColor:rgba(255,255,255,.5);borderRadius:20px">
        <h1 class="h1" style="color:#000;fontSize:26px;">基于JAVA的高校招聘系统注册</h1>
		<el-form ref="rgsForm" class="rgs-form" :model="rgsForm" label-width="120px">
			<!-- <div v-if="tableName=='xuesheng'" class="input-group">
			   <div class="label">学生账号</div>
			   <div class="input-container">
			     <input v-model="ruleForm.xueshengzhanghao" class="input" type="text" placeholder="学生账号">
			   </div>
			 </div> -->
			<el-form-item label="学生账号" class="input" v-if="tableName=='xuesheng'">
			  <el-input v-model="ruleForm.xueshengzhanghao" autocomplete="off" placeholder="学生账号"  />
			</el-form-item>
			<!-- <div v-if="tableName=='xuesheng'" class="input-group">
			   <div class="label">学生姓名</div>
			   <div class="input-container">
			     <input v-model="ruleForm.xueshengxingming" class="input" type="text" placeholder="学生姓名">
			   </div>
			 </div> -->
			<el-form-item label="学生姓名" class="input" v-if="tableName=='xuesheng'">
			  <el-input v-model="ruleForm.xueshengxingming" autocomplete="off" placeholder="学生姓名"  />
			</el-form-item>
			<!-- <div v-if="tableName=='xuesheng'" class="input-group">
			   <div class="label">密码</div>
			   <div class="input-container">
			     <input v-model="ruleForm.mima" class="input" type="text" placeholder="密码">
			   </div>
			 </div> -->
			<el-form-item label="密码" class="input" v-if="tableName=='xuesheng'">
			  <el-input v-model="ruleForm.mima" autocomplete="off" placeholder="密码" type="password"#elsetype="text" />
			</el-form-item>
			<!-- <div v-if="tableName=='xuesheng'" class="input-group">
			   <div class="label">专业</div>
			   <div class="input-container">
			     <input v-model="ruleForm.zhuanye" class="input" type="text" placeholder="专业">
			   </div>
			 </div> -->
			<el-form-item label="专业" class="input" v-if="tableName=='xuesheng'">
			  <el-input v-model="ruleForm.zhuanye" autocomplete="off" placeholder="专业"  />
			</el-form-item>
			<!-- <div v-if="tableName=='xuesheng'" class="input-group">
			   <div class="label">邮箱</div>
			   <div class="input-container">
			     <input v-model="ruleForm.youxiang" class="input" type="text" placeholder="邮箱">
			   </div>
			 </div> -->
			<el-form-item label="邮箱" class="input" v-if="tableName=='xuesheng'">
			  <el-input v-model="ruleForm.youxiang" autocomplete="off" placeholder="邮箱"  />
			</el-form-item>
			<!-- <div v-if="tableName=='xuesheng'" class="input-group">
			   <div class="label">联系方式</div>
			   <div class="input-container">
			     <input v-model="ruleForm.lianxifangshi" class="input" type="text" placeholder="联系方式">
			   </div>
			 </div> -->
			<el-form-item label="联系方式" class="input" v-if="tableName=='xuesheng'">
			  <el-input v-model="ruleForm.lianxifangshi" autocomplete="off" placeholder="联系方式"  />
			</el-form-item>
			<!-- <div v-if="tableName=='xuesheng'" class="input-group">
			   <div class="label">身份证</div>
			   <div class="input-container">
			     <input v-model="ruleForm.shenfenzheng" class="input" type="text" placeholder="身份证">
			   </div>
			 </div> -->
			<el-form-item label="身份证" class="input" v-if="tableName=='xuesheng'">
			  <el-input v-model="ruleForm.shenfenzheng" autocomplete="off" placeholder="身份证"  />
			</el-form-item>
			<!-- <div v-if="tableName=='xuesheng'" class="input-group">
			   <div class="label">出生年月</div>
			   <div class="input-container">
			     <input v-model="ruleForm.chushengnianyue" class="input" type="text" placeholder="出生年月">
			   </div>
			 </div> -->
			<el-form-item label="出生年月" class="input" v-if="tableName=='xuesheng'">
			  <el-input v-model="ruleForm.chushengnianyue" autocomplete="off" placeholder="出生年月"  />
			</el-form-item>
			<!-- <div v-if="tableName=='xuesheng'" class="input-group">
			   <div class="label">辅导员姓名</div>
			   <div class="input-container">
			     <input v-model="ruleForm.fudaoyuanxingming" class="input" type="text" placeholder="辅导员姓名">
			   </div>
			 </div> -->
			<el-form-item label="辅导员姓名" class="input" v-if="tableName=='xuesheng'">
			  <el-input v-model="ruleForm.fudaoyuanxingming" autocomplete="off" placeholder="辅导员姓名"  />
			</el-form-item>
			<!-- <div v-if="tableName=='fudaoyuan'" class="input-group">
			   <div class="label">辅导员工号</div>
			   <div class="input-container">
			     <input v-model="ruleForm.fudaoyuangonghao" class="input" type="text" placeholder="辅导员工号">
			   </div>
			 </div> -->
			<el-form-item label="辅导员工号" class="input" v-if="tableName=='fudaoyuan'">
			  <el-input v-model="ruleForm.fudaoyuangonghao" autocomplete="off" placeholder="辅导员工号"  />
			</el-form-item>
			<!-- <div v-if="tableName=='fudaoyuan'" class="input-group">
			   <div class="label">密码</div>
			   <div class="input-container">
			     <input v-model="ruleForm.mima" class="input" type="text" placeholder="密码">
			   </div>
			 </div> -->
			<el-form-item label="密码" class="input" v-if="tableName=='fudaoyuan'">
			  <el-input v-model="ruleForm.mima" autocomplete="off" placeholder="密码" type="password"#elsetype="text" />
			</el-form-item>
			<!-- <div v-if="tableName=='fudaoyuan'" class="input-group">
			   <div class="label">辅导员姓名</div>
			   <div class="input-container">
			     <input v-model="ruleForm.fudaoyuanxingming" class="input" type="text" placeholder="辅导员姓名">
			   </div>
			 </div> -->
			<el-form-item label="辅导员姓名" class="input" v-if="tableName=='fudaoyuan'">
			  <el-input v-model="ruleForm.fudaoyuanxingming" autocomplete="off" placeholder="辅导员姓名"  />
			</el-form-item>
			<!-- <div v-if="tableName=='fudaoyuan'" class="input-group">
			   <div class="label">联系电话</div>
			   <div class="input-container">
			     <input v-model="ruleForm.lianxidianhua" class="input" type="text" placeholder="联系电话">
			   </div>
			 </div> -->
			<el-form-item label="联系电话" class="input" v-if="tableName=='fudaoyuan'">
			  <el-input v-model="ruleForm.lianxidianhua" autocomplete="off" placeholder="联系电话"  />
			</el-form-item>
			<!-- <div v-if="tableName=='fudaoyuan'" class="input-group">
			   <div class="label">教师邮箱</div>
			   <div class="input-container">
			     <input v-model="ruleForm.jiaoshiyouxiang" class="input" type="text" placeholder="教师邮箱">
			   </div>
			 </div> -->
			<el-form-item label="教师邮箱" class="input" v-if="tableName=='fudaoyuan'">
			  <el-input v-model="ruleForm.jiaoshiyouxiang" autocomplete="off" placeholder="教师邮箱"  />
			</el-form-item>
			<!-- <div v-if="tableName=='qiye'" class="input-group">
			   <div class="label">企业账号</div>
			   <div class="input-container">
			     <input v-model="ruleForm.qiyezhanghao" class="input" type="text" placeholder="企业账号">
			   </div>
			 </div> -->
			<el-form-item label="企业账号" class="input" v-if="tableName=='qiye'">
			  <el-input v-model="ruleForm.qiyezhanghao" autocomplete="off" placeholder="企业账号"  />
			</el-form-item>
			<!-- <div v-if="tableName=='qiye'" class="input-group">
			   <div class="label">密码</div>
			   <div class="input-container">
			     <input v-model="ruleForm.mima" class="input" type="text" placeholder="密码">
			   </div>
			 </div> -->
			<el-form-item label="密码" class="input" v-if="tableName=='qiye'">
			  <el-input v-model="ruleForm.mima" autocomplete="off" placeholder="密码" type="password"#elsetype="text" />
			</el-form-item>
			<!-- <div v-if="tableName=='qiye'" class="input-group">
			   <div class="label">企业名称</div>
			   <div class="input-container">
			     <input v-model="ruleForm.qiyemingcheng" class="input" type="text" placeholder="企业名称">
			   </div>
			 </div> -->
			<el-form-item label="企业名称" class="input" v-if="tableName=='qiye'">
			  <el-input v-model="ruleForm.qiyemingcheng" autocomplete="off" placeholder="企业名称"  />
			</el-form-item>
			<!-- <div v-if="tableName=='qiye'" class="input-group">
			   <div class="label">企业地址</div>
			   <div class="input-container">
			     <input v-model="ruleForm.qiyedizhi" class="input" type="text" placeholder="企业地址">
			   </div>
			 </div> -->
			<el-form-item label="企业地址" class="input" v-if="tableName=='qiye'">
			  <el-input v-model="ruleForm.qiyedizhi" autocomplete="off" placeholder="企业地址"  />
			</el-form-item>
			<!-- <div v-if="tableName=='qiye'" class="input-group">
			   <div class="label">负责人</div>
			   <div class="input-container">
			     <input v-model="ruleForm.fuzeren" class="input" type="text" placeholder="负责人">
			   </div>
			 </div> -->
			<el-form-item label="负责人" class="input" v-if="tableName=='qiye'">
			  <el-input v-model="ruleForm.fuzeren" autocomplete="off" placeholder="负责人"  />
			</el-form-item>
			<!-- <div v-if="tableName=='qiye'" class="input-group">
			   <div class="label">联系方式</div>
			   <div class="input-container">
			     <input v-model="ruleForm.lianxifangshi" class="input" type="text" placeholder="联系方式">
			   </div>
			 </div> -->
			<el-form-item label="联系方式" class="input" v-if="tableName=='qiye'">
			  <el-input v-model="ruleForm.lianxifangshi" autocomplete="off" placeholder="联系方式"  />
			</el-form-item>
			<!-- <div v-if="tableName=='qiye'" class="input-group">
			   <div class="label">邮箱</div>
			   <div class="input-container">
			     <input v-model="ruleForm.youxiang" class="input" type="text" placeholder="邮箱">
			   </div>
			 </div> -->
			<el-form-item label="邮箱" class="input" v-if="tableName=='qiye'">
			  <el-input v-model="ruleForm.youxiang" autocomplete="off" placeholder="邮箱"  />
			</el-form-item>
			<div style="display: flex;flex-wrap: wrap;width: 100%;justify-content: center;">
				<el-button class="btn" type="primary" @click="login()">注册</el-button>
				<el-button class="btn close" type="primary" @click="close()">取消</el-button>
			</div>
		</el-form>
      </div>
      <!-- <div class="nk-navigation">
        <a href="#">
          <div @click="login()">注册</div>
        </a>
      </div> -->
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      ruleForm: {
      },
      tableName:"",
      rules: {}
    };
  },
  mounted(){
    let table = this.$storage.get("loginTable");
    this.tableName = table;
  },
  methods: {
    // 获取uuid
    getUUID () {
      return new Date().getTime();
    },
    close(){
	this.$router.push({ path: "/login" });
    },
    // 注册
    login() {
      if(`xuesheng` == this.tableName && this.ruleForm.youxiang&&(!this.$validate.isEmail(this.ruleForm.youxiang))){
        this.$message.error(`邮箱应输入邮件格式`);
        return
      }
      if(`xuesheng` == this.tableName && this.ruleForm.lianxifangshi&&(!this.$validate.isPhone(this.ruleForm.lianxifangshi))){
        this.$message.error(`联系方式应输入电话格式`);
        return
      }
      if(`xuesheng` == this.tableName && this.ruleForm.shenfenzheng&&(!this.$validate.checkIdCard(this.ruleForm.shenfenzheng))){
        this.$message.error(`身份证应输入身份证格式`);
        return
      }
      if((!this.ruleForm.fudaoyuangonghao) && `fudaoyuan` == this.tableName){
        this.$message.error(`辅导员工号不能为空`);
        return
      }
      if((!this.ruleForm.mima) && `fudaoyuan` == this.tableName){
        this.$message.error(`密码不能为空`);
        return
      }
      if((!this.ruleForm.fudaoyuanxingming) && `fudaoyuan` == this.tableName){
        this.$message.error(`辅导员姓名不能为空`);
        return
      }
      if(`fudaoyuan` == this.tableName && this.ruleForm.lianxidianhua&&(!this.$validate.isMobile(this.ruleForm.lianxidianhua))){
        this.$message.error(`联系电话应输入手机格式`);
        return
      }
      if(`fudaoyuan` == this.tableName && this.ruleForm.jiaoshiyouxiang&&(!this.$validate.isEmail(this.ruleForm.jiaoshiyouxiang))){
        this.$message.error(`教师邮箱应输入邮件格式`);
        return
      }
      if((!this.ruleForm.qiyezhanghao) && `qiye` == this.tableName){
        this.$message.error(`企业账号不能为空`);
        return
      }
      if((!this.ruleForm.mima) && `qiye` == this.tableName){
        this.$message.error(`密码不能为空`);
        return
      }
      if((!this.ruleForm.qiyemingcheng) && `qiye` == this.tableName){
        this.$message.error(`企业名称不能为空`);
        return
      }
      if(`qiye` == this.tableName && this.ruleForm.lianxifangshi&&(!this.$validate.isMobile(this.ruleForm.lianxifangshi))){
        this.$message.error(`联系方式应输入手机格式`);
        return
      }
      if(`qiye` == this.tableName && this.ruleForm.youxiang&&(!this.$validate.isEmail(this.ruleForm.youxiang))){
        this.$message.error(`邮箱应输入邮件格式`);
        return
      }
      this.$http({
        url: `${this.tableName}/register`,
        method: "post",
        data:this.ruleForm
      }).then(({ data }) => {
        if (data && data.code === 0) {
          this.$message({
            message: "注册成功",
            type: "success",
            duration: 1500,
            onClose: () => {
              this.$router.replace({ path: "/login" });
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
	.el-radio__input.is-checked .el-radio__inner {
		border-color: #00c292;
		background: #00c292;
	}

	.el-radio__input.is-checked .el-radio__inner {
		border-color: #00c292;
		background: #00c292;
	}

	.el-radio__input.is-checked .el-radio__inner {
		border-color: #00c292;
		background: #00c292;
	}

	.el-radio__input.is-checked+.el-radio__label {
		color: #00c292;
	}

	.el-radio__input.is-checked+.el-radio__label {
		color: #00c292;
	}

	.el-radio__input.is-checked+.el-radio__label {
		color: #00c292;
	}

	.h1 {
		margin-top: 10px;
	}

	body {
		padding: 0;
		margin: 0;
	}

	// .container {
 //    min-height: 100vh;
 //    text-align: center;
 //    // background-color: #00c292;
 //    padding-top: 20vh;
 //    background-image: url(../assets/img/bg.jpg);
 //    background-size: 100% 100%;
 //    opacity: 0.9;
 //  }

	// .login-form:before {
	// 	vertical-align: middle;
	// 	display: inline-block;
	// }

	// .login-form {
	// 	max-width: 500px;
	// 	padding: 20px 0;
	// 	width: 80%;
	// 	position: relative;
	// 	margin: 0 auto;

	// 	.label {
	// 		min-width: 60px;
	// 	}

	// 	.input-group {
	// 		max-width: 500px;
	// 		padding: 20px 0;
	// 		width: 80%;
	// 		position: relative;
	// 		margin: 0 auto;
	// 		display: flex;
	// 		align-items: center;

	// 		.input-container {
	// 			display: inline-block;
	// 			width: 100%;
	// 			text-align: left;
	// 			margin-left: 10px;
	// 		}

	// 		.icon {
	// 			width: 30px;
	// 			height: 30px;
	// 		}

	// 		.input {
	// 			position: relative;
	// 			z-index: 2;
	// 			float: left;
	// 			width: 100%;
	// 			margin-bottom: 0;
	// 			box-shadow: none;
	// 			border-top: 0px solid #ccc;
	// 			border-left: 0px solid #ccc;
	// 			border-right: 0px solid #ccc;
	// 			border-bottom: 1px solid #ccc;
	// 			padding: 0px;
	// 			resize: none;
	// 			border-radius: 0px;
	// 			display: block;
	// 			width: 100%;
	// 			height: 34px;
	// 			padding: 6px 12px;
	// 			font-size: 14px;
	// 			line-height: 1.42857143;
	// 			color: #555;
	// 			background-color: #fff;
	// 		}

	// 	}
	// }

	.nk-navigation {
		margin-top: 15px;

		a {
			display: inline-block;
			color: #fff;
			background: rgba(255, 255, 255, .2);
			width: 100px;
			height: 50px;
			border-radius: 30px;
			text-align: center;
			display: flex;
			align-items: center;
			margin: 0 auto;
			justify-content: center;
			padding: 0 20px;
		}

		.icon {
			margin-left: 10px;
			width: 30px;
			height: 30px;
		}
	}

	.register-container {
		margin-top: 10px;

		a {
			display: inline-block;
			color: #fff;
			max-width: 500px;
			height: 50px;
			border-radius: 30px;
			text-align: center;
			display: flex;
			align-items: center;
			margin: 0 auto;
			justify-content: center;
			padding: 0 20px;

			div {
				margin-left: 10px;
			}
		}
	}
	
	.container {
		background-image: url("http://localhost:8080/springboot4447x/upload/login_bg.jpg");
		height: 100vh;
		background-position: center center;
		background-size: cover;
		background-repeat: no-repeat;
	
		.login-form {
			right: 50%;
			top: 50%;
			height: auto;
			transform: translate3d(50%, -50%, 0);
			border-radius: 10px;
			background-color: rgba(255,255,255,.5);
			width: 420px;
			padding: 30px 30px 40px 30px;
			font-size: 14px;
			font-weight: 500;
			
			.h1 {
				margin: 0;
				text-align: center;
				line-height: 54px;
			    font-size: 24px;
			    color: #000;
			}
				
			.rgs-form {
				display: flex;
				flex-direction: column;
				justify-content: center;
				align-items: center;
				
				.input {
					width: 100%;
					
					& /deep/ .el-form-item__label {
						line-height: 40px;
						color: rgba(238, 141, 7, 1);
						font-size: rgba(255, 0, 0, 1);
					}
					
					& /deep/ .el-input__inner {
						height: 40px;
						color: rgba(0, 0, 0, 1);
						font-size: 14px;
						border-width: 1px;
						border-style: solid;
						border-color: rgba(0, 0, 0, 1);
						border-radius: 20px;
						background-color: rgba(248, 241, 241, 0.18);
					}
				}
				
				.btn {
					margin: 0 10px;
					width: 88px;
					height: 44px;
					color: rgba(255, 255, 255, 1);
					font-size: 14px;
					border-width: 1px;
					border-style: solid;
					border-color: rgba(64, 158, 255, 1);
					border-radius: 20px;
					background-color: rgba(84, 221, 231, 1);
				}

				.close {
					margin: 0 10px;
					width: 88px;
					height: 44px;
					color: rgba(255, 255, 255, 1);
					font-size: 14px;
					border-width: 1px;
					border-style: solid;
					border-color: #409EFF;
					border-radius: 21px;
					background-color: rgba(84, 221, 231, 1);
				}

			}
		}
	}
</style>
