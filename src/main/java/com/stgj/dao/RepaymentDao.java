package com.stgj.dao;

import com.stgj.entity.Repayment;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by gfj43958 on 2018/5/27.
 * time:18:23
 * author:GuoFangjun
 */
@Repository
public interface RepaymentDao {

    Repayment findOneRepayById(@Param("id") Integer id);

    List<Repayment> findAllRepayments();

    int getRepaymentsAccount();

    List<Repayment> findSomeByPage(@Param("pageStart") Integer pageStart);

    void addOneRepayment(Repayment repayment);

    void delOneRepaymentById(@Param("id") Integer id);

    void updateOneRepayment(Repayment repayment);
}
