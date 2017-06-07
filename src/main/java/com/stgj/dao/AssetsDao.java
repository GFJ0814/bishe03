package com.stgj.dao;

import com.stgj.entity.Assets;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by gfj43958 on 2017/6/6.
 * time:13:11
 * author:GuoFangjun
 */
@Repository
public interface AssetsDao {

    //分页查找所有资产信息
    List<Assets> findAllByPage(@Param("pageStart") Integer pageStart);

    //统计总记录数
    int getAllAssetsCount();

    //修改资产信息
    void updateAssets(Assets assets);

    //删除资产信息
    void deleAssets(@Param("assetsId") Integer assetsId);

    //新增资产信息
    void addAssets(Assets assets);

    //根据资产名进行模糊查询
    List<Assets> findByName(@Param("name") String name,@Param("pageStart") Integer pageStart);



}
