package com.stgj.controller;

import com.stgj.common.PageResult;
import com.stgj.entity.Apply;
import com.stgj.service.ApplyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by gfj43958 on 2017/6/7.
 * time:9:37
 * author:GuoFangjun
 */
@Controller
@RequestMapping("apply")
public class ApplyController {

    @Autowired
    ApplyService applyService;

    @RequestMapping("showAllApplysByPage")
    public String showAllApplyBypage(ModelMap model, HttpServletRequest request){
        String strPageNo = request.getParameter("pageNo");
        int pageNo = 1;
        if (strPageNo != null && (!("".equals(strPageNo)))) {
            pageNo = Integer.valueOf(strPageNo);
        }
        if (pageNo <= 0) {
            pageNo = 1;
        }
        PageResult<Apply> pageResult =  applyService.getPageResult(pageNo);
        model.addAttribute("pageResult",pageResult);
        return "showAllShenqing";
    }

    @RequestMapping("addApply")
    public String  addApply(){
        return "";
    }

}
