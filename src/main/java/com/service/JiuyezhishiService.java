package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.JiuyezhishiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.JiuyezhishiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.JiuyezhishiView;


/**
 * 就业知识
 *
 * @author 
 * @email 
 * @date 
 */
public interface JiuyezhishiService extends IService<JiuyezhishiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<JiuyezhishiVO> selectListVO(Wrapper<JiuyezhishiEntity> wrapper);
   	
   	JiuyezhishiVO selectVO(@Param("ew") Wrapper<JiuyezhishiEntity> wrapper);
   	
   	List<JiuyezhishiView> selectListView(Wrapper<JiuyezhishiEntity> wrapper);
   	
   	JiuyezhishiView selectView(@Param("ew") Wrapper<JiuyezhishiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<JiuyezhishiEntity> wrapper);
   	
}

