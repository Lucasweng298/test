package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.BiyequxiangEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.BiyequxiangVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.BiyequxiangView;


/**
 * 毕业去向
 *
 * @author 
 * @email 
 * @date  
 */
public interface BiyequxiangService extends IService<BiyequxiangEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<BiyequxiangVO> selectListVO(Wrapper<BiyequxiangEntity> wrapper);
   	
   	BiyequxiangVO selectVO(@Param("ew") Wrapper<BiyequxiangEntity> wrapper);
   	
   	List<BiyequxiangView> selectListView(Wrapper<BiyequxiangEntity> wrapper);
   	
   	BiyequxiangView selectView(@Param("ew") Wrapper<BiyequxiangEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<BiyequxiangEntity> wrapper);
   	
}

