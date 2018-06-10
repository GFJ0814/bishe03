package com.stgj.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by gfj43958 on 2018/6/10.
 * time:0:03
 * author:GuoFangjun
 */
@Controller
@RequestMapping("log")
public class LogManageController {

    @RequestMapping("getLogInfo")
    public String getLogInfo(){
        return "logManage";
    }

}
