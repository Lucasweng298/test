package com.dao;

import com.entity.BiyequxiangEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.BiyequxiangVO;
import com.entity.view.BiyequxiangView;


/**
 * 毕业去向
 * 
 * @author 
 * @email 
 * @date  
 */
public interface BiyequxiangDao extends BaseMapper<BiyequxiangEntity> {
	
	List<BiyequxiangVO> selectListVO(@Param("ew") Wrapper<BiyequxiangEntity> wrapper);
	
	BiyequxiangVO selectVO(@Param("ew") Wrapper<BiyequxiangEntity> wrapper);
	
	List<BiyequxiangView> selectListView(@Param("ew") Wrapper<BiyequxiangEntity> wrapper);

	List<BiyequxiangView> selectListView(Pagination page,@Param("ew") Wrapper<BiyequxiangEntity> wrapper);
	
	BiyequxiangView selectView(@Param("ew") Wrapper<BiyequxiangEntity> wrapper);
	
}
