package com.stgj.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by gfj43958 on 2017/6/6.
 * time:10:11
 * author:GuoFangjun
 */
@Controller
@RequestMapping("asset")
public class AssetsController {

    @RequestMapping("showAllAssets")
    public String showAllAssets(){
        return "showAllAssets";
    }


}
