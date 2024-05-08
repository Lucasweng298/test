package com.entity.view;

import com.entity.JiuyezhishiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 就业知识
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 
 */
@TableName("jiuyezhishi")
public class JiuyezhishiView  extends JiuyezhishiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public JiuyezhishiView(){
	}
 
 	public JiuyezhishiView(JiuyezhishiEntity jiuyezhishiEntity){
 	try {
			BeanUtils.copyProperties(this, jiuyezhishiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
