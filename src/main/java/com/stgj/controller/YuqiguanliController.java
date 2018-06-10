package com.stgj.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by gfj43958 on 2018/6/9.
 * time:17:45
 * author:GuoFangjun
 */
@Controller
@RequestMapping("yuqiguanli")
public class YuqiguanliController {

    @RequestMapping("findAllYuqiguanliInfo")
    public String findAllYuqiInfo(){
        String result = "yuqiguanli";
        return result;
    }
}
