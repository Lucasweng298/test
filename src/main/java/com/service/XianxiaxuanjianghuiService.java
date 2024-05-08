package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.XianxiaxuanjianghuiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.XianxiaxuanjianghuiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.XianxiaxuanjianghuiView;


/**
 * 线下宣讲会
 *
 * @author 
 * @email 
 * @date 
 */
public interface XianxiaxuanjianghuiService extends IService<XianxiaxuanjianghuiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<XianxiaxuanjianghuiVO> selectListVO(Wrapper<XianxiaxuanjianghuiEntity> wrapper);
   	
   	XianxiaxuanjianghuiVO selectVO(@Param("ew") Wrapper<XianxiaxuanjianghuiEntity> wrapper);
   	
   	List<XianxiaxuanjianghuiView> selectListView(Wrapper<XianxiaxuanjianghuiEntity> wrapper);
   	
   	XianxiaxuanjianghuiView selectView(@Param("ew") Wrapper<XianxiaxuanjianghuiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<XianxiaxuanjianghuiEntity> wrapper);
   	
}

