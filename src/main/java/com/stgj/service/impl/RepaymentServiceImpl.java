package com.stgj.service.impl;

import com.stgj.dao.RepaymentDao;
import com.stgj.entity.Repayment;
import com.stgj.service.RepaymentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by gfj43958 on 2018/6/6.
 * time:23:02
 * author:GuoFangjun
 */
@Service
public class RepaymentServiceImpl implements RepaymentService {

    @Autowired
    RepaymentDao repaymentDao;

    public List<Repayment> findAllRepayments() {
        return repaymentDao.findAllRepayments();
    }

    public void addOneRepayment(Repayment repayment) {
        repaymentDao.addOneRepayment(repayment);
    }

    public void delOneRepaymentById(Integer id) {
        repaymentDao.delOneRepaymentById(id);
    }

    public void updateOneRepayment(Repayment repayment) {
        repaymentDao.updateOneRepayment(repayment);
    }

    public Repayment findOneById(Integer id) {
        return repaymentDao.findOneRepayById(id);
    }
}
