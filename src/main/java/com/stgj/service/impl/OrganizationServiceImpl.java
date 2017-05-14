package com.stgj.service.impl;

import com.stgj.dao.OrganizationDao;
import com.stgj.entity.Organization;
import com.stgj.service.OrganizationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.io.File;
import java.util.List;

/**
 * Created by acer on 2017/5/7.
 */
@Service
@Transactional(rollbackFor = Exception.class)
public class OrganizationServiceImpl implements OrganizationService {

    @Autowired
    private OrganizationDao organizationDao;

    public int addOrgInfo(Organization organization) {
        return organizationDao.addOrgInfo(organization);
    }

    public int updateOrgInfo(Organization organization) {
        return organizationDao.updateOrgInfo(organization);
    }

    public int delOrgInfo(Integer orgId) {
        return organizationDao.delOrgInfo(orgId);
    }

    public List<Organization> findAll() {
        return organizationDao.findAll();
    }

    public List<Organization> findAllOrgs() {
        return organizationDao.findAllOrgs();
    }

    public List<Organization> findSomeDepartsBySuperId(Integer orgSuperId) {
        return organizationDao.findOrgsBySuperId(orgSuperId);
    }

    public Organization findOneByOrgId(Integer orgId) {
        return organizationDao.findById(orgId);
    }
}
