package com.stgj.service;

import com.stgj.entity.Repayment;

import javax.jnlp.IntegrationService;
import java.util.List;

/**
 * Created by gfj43958 on 2018/6/6.
 * time:22:56
 * author:GuoFangjun
 */
public interface RepaymentService {

    List<Repayment> findAllRepayments();

    void addOneRepayment(Repayment repayment);

    void delOneRepaymentById(Integer id);

    void updateOneRepayment(Repayment repayment);

    Repayment findOneById(Integer id);


}
