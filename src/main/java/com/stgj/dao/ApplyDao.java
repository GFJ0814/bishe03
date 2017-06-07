package com.stgj.dao;

import com.stgj.entity.Apply;
import com.sun.tracing.dtrace.ProviderAttributes;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by gfj43958 on 2017/6/6.
 * time:19:48
 * author:GuoFangjun
 */
@Repository
public interface ApplyDao {

    //新增申请
    void addApply(Apply apply);

    //删除申请
    void delApply(Integer apply_id);

    //修改申请信息
    void updateApply(Apply apply);

    //统计数量
    int getAllApplyAccount();

    //分页查询所有
    List<Apply> findAllByPage(@Param("pageStart") Integer pageStart);





}
