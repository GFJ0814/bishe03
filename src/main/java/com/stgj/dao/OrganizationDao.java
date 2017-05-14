package com.stgj.dao;

import com.stgj.entity.Organization;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by acer on 2017/4/23.
 */
@Repository
public interface OrganizationDao {

    /**
     * 根据主键查找
     * @param orgId
     */

    Organization findById(@Param("orgId") Integer orgId);

    /**
     *
     * @return
     */
    List<Organization> findAll();

    /**
     * 查询所有组织(superId等于0的情况)
     * @return
     */

    List<Organization> findAllOrgs();

    /**
     * 统计所有组织或部门的记录总数
     */

    int getAllOrgsAccount();

    /**
     * 根据组织id查询对应的所有部门
     * @param orgSuperId
     * @return
     */
    List<Organization> findOrgsBySuperId(@Param("orgSuperId") Integer orgSuperId);

    /**
     * 删除部门或者组织信息
     * @param orgId
     * @return
     */
    int delOrgInfo(@Param("orgId") Integer orgId);

    /**
     * 新增组织或者部门信息
     * @param organization
     */

    int addOrgInfo(Organization organization);

    /**
     * 修改组织或者部门信息
     * @param organization
     * @return
     */
    int updateOrgInfo(Organization organization);




}
