package com.stgj.dao;

import com.stgj.entity.Role;

/**
 * Created by gfj43958 on 2017/5/12.
 * time:11:33
 * author:GuoFangjun
 */
public interface RoleDao {
    //新增角色
    public void saveRole(Role role);

    //删除角色
    public void delRole(Integer roleId);

    //统计总数
    public  int getRolesAccount();


}
