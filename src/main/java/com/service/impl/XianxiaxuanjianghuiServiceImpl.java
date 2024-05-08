package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.XianxiaxuanjianghuiDao;
import com.entity.XianxiaxuanjianghuiEntity;
import com.service.XianxiaxuanjianghuiService;
import com.entity.vo.XianxiaxuanjianghuiVO;
import com.entity.view.XianxiaxuanjianghuiView;

@Service("xianxiaxuanjianghuiService")
public class XianxiaxuanjianghuiServiceImpl extends ServiceImpl<XianxiaxuanjianghuiDao, XianxiaxuanjianghuiEntity> implements XianxiaxuanjianghuiService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<XianxiaxuanjianghuiEntity> page = this.selectPage(
                new Query<XianxiaxuanjianghuiEntity>(params).getPage(),
                new EntityWrapper<XianxiaxuanjianghuiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<XianxiaxuanjianghuiEntity> wrapper) {
		  Page<XianxiaxuanjianghuiView> page =new Query<XianxiaxuanjianghuiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<XianxiaxuanjianghuiVO> selectListVO(Wrapper<XianxiaxuanjianghuiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public XianxiaxuanjianghuiVO selectVO(Wrapper<XianxiaxuanjianghuiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<XianxiaxuanjianghuiView> selectListView(Wrapper<XianxiaxuanjianghuiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public XianxiaxuanjianghuiView selectView(Wrapper<XianxiaxuanjianghuiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
