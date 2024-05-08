package com.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.beanutils.BeanUtils;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.enums.FieldFill;
import com.baomidou.mybatisplus.enums.IdType;


/**
 * 线下宣讲会
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date  
 */
@TableName("xianxiaxuanjianghui")
public class XianxiaxuanjianghuiEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public XianxiaxuanjianghuiEntity() {
		
	}
	
	public XianxiaxuanjianghuiEntity(T t) {
		try {
			BeanUtils.copyProperties(this, t);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * 主键id
	 */
	@TableId
	private Long id;
	/**
	 * 宣讲主题
	 */
					
	private String xuanjiangzhuti;
	
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
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd")
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
	
	
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
	private Date addtime;

	public Date getAddtime() {
		return addtime;
	}
	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	/**
	 * 设置：宣讲主题
	 */
	public void setXuanjiangzhuti(String xuanjiangzhuti) {
		this.xuanjiangzhuti = xuanjiangzhuti;
	}
	/**
	 * 获取：宣讲主题
	 */
	public String getXuanjiangzhuti() {
		return xuanjiangzhuti;
	}
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
