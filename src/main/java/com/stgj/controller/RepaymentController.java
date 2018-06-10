package com.stgj.controller;

import com.stgj.service.RepaymentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by gfj43958 on 2018/6/6.
 * time:23:05
 * author:GuoFangjun
 */
@Controller
@RequestMapping("repayment")
public class RepaymentController {

    @Autowired
    RepaymentService repaymentService;

    @RequestMapping("findAllRepayment")
    public String findAllRepayment(ModelMap model){
        String result  ="huankuanguanli";
      //  repaymentService.findAllRepayments();
        return result;
    };



}
