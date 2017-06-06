package com.stgj.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by gfj43958 on 2017/6/6.
 * time:10:27
 * author:GuoFangjun
 */
@Controller
@RequestMapping("shenpi")
public class ShenPiController {

    @RequestMapping("findAllShenpi")
    public String findAllShenpi(){
        return "showAllShenpi";
    }
}
