package com.stgj.controller;

import com.fasterxml.jackson.databind.util.JSONPObject;
import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.stgj.common.PageResult;
import com.stgj.common.RespResult;
import com.stgj.entity.Permission;
import com.stgj.service.PermissionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import sun.org.mozilla.javascript.internal.json.JsonParser;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import static sun.plugin2.util.PojoUtil.toJson;

/**
 * Created by gfj43958 on 2017/5/31.
 * time:15:47
 * author:GuoFangjun
 */
@Controller
@RequestMapping("/permission")
public class PermissionController extends BaseController{

    @Autowired
    PermissionService permissionService;

    Gson gson = new Gson();

    @RequestMapping("findAllPermissionsByPage")
    public String findAllPermissionByPage(ModelMap model, HttpServletRequest request){
        int permissionNum = permissionService.getAllPermissionsAccount();
        int pagesNum = permissionNum % 5 == 0 ? permissionNum / 5 : permissionNum / 5 + 1;
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
        PageResult<Permission> pageResult = new PageResult<Permission>();
        int pageStart = (pageNo-1)*5;
        List<Permission> permissions = permissionService.findAllPermissionsByPage(pageStart);
        List<Permission> permissionsParent = permissionService.findAllParentPermissions();

        pageResult.setOther(permissionsParent);
        pageResult.setCurrentPage(pageNo); //存储当前页码
        pageResult.setList(permissions);//按页码查到的数据集合
        pageResult.setPageNum(pagesNum);
        model.addAttribute("pageResult",pageResult);
        return "showAllPermissions";
    }

    @RequestMapping("delPermissionById")
    @ResponseBody
     public String delPermissionByPermissionId(@RequestParam("permissionId") String permissionId,ModelMap model,HttpServletRequest request){
        RespResult respResult = new RespResult();
        try{
            permissionService.delPermission(Integer.valueOf(permissionId));
            respResult.setSuccess(this.SUCCESS);
        }catch(Exception e){
            respResult.setSuccess(this.FAILURE);
            respResult.setMsg(e.getMessage());
        }
        return gson.toJson(respResult);
     }

    @RequestMapping("saveAndUpdatePermission")
    @ResponseBody
    public String saveAndUpdatePermission(Permission permission){
         RespResult respResult=new RespResult();
         try{
             if(permission.getPermissionId()==null){
                 permissionService.addPermission(permission);
             }else {
                 permissionService.updatePermission(permission);
             }
             List<Permission> permissions= permissionService.findAllPermissionsByPage(0);
             respResult.setSuccess(this.SUCCESS);
             respResult.setData(permissions);
         }catch(Exception e){
             respResult.setSuccess(this.FAILURE);
             respResult.setMsg(e.getMessage());
         }
         return gson.toJson(respResult);
    }

    //根据权限名称查询
    @RequestMapping("findByName")
    public String findByName(@RequestParam("permissionName") String permissionName){
        return null;
    }

    //test
    @RequestMapping("findAllParentPermissions")
    @ResponseBody
    public String findAllParentPermissions(){
        RespResult respResult = new RespResult();
       try{
           respResult.setData(permissionService.findAllParentPermissions());
           respResult.setSuccess(this.SUCCESS);
       }catch(Exception e){
           respResult.setSuccess(this.FAILURE);
           respResult.setMsg(e.getMessage());
       }
       String json = gson.toJson(respResult);
        return json;
    }






}
