package com.stgj.service.impl;

import com.stgj.dao.RoleDao;
import com.stgj.entity.Role;
import com.stgj.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by gfj43958 on 2017/5/28.
 * time:18:16
 * author:GuoFangjun
 */
@Service
@Transactional(rollbackFor = Exception.class)
public class RoleServiceImpl implements RoleService {

    @Autowired
    RoleDao roleDao;

    public void saveRole(Role role) {
       roleDao.saveRole(role);
    }

    public void updateRole(Role role) {
        roleDao.updateRole(role);
    }

    public List<Role> findAllRolesByPage(Integer pageStart) {
        return roleDao.findAllRoleByPage(pageStart);
    }

    public int getRolesAccount() {
        return roleDao.getRolesAccount();
    }

    public void delRole(Integer roleId) {
        roleDao.delRole(roleId);
    }
}
