package com.stgj.dao;

import com.stgj.entity.Permission;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by gfj43958 on 2017/5/28.
 * time:20:11
 * author:GuoFangjun
 */
@Repository
public interface PermissionDao {

    //权限新增
     void  addPermission(Permission permission);

    //修改权限
    void updatePermission(Permission permission);

    //删除权限
    void delPermission(Integer permissionId);

    //分页查询所有
    List<Permission> findAllPermissionsByPage(@Param("pageStart") Integer pageStart);


    //统计集合数
    int getAllPermissionsAccount();
}
