package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.DiscussjiuyezhishiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.DiscussjiuyezhishiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.DiscussjiuyezhishiView;


/**
 * 就业知识评论表
 *
 * @author 
 * @email 
 * @date  
 */
public interface DiscussjiuyezhishiService extends IService<DiscussjiuyezhishiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<DiscussjiuyezhishiVO> selectListVO(Wrapper<DiscussjiuyezhishiEntity> wrapper);
   	
   	DiscussjiuyezhishiVO selectVO(@Param("ew") Wrapper<DiscussjiuyezhishiEntity> wrapper);
   	
   	List<DiscussjiuyezhishiView> selectListView(Wrapper<DiscussjiuyezhishiEntity> wrapper);
   	
   	DiscussjiuyezhishiView selectView(@Param("ew") Wrapper<DiscussjiuyezhishiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<DiscussjiuyezhishiEntity> wrapper);
   	
}

