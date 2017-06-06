package com.stgj.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by gfj43958 on 2017/6/6.
 * time:10:22
 * author:GuoFangjun
 */
@Controller
@RequestMapping("shenqing")
public class ShenqingController {

    @RequestMapping("showAllShenqings")
    public String showAllShenqings(){
        return "showAllShenqing";
    }
}
