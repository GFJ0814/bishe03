package com.stgj.service.impl;

import com.stgj.dao.PermissionDao;
import com.stgj.entity.Permission;
import com.stgj.service.PermissionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by gfj43958 on 2017/5/28.
 * time:20:35
 * author:GuoFangjun
 */
@Service
@Transactional(rollbackFor = Exception.class)
public class PermissionServiceImpl implements PermissionService {

    @Autowired
    PermissionDao permissionDao;

    public void addPermission(Permission permission) {
        permissionDao.addPermission(permission);
    }

    public void updatePermission(Permission permission) {
        permissionDao.updatePermission(permission);
    }

    public void delPermission(Integer permissionId) {
        permissionDao.delPermission(permissionId);
    }

    public int getAllPermissionsAccount() {
        return permissionDao.getAllPermissionsAccount();
    }

    public List<Permission> findAllPermissionsByPage(Integer pageStart) {
        return permissionDao.findAllPermissionsByPage(pageStart);
    }

    public List<Permission> findAllParentPermissions() {
        return permissionDao.findAllParentPermissions();
    }
}
