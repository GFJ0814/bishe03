package com.stgj.dao;


import com.stgj.entity.Loan;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by gfj43958 on 2018/5/19.
 * time:22:57
 * author:GuoFangjun
 */
@Repository
public interface LoanDao {

   void addLoan(Loan loan);

   void delLoan(@Param("id") Integer id);

   void updateLoan(Loan loan);

   Loan findLoanById(@Param("id") Integer id);

   int  getLoanNum();

   List<Loan> getSomeLoan(Loan loan);

   List<Loan> findLoanByPage(@Param("pageStart") Integer pageStart);

   List<Loan> findAllLoans();




}
