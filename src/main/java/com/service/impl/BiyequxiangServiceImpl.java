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


import com.dao.BiyequxiangDao;
import com.entity.BiyequxiangEntity;
import com.service.BiyequxiangService;
import com.entity.vo.BiyequxiangVO;
import com.entity.view.BiyequxiangView;

@Service("biyequxiangService")
public class BiyequxiangServiceImpl extends ServiceImpl<BiyequxiangDao, BiyequxiangEntity> implements BiyequxiangService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<BiyequxiangEntity> page = this.selectPage(
                new Query<BiyequxiangEntity>(params).getPage(),
                new EntityWrapper<BiyequxiangEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<BiyequxiangEntity> wrapper) {
		  Page<BiyequxiangView> page =new Query<BiyequxiangView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<BiyequxiangVO> selectListVO(Wrapper<BiyequxiangEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public BiyequxiangVO selectVO(Wrapper<BiyequxiangEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<BiyequxiangView> selectListView(Wrapper<BiyequxiangEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public BiyequxiangView selectView(Wrapper<BiyequxiangEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
