package com.stgj.service.impl;

import com.stgj.common.PageResult;
import com.stgj.dao.ApplyDao;
import com.stgj.entity.Apply;
import com.stgj.service.ApplyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by gfj43958 on 2017/6/6.
 * time:20:13
 * author:GuoFangjun
 */
@Service
@Transactional(rollbackFor = Exception.class)
public class ApplyServiceImpl implements ApplyService{
    @Autowired
    ApplyDao applyDao;

    public List<Apply> findAllByPage(Integer pageStart) {
        return applyDao.findAllByPage(pageStart);
    }

    public int getAllApplyAccount() {
        return applyDao.getAllApplyAccount();
    }

    public void addApply(Apply apply) {
        applyDao.addApply(apply);
    }

    public void delApply(Integer apply_id) {
        applyDao.delApply(apply_id);
    }

    public void updateApply(Apply apply) {
        applyDao.updateApply(apply);
    }

    public PageResult<Apply> getPageResult(Integer pageNo) {
        PageResult<Apply> pageResult = new PageResult<Apply>();

        //总记录数 求出总页数  每页的开始记录  0-9 10-19
        int applyAccount = applyDao.getAllApplyAccount();
        int pagesNum = applyAccount%10==0?applyAccount/10:applyAccount/10+1;

        if (pagesNum!=0&&pageNo > pagesNum) {
            pageNo = pagesNum;
        }
        int pageStart = (pageNo - 1)*10;
        List<Apply> list = applyDao.findAllByPage(pageStart);
        pageResult.setList(list);
        pageResult.setPageNum(pagesNum);
        pageResult.setCurrentPage(pageNo);
        return pageResult;
    }
}
