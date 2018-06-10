package com.stgj.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by gfj43958 on 2018/6/9.
 * time:23:14
 * author:GuoFangjun
 */
@Controller
@RequestMapping("tongji")
public class TongjiController {

    @RequestMapping("getAllTongjiData")
    public String getAllTongjiData(){
        String  result ="tongji";
        return result;
    }
}
