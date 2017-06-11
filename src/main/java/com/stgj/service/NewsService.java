package com.stgj.service;

import com.stgj.entity.News;

import java.util.List;

/**
 * Created by gfj43958 on 2017/6/2.
 * time:21:25
 * author:GuoFangjun
 */
public interface NewsService {

    //新增资讯
    void addNews(News news);
    //修改资讯
    void upadeNews(News news);
    //删除资讯
    void delNews(Integer news_id);
    //查询资讯总记录数
    int getAllNewsAccount();
    //分页查询所有数据
    List<News> findAllNewsByPage(Integer pageStart);
    //根据id查询单条资讯
    News findOneByNewsId(Integer newsId);
}
