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


import com.dao.JiuyezhishiDao;
import com.entity.JiuyezhishiEntity;
import com.service.JiuyezhishiService;
import com.entity.vo.JiuyezhishiVO;
import com.entity.view.JiuyezhishiView;

@Service("jiuyezhishiService")
public class JiuyezhishiServiceImpl extends ServiceImpl<JiuyezhishiDao, JiuyezhishiEntity> implements JiuyezhishiService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<JiuyezhishiEntity> page = this.selectPage(
                new Query<JiuyezhishiEntity>(params).getPage(),
                new EntityWrapper<JiuyezhishiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<JiuyezhishiEntity> wrapper) {
		  Page<JiuyezhishiView> page =new Query<JiuyezhishiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<JiuyezhishiVO> selectListVO(Wrapper<JiuyezhishiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public JiuyezhishiVO selectVO(Wrapper<JiuyezhishiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<JiuyezhishiView> selectListView(Wrapper<JiuyezhishiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public JiuyezhishiView selectView(Wrapper<JiuyezhishiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
