package com.stgj.service;

import com.stgj.entity.Permission;

import java.util.List;

/**
 * Created by gfj43958 on 2017/5/28.
 * time:20:33
 * author:GuoFangjun
 */
public interface PermissionService {

    void addPermission(Permission permission);

    void updatePermission(Permission permission);

    void delPermission(Integer permissionId);

    int getAllPermissionsAccount();

    List<Permission> findAllPermissionsByPage(Integer pageStart);

    List<Permission> findAllParentPermissions();
}
