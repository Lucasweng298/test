package com.dao;

import com.entity.JiuyezhishiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.JiuyezhishiVO;
import com.entity.view.JiuyezhishiView;


/**
 * 就业知识
 * 
 * @author 
 * @email 
 * @date 
 */
public interface JiuyezhishiDao extends BaseMapper<JiuyezhishiEntity> {
	
	List<JiuyezhishiVO> selectListVO(@Param("ew") Wrapper<JiuyezhishiEntity> wrapper);
	
	JiuyezhishiVO selectVO(@Param("ew") Wrapper<JiuyezhishiEntity> wrapper);
	
	List<JiuyezhishiView> selectListView(@Param("ew") Wrapper<JiuyezhishiEntity> wrapper);

	List<JiuyezhishiView> selectListView(Pagination page,@Param("ew") Wrapper<JiuyezhishiEntity> wrapper);
	
	JiuyezhishiView selectView(@Param("ew") Wrapper<JiuyezhishiEntity> wrapper);
	
}
