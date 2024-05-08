package com.entity.vo;

import com.entity.XianxiaxuanjianghuiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;
import java.io.Serializable;
 

/**
 * 线下宣讲会
 * 手机端接口返回实体辅助类 
 * （主要作用去除一些不必要的字段）
 * @author 
 * @email 
 * @date 
 */
public class XianxiaxuanjianghuiVO  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 教学楼
	 */
	
	private String jiaoxuelou;
		
	/**
	 * 空闲教室
	 */
	
	private String kongxianjiaoshi;
		
	/**
	 * 教室容量
	 */
	
	private String jiaoshirongliang;
		
	/**
	 * 时间
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date shijian;
		
	/**
	 * 企业账号
	 */
	
	private String qiyezhanghao;
		
	/**
	 * 企业名称
	 */
	
	private String qiyemingcheng;
		
	/**
	 * 企业图片
	 */
	
	private String qiyetupian;
		
	/**
	 * 内容
	 */
	
	private String neirong;
		
	/**
	 * 是否审核
	 */
	
	private String sfsh;
		
	/**
	 * 审核回复
	 */
	
	private String shhf;
				
	
	/**
	 * 设置：教学楼
	 */
	 
	public void setJiaoxuelou(String jiaoxuelou) {
		this.jiaoxuelou = jiaoxuelou;
	}
	
	/**
	 * 获取：教学楼
	 */
	public String getJiaoxuelou() {
		return jiaoxuelou;
	}
				
	
	/**
	 * 设置：空闲教室
	 */
	 
	public void setKongxianjiaoshi(String kongxianjiaoshi) {
		this.kongxianjiaoshi = kongxianjiaoshi;
	}
	
	/**
	 * 获取：空闲教室
	 */
	public String getKongxianjiaoshi() {
		return kongxianjiaoshi;
	}
				
	
	/**
	 * 设置：教室容量
	 */
	 
	public void setJiaoshirongliang(String jiaoshirongliang) {
		this.jiaoshirongliang = jiaoshirongliang;
	}
	
	/**
	 * 获取：教室容量
	 */
	public String getJiaoshirongliang() {
		return jiaoshirongliang;
	}
				
	
	/**
	 * 设置：时间
	 */
	 
	public void setShijian(Date shijian) {
		this.shijian = shijian;
	}
	
	/**
	 * 获取：时间
	 */
	public Date getShijian() {
		return shijian;
	}
				
	
	/**
	 * 设置：企业账号
	 */
	 
	public void setQiyezhanghao(String qiyezhanghao) {
		this.qiyezhanghao = qiyezhanghao;
	}
	
	/**
	 * 获取：企业账号
	 */
	public String getQiyezhanghao() {
		return qiyezhanghao;
	}
				
	
	/**
	 * 设置：企业名称
	 */
	 
	public void setQiyemingcheng(String qiyemingcheng) {
		this.qiyemingcheng = qiyemingcheng;
	}
	
	/**
	 * 获取：企业名称
	 */
	public String getQiyemingcheng() {
		return qiyemingcheng;
	}
				
	
	/**
	 * 设置：企业图片
	 */
	 
	public void setQiyetupian(String qiyetupian) {
		this.qiyetupian = qiyetupian;
	}
	
	/**
	 * 获取：企业图片
	 */
	public String getQiyetupian() {
		return qiyetupian;
	}
				
	
	/**
	 * 设置：内容
	 */
	 
	public void setNeirong(String neirong) {
		this.neirong = neirong;
	}
	
	/**
	 * 获取：内容
	 */
	public String getNeirong() {
		return neirong;
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
