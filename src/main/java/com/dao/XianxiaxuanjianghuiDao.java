package com.dao;

import com.entity.XianxiaxuanjianghuiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.XianxiaxuanjianghuiVO;
import com.entity.view.XianxiaxuanjianghuiView;


/**
 * 线下宣讲会
 * 
 * @author 
 * @email 
 * @date 
 */
public interface XianxiaxuanjianghuiDao extends BaseMapper<XianxiaxuanjianghuiEntity> {
	
	List<XianxiaxuanjianghuiVO> selectListVO(@Param("ew") Wrapper<XianxiaxuanjianghuiEntity> wrapper);
	
	XianxiaxuanjianghuiVO selectVO(@Param("ew") Wrapper<XianxiaxuanjianghuiEntity> wrapper);
	
	List<XianxiaxuanjianghuiView> selectListView(@Param("ew") Wrapper<XianxiaxuanjianghuiEntity> wrapper);

	List<XianxiaxuanjianghuiView> selectListView(Pagination page,@Param("ew") Wrapper<XianxiaxuanjianghuiEntity> wrapper);
	
	XianxiaxuanjianghuiView selectView(@Param("ew") Wrapper<XianxiaxuanjianghuiEntity> wrapper);
	
}
