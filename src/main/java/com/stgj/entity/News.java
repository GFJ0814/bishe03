package com.stgj.entity;

import lombok.Data;

/**
 * Created by gfj43958 on 2017/6/2.
 * time:16:53
 * author:GuoFangjun
 */
@Data
public class News extends BaseEntity {
    private Integer news_id;
    private String publisher;
    private String title;
    private String abArticle;
    private String article;
    private String text_type;
    private String status_info;
    private Integer status;
}
