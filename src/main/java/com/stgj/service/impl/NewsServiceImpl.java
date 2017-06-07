package com.stgj.service.impl;

import com.stgj.dao.NewsDao;
import com.stgj.entity.News;
import com.stgj.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by gfj43958 on 2017/6/2.
 * time:21:28
 * author:GuoFangjun
 */
@Service
@Transactional(rollbackFor = Exception.class)
public class NewsServiceImpl implements NewsService {

    @Autowired
    NewsDao newsDao;

    public void addNews(News news) {
         newsDao.addNews(news);
    }

    public void upadeNews(News news) {
        newsDao.updateNews(news);
    }

    public void delNews(Integer news_id) {
        newsDao.delNews(news_id);
    }

    public int getAllNewsAccount() {
        return newsDao.getAllNewsCount();
    }

    public List<News> findAllNewsByPage(Integer pageStart) {
        return newsDao.findAllNewsByPage(pageStart);
    }
}
