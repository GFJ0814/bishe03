package com.stgj.service.impl;

import com.stgj.dao.AssetsDao;
import com.stgj.entity.Assets;
import com.stgj.service.AssetsServcie;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by gfj43958 on 2017/6/6.
 * time:13:52
 * author:GuoFangjun
 */
@Service
@Transactional(rollbackFor = Exception.class)
public class AssetsServiceImpl implements AssetsServcie {

    @Autowired
    AssetsDao assetsDao;

    public AssetsServiceImpl() {
        super();
    }

    public void addAssets(Assets assets) {
        assetsDao.addAssets(assets);
    }

    public void updateAssets(Assets assets) {
        assetsDao.updateAssets(assets);
    }

    public void delAssets(Integer assets_id) {
       assetsDao.deleAssets(assets_id);
    }

    public List<Assets> findAllByPage(Integer pageStart) {
        return assetsDao.findAllByPage(pageStart);
    }

    public int getAllAssetsAccount() {
        return assetsDao.getAllAssetsCount();
    }

    public List<Assets> findByName(String name,Integer pageStart) {
        return assetsDao.findByName(name,pageStart);
    }
}
