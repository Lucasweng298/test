package com.entity.vo;

import com.entity.XueshengEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;
import java.io.Serializable;
 

/**
 * 学生
 * 手机端接口返回实体辅助类 
 * （主要作用去除一些不必要的字段）
 * @author 
 * @email 
 * @date  
 */
public class XueshengVO  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 学生姓名
	 */
	
	private String xueshengxingming;
		
	/**
	 * 密码
	 */
	
	private String mima;
		
	/**
	 * 性别
	 */
	
	private String xingbie;
		
	/**
	 * 专业
	 */
	
	private String zhuanye;
		
	/**
	 * 邮箱
	 */
	
	private String youxiang;
		
	/**
	 * 联系方式
	 */
	
	private String lianxifangshi;
		
	/**
	 * 身份证
	 */
	
	private String shenfenzheng;
		
	/**
	 * 出生年月
	 */
	
	private String chushengnianyue;
		
	/**
	 * 辅导员工号
	 */
	
	private String fudaoyuangonghao;
		
	/**
	 * 辅导员姓名
	 */
	
	private String fudaoyuanxingming;
		
	/**
	 * 个人技能
	 */
	
	private String gerenjineng;
		
	/**
	 * 奖项证书
	 */
	
	private String jiangxiangzhengshu;
		
	/**
	 * 是否审核
	 */
	
	private String sfsh;
		
	/**
	 * 审核回复
	 */
	
	private String shhf;
				
	
	/**
	 * 设置：学生姓名
	 */
	 
	public void setXueshengxingming(String xueshengxingming) {
		this.xueshengxingming = xueshengxingming;
	}
	
	/**
	 * 获取：学生姓名
	 */
	public String getXueshengxingming() {
		return xueshengxingming;
	}
				
	
	/**
	 * 设置：密码
	 */
	 
	public void setMima(String mima) {
		this.mima = mima;
	}
	
	/**
	 * 获取：密码
	 */
	public String getMima() {
		return mima;
	}
				
	
	/**
	 * 设置：性别
	 */
	 
	public void setXingbie(String xingbie) {
		this.xingbie = xingbie;
	}
	
	/**
	 * 获取：性别
	 */
	public String getXingbie() {
		return xingbie;
	}
				
	
	/**
	 * 设置：专业
	 */
	 
	public void setZhuanye(String zhuanye) {
		this.zhuanye = zhuanye;
	}
	
	/**
	 * 获取：专业
	 */
	public String getZhuanye() {
		return zhuanye;
	}
				
	
	/**
	 * 设置：邮箱
	 */
	 
	public void setYouxiang(String youxiang) {
		this.youxiang = youxiang;
	}
	
	/**
	 * 获取：邮箱
	 */
	public String getYouxiang() {
		return youxiang;
	}
				
	
	/**
	 * 设置：联系方式
	 */
	 
	public void setLianxifangshi(String lianxifangshi) {
		this.lianxifangshi = lianxifangshi;
	}
	
	/**
	 * 获取：联系方式
	 */
	public String getLianxifangshi() {
		return lianxifangshi;
	}
				
	
	/**
	 * 设置：身份证
	 */
	 
	public void setShenfenzheng(String shenfenzheng) {
		this.shenfenzheng = shenfenzheng;
	}
	
	/**
	 * 获取：身份证
	 */
	public String getShenfenzheng() {
		return shenfenzheng;
	}
				
	
	/**
	 * 设置：出生年月
	 */
	 
	public void setChushengnianyue(String chushengnianyue) {
		this.chushengnianyue = chushengnianyue;
	}
	
	/**
	 * 获取：出生年月
	 */
	public String getChushengnianyue() {
		return chushengnianyue;
	}
				
	
	/**
	 * 设置：辅导员工号
	 */
	 
	public void setFudaoyuangonghao(String fudaoyuangonghao) {
		this.fudaoyuangonghao = fudaoyuangonghao;
	}
	
	/**
	 * 获取：辅导员工号
	 */
	public String getFudaoyuangonghao() {
		return fudaoyuangonghao;
	}
				
	
	/**
	 * 设置：辅导员姓名
	 */
	 
	public void setFudaoyuanxingming(String fudaoyuanxingming) {
		this.fudaoyuanxingming = fudaoyuanxingming;
	}
	
	/**
	 * 获取：辅导员姓名
	 */
	public String getFudaoyuanxingming() {
		return fudaoyuanxingming;
	}
				
	
	/**
	 * 设置：个人技能
	 */
	 
	public void setGerenjineng(String gerenjineng) {
		this.gerenjineng = gerenjineng;
	}
	
	/**
	 * 获取：个人技能
	 */
	public String getGerenjineng() {
		return gerenjineng;
	}
				
	
	/**
	 * 设置：奖项证书
	 */
	 
	public void setJiangxiangzhengshu(String jiangxiangzhengshu) {
		this.jiangxiangzhengshu = jiangxiangzhengshu;
	}
	
	/**
	 * 获取：奖项证书
	 */
	public String getJiangxiangzhengshu() {
		return jiangxiangzhengshu;
	}
				
	
	/**
	 * 设置：是否审核
	 */
	 
	public void setSfsh(String sfsh) {
		this.sfsh = sfsh;
	}
	
	/**
	 * 获取：是否审核
	 */
	public String getSfsh() {
		return sfsh;
	}
				
	
	/**
	 * 设置：审核回复
	 */
	 
	public void setShhf(String shhf) {
		this.shhf = shhf;
	}
	
	/**
	 * 获取：审核回复
	 */
	public String getShhf() {
		return shhf;
	}
			
}
