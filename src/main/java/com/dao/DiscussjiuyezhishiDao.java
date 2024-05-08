package com.dao;

import com.entity.DiscussjiuyezhishiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.DiscussjiuyezhishiVO;
import com.entity.view.DiscussjiuyezhishiView;


/**
 * 就业知识评论表
 * 
 * @author 
 * @email 
 * @date  
 */
public interface DiscussjiuyezhishiDao extends BaseMapper<DiscussjiuyezhishiEntity> {
	
	List<DiscussjiuyezhishiVO> selectListVO(@Param("ew") Wrapper<DiscussjiuyezhishiEntity> wrapper);
	
	DiscussjiuyezhishiVO selectVO(@Param("ew") Wrapper<DiscussjiuyezhishiEntity> wrapper);
	
	List<DiscussjiuyezhishiView> selectListView(@Param("ew") Wrapper<DiscussjiuyezhishiEntity> wrapper);

	List<DiscussjiuyezhishiView> selectListView(Pagination page,@Param("ew") Wrapper<DiscussjiuyezhishiEntity> wrapper);
	
	DiscussjiuyezhishiView selectView(@Param("ew") Wrapper<DiscussjiuyezhishiEntity> wrapper);
	
}
