package com.entity.view;

import com.entity.XianxiaxuanjianghuiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 线下宣讲会
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date  
 */
@TableName("xianxiaxuanjianghui")
public class XianxiaxuanjianghuiView  extends XianxiaxuanjianghuiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public XianxiaxuanjianghuiView(){
	}
 
 	public XianxiaxuanjianghuiView(XianxiaxuanjianghuiEntity xianxiaxuanjianghuiEntity){
 	try {
			BeanUtils.copyProperties(this, xianxiaxuanjianghuiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
