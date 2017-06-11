package com.stgj.controller;

import com.stgj.common.PageResult;
import com.stgj.common.Result;
import com.stgj.common.Util;
import com.stgj.entity.News;
import com.stgj.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;

import java.util.List;


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
    public String findAllNewsByPage(HttpServletRequest request, ModelMap model) {
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
        if (pagesNum != 0 && pageNo > pagesNum) {
            pageNo = pagesNum;
        }
        //默认每页5条记录  pageNum=1 0 5 （1-1）*5  1*5
        PageResult<News> pageResult = new PageResult<News>();
        int pageStart = (pageNo - 1) * 5;
        List<News> NewsList = newsService.findAllNewsByPage(pageStart);


        pageResult.setCurrentPage(pageNo); //存储当前页码
        pageResult.setList(NewsList);//按页码查到的数据集合
        pageResult.setPageNum(pagesNum);
        model.addAttribute("pageResult", pageResult);
        return "newsManager";
    }


    @RequestMapping("addNews")
    public String addNews(News news, MultipartFile file, HttpServletRequest request, ModelMap model) {

        if (file!= null) {
            Result<String> result = Util.uploadFile(file, request);
            if (!result.isSuccess()) {
                model.addAttribute("errorMsg", result.getErrorMsg());
                return "error";
            }
            news.setNews_photo(result.getData());
        }
        if(news.getNews_id()==null){
            newsService.addNews(news);
        }else{
            newsService.upadeNews(news);
        }

        //model.addAttribute("news",news);
        return findAllNewsByPage(request, model);
    }

    @RequestMapping("findOneByNewsId")
    public String findOneByNewsId(ModelMap model, HttpServletRequest request) {
        Integer newsId = Integer.parseInt(request.getParameter("news_id"));
        News news = newsService.findOneByNewsId(newsId);
        model.addAttribute("news",news);
        return "newsDetails";
     }

     @RequestMapping("delOneNewsByNewsId")
    public String delOneNewsByNewsId(ModelMap model,HttpServletRequest request){
          Integer newsId = Integer.parseInt(request.getParameter("news_id"));
          newsService.delNews(newsId);
          return findAllNewsByPage(request, model);
     }

     @RequestMapping("toUpdateOneNewsByNewsId")
     public String toUpdateOneNewsByNewsId(ModelMap model,HttpServletRequest request){
         Integer newsId = Integer.parseInt(request.getParameter("news_id"));
         News news = newsService.findOneByNewsId(newsId);
         model.addAttribute("news",news);
        return "newsPublish";
     }

     @RequestMapping("updateCheck")
    public String updateCheck(HttpServletRequest request,ModelMap model){

         return findAllNewsByPage(request,model);
     }

}
