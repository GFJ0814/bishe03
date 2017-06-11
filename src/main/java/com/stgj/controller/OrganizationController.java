package com.stgj.controller;

import com.stgj.common.Result;
import com.stgj.common.Util;
import com.stgj.entity.Organization;
import com.stgj.service.OrganizationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.util.List;

/**
 * Created by acer on 2017/5/7.
 */
@Controller
@RequestMapping("organization")
public class OrganizationController {

    @Autowired
    private OrganizationService organizationService;

    @RequestMapping(value = "/addOrgInfo",method = RequestMethod.POST)
    public String addOrgInfo(MultipartFile file, Organization organization, ModelMap model, HttpServletRequest request){

            //如果上传文件不为空，则处理上传文件，保存文件路径到数据库
            if(!file.isEmpty()) {
                Result<String> result =Util.uploadFile(file,request);
                if(!result.isSuccess()) {
                    model.addAttribute("errorMsg",result.getErrorMsg());
                    return "error";
                }
                organization.setOrgLogo(result.getData());
            }
        //如果文件为空，判断此时是修改还是新增，调用对应方法
        if(organization.getOrgId()==null) {
                organizationService.addOrgInfo(organization);
        } else {
                organizationService.updateOrgInfo(organization);
        }
        return findAllOrgs(model);
    }

    @RequestMapping("findAllOrgs")
    public String findAllOrgs(ModelMap model){
        List<Organization> organizationList =organizationService.findAll();
        model.addAttribute("orgList",organizationList);
        return "showAllOrganizations";
    }

    @RequestMapping("/delOrgInfoById")
    public String delOrgInfoById(@RequestParam("orgId") Integer orgId,ModelMap model,HttpServletRequest request){
        try{
            Organization organization=organizationService.findOneByOrgId(orgId);
            if(organization.getOrgLogo()!=null){
                String logoPath=request.getServletContext().getRealPath("upload");
                String resourceName=organization.getOrgLogo().substring(organization.getOrgLogo().lastIndexOf('/'));
                File file = new File(logoPath+"/"+resourceName);
                if (!file.exists()){
                    throw new RuntimeException("文件不存在");
                }
                file.delete();
            }
            organizationService.delOrgInfo(orgId);
        }catch(Exception e){
            e.printStackTrace();
        }
        return findAllOrgs(model);
    }

    @RequestMapping("toUpdateOneByOrgId")
    public String updateOneByOrgId(@RequestParam("orgId") Integer orgId,ModelMap model){
        Organization organization=organizationService.findOneByOrgId(orgId);
        model.addAttribute("organization",organization);
        return "addOrganization";
    }

    @RequestMapping(value="doUpdateOneOrgInfo",method = RequestMethod.POST)
    public String doUpdateOneOrgInfo(@RequestParam("orgId") Integer orgId,MultipartFile file, Organization organization, ModelMap model, HttpServletRequest request) {
        organization.setOrgId(orgId);
        return addOrgInfo(file,organization,model,request);
    }


}
