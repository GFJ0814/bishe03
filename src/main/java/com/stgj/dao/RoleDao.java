package com.stgj.dao;

import com.stgj.entity.Role;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by gfj43958 on 2017/5/12.
 * time:11:33
 * author:GuoFangjun
 */
@Repository
public interface RoleDao {
    //新增角色
    public void saveRole(Role role);

    //删除角色
    public void delRole(Integer roleId);

    //统计总数
    public  int getRolesAccount();

    //分页查询所有
    public List<Role> findAllRoleByPage(@Param("pageStart") Integer pageStart);

    //修改角色信息
    public void updateRole(Role role);


}
