package com.stgj.service;

import com.stgj.entity.Organization;

import java.util.List;

/**
 * Created by acer on 2017/4/23.
 */
public interface OrganizationService {

    //新增部门
     int addOrgInfo(Organization organization);
    //修改部门（信息）
     int updateOrgInfo(Organization organization);
    //删除部门
    int delOrgInfo(Integer orgId);

    //查询所有组织
    List<Organization> findAll();

    //查询所有部门
    List<Organization> findAllOrgs();

    //查询某个组织下面的所有部门
    List<Organization> findSomeDepartsBySuperId(Integer orgSuperId);

    //根据主键查询某个部门或者组织
    Organization findOneByOrgId(Integer orgId);

    //查询该部门下的所有学生







}
