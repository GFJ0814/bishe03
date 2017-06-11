package com.stgj.dao;

import com.stgj.entity.News;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by gfj43958 on 2017/6/2.
 * time:17:25
 * author:GuoFangjun
 */
@Repository
public interface NewsDao {

    void addNews(News news);

    void updateNews(News news);

    void delNews(@Param("newsId") Integer newsId);

    int getAllNewsCount();

    List<News>  findAllNewsByPage(@Param("pageStart") Integer pageStart);

    News findOneByNewsId(@Param("newsId") Integer newsId);


}
