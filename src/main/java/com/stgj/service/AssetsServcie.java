package com.stgj.service;

import com.stgj.entity.Assets;

import java.util.List;

/**
 * Created by gfj43958 on 2017/6/6.
 * time:13:50
 * author:GuoFangjun
 */
public interface AssetsServcie {

    void addAssets(Assets assets);

    void updateAssets(Assets assets);

    void delAssets(Integer assets_id);

    List<Assets> findAllByPage(Integer pageStart);

    int getAllAssetsAccount();

    List<Assets> findByName(String  name,Integer pageStart);
}
