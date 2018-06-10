package com.stgj.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by gfj43958 on 2018/6/9.
 * time:17:43
 * author:GuoFangjun
 */
@Controller
@RequestMapping("blacklist")
public class BlackListController {

    @RequestMapping("findAllBlacklist")
    public String findAllBlackList(){
        String  result = "blacklist";
        return result;
    }

}
