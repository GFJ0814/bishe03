package com.stgj.controller;

import com.stgj.common.PageResult;
import com.stgj.common.Result;
import com.stgj.common.Util;
import com.stgj.entity.News;
import com.stgj.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/**
 * Created by gfj43958 on 2017/6/2.
 * time:21:34
 * author:GuoFangjun
 */
@Controller
@RequestMapping("news")
public class NewsController {

    @Autowired
    NewsService newsService;

    @RequestMapping("findAllNewsByPage")
    public String findAllNewsByPage(HttpServletRequest request, ModelMap model){
        int permissionNum = newsService.getAllNewsAccount();
        int pagesNum = permissionNum % 5 == 0 ? permissionNum / 5 : permissionNum / 5 + 1;
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
        PageResult<News> pageResult = new PageResult<News>();
        int pageStart = (pageNo-1)*5;
        List<News> NewsList = newsService.findAllNewsByPage(pageStart);


        pageResult.setCurrentPage(pageNo); //存储当前页码
        pageResult.setList(NewsList);//按页码查到的数据集合
        pageResult.setPageNum(pagesNum);
        model.addAttribute("pageResult",pageResult);
        return "newsManager";
    }

    @RequestMapping("uploadImg")
    @ResponseBody
    public Object upload(MultipartFile file, HttpServletRequest request) {
      Result<String> result = Util.uploadFile(file,request);
      return result;
    }


}
