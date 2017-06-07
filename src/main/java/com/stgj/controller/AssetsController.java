package com.stgj.controller;

import com.stgj.common.PageResult;

import com.stgj.common.Result;
import com.stgj.common.Util;
import com.stgj.entity.Assets;
import com.stgj.entity.Student;
import com.stgj.entity.User;
import com.stgj.service.AssetsServcie;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by gfj43958 on 2017/6/6.
 * time:10:11
 * author:GuoFangjun
 */
@Controller
@RequestMapping("asset")
public class AssetsController extends BaseController {

    @Autowired
    AssetsServcie assetsServcie;

    HttpSession session;

    @RequestMapping("showAllAssets")
    public String showAllAssets(ModelMap model,HttpServletRequest request){
        int assetsNum = assetsServcie.getAllAssetsAccount();
        int pagesNum = assetsNum % 5 == 0 ? assetsNum / 5 : assetsNum / 5 + 1;
        String strPageNo = request.getParameter("pageNo");
        int pageNo = 1;
        if (strPageNo != null && (!("".equals(strPageNo)))) {
            pageNo = Integer.valueOf(strPageNo);
        }
        if (pageNo <= 0) {
            pageNo = 1;
        }
        if (pagesNum!=0&&pageNo > pagesNum) {
            pageNo = pagesNum;
        }
        //默认每页5条记录  pageNum=1 0 5 （1-1）*5  1*5
        PageResult<Assets> pageResult = new PageResult<Assets>();
        int pageStart = (pageNo-1)*10;
        List<Assets> assetses;
        String name = request.getParameter("name");
        if(name==null){
             assetses = assetsServcie.findAllByPage(pageStart);
        }else{
             assetses = assetsServcie.findByName(name,pageStart);

        }
        pageResult.setCurrentPage(pageNo); //存储当前页码
        pageResult.setList(assetses);//按页码查到的数据集合
        pageResult.setPageNum(pagesNum);
        pageResult.setOther(name);
        model.addAttribute("pageResult",pageResult);
        return "showAllAssets";
    }

    @RequestMapping("addAssets")
    public String addAssets(Assets assets, MultipartFile file, ModelMap model, HttpServletRequest request){
        if(!file.isEmpty()){
            Result<String> result = Util.uploadFile(file, request);
            if(!result.isSuccess()){
                model.addAttribute("errorMsg",result.getErrorMsg());
                return "error";
            }
            assets.setAssets_logo(result.getData());
        }
        session=request.getSession();
        User user =(User)session.getAttribute("user");
        Student student = (Student)session.getAttribute("stuInfo") ;
        String registerName = user.getUserName();
        if(student!=null&&(!("".equals(student.getStuName())))){
            registerName = student.getStuName();
        }
        assets.setRegister_name(registerName);
        if(assets.getAssets_id()!=null){
            assetsServcie.updateAssets(assets);
        }else{
            assetsServcie.addAssets(assets);
        }
        return showAllAssets(model, request);
    }

    @RequestMapping("delAsset")
    public String delAsset(@RequestParam("asset_id") Integer asset_id, ModelMap model,HttpServletRequest request){
         assetsServcie.delAssets(asset_id);
        return showAllAssets(model, request);
    }







}
