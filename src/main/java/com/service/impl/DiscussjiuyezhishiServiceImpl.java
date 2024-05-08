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


import com.dao.DiscussjiuyezhishiDao;
import com.entity.DiscussjiuyezhishiEntity;
import com.service.DiscussjiuyezhishiService;
import com.entity.vo.DiscussjiuyezhishiVO;
import com.entity.view.DiscussjiuyezhishiView;

@Service("discussjiuyezhishiService")
public class DiscussjiuyezhishiServiceImpl extends ServiceImpl<DiscussjiuyezhishiDao, DiscussjiuyezhishiEntity> implements DiscussjiuyezhishiService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<DiscussjiuyezhishiEntity> page = this.selectPage(
                new Query<DiscussjiuyezhishiEntity>(params).getPage(),
                new EntityWrapper<DiscussjiuyezhishiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<DiscussjiuyezhishiEntity> wrapper) {
		  Page<DiscussjiuyezhishiView> page =new Query<DiscussjiuyezhishiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<DiscussjiuyezhishiVO> selectListVO(Wrapper<DiscussjiuyezhishiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public DiscussjiuyezhishiVO selectVO(Wrapper<DiscussjiuyezhishiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<DiscussjiuyezhishiView> selectListView(Wrapper<DiscussjiuyezhishiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public DiscussjiuyezhishiView selectView(Wrapper<DiscussjiuyezhishiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
