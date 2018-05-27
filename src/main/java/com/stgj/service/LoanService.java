package com.stgj.service;

import com.stgj.entity.Loan;
import sun.plugin.javascript.navig.LinkArray;

import java.util.List;

/**
 * Created by gfj43958 on 2018/5/15.
 * time:22:52
 * author:GuoFangjun
 */
public interface LoanService {

    void addLoan(Loan loan);

    Loan findLoanById(Integer id);


    void delLoan(Integer id);

    void updateLoan(Loan loan);

    int getAllAccount();

    List<Loan> findLoanByPage(Integer pageStart);

    List<Loan> findAllLoans();



}
