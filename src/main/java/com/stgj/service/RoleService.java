package com.stgj.service;

import com.stgj.entity.Role;

import java.util.List;

/**
 * Created by gfj43958 on 2017/5/28.
 * time:18:13
 * author:GuoFangjun
 */
public interface RoleService {

    public  void saveRole(Role role);

    public  void updateRole(Role role);

    public List<Role> findAllRolesByPage(Integer pageStart);

    public int getRolesAccount();

    public void delRole(Integer roleId);
}
