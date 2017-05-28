package com.stgj.controller;

import com.stgj.common.PageResult;
import com.stgj.entity.Role;
import com.stgj.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by gfj43958 on 2017/5/28.
 * time:18:32
 * author:GuoFangjun
 */
@Controller
@RequestMapping("/role")
public class RoleController {

    @Autowired
    RoleService roleService;

    @RequestMapping("findAllRoles")
    public String findAllRoles(ModelMap model, HttpServletRequest request) {
        //求出所有页数:
        int rolesNum = roleService.getRolesAccount();
        int pagesNum = rolesNum % 5 == 0 ? rolesNum / 5 : rolesNum / 5 + 1;
        String strPageNo = request.getParameter("pageNo");
        int pageNo = 1;
        if (strPageNo != null && (!("".equals(strPageNo)))) {
            pageNo = Integer.valueOf(strPageNo);
        }
        if (pageNo <= 0) {
            pageNo = 1;
        }
        if (pageNo > pagesNum) {
            pageNo = pagesNum;
        }
        //默认每页5条记录  pageNum=1 0 5 （1-1）*5  1*5
        PageResult<Role> pageResult = new PageResult<Role>();
        int pageStart = (pageNo-1)*5;
        List<Role> roles = roleService.findAllRolesByPage(pageStart);
        pageResult.setCurrentPage(pageNo); //存储当前页码
        pageResult.setList(roles);//按页码查到的数据集合
        pageResult.setPageNum(pagesNum);

        model.addAttribute("pageResult", pageResult);

        return "showAllRoles";
    }
}
