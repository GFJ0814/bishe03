package com.stgj.service.impl;

import com.stgj.dao.LoanDao;
import com.stgj.entity.Loan;
import com.stgj.service.LoanService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by gfj43958 on 2018/5/20.
 * time:15:00
 * author:GuoFangjun
 */
@Service
@Transactional(rollbackFor = Exception.class)
public class LoanServiceImpl implements LoanService {

    @Autowired
    LoanDao loanDao;
    public void addLoan(Loan loan) {
        loanDao.addLoan(loan);
    }

    public Loan findLoanById(Integer id) {
        return loanDao.findLoanById(id);
    }

    public List<Loan> findAllLoans() {
        return loanDao.findAllLoans();
    }

    public void delLoan(Integer id) {
        loanDao.delLoan(id);
    }

    public void updateLoan(Loan loan) {
        loanDao.updateLoan(loan);
    }

    public int getAllAccount() {
        return loanDao.getLoanNum();
    }

    public List<Loan> findLoanByPage(Integer pageStart) {
        return loanDao.findLoanByPage(pageStart);
    }


}
