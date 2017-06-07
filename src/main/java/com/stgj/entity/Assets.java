package com.stgj.entity;

import lombok.Data;

/**
 * Created by gfj43958 on 2017/6/6.
 * time:13:07
 * author:GuoFangjun
 */
@Data
public class Assets extends BaseEntity{
    private Integer assets_id;
    private String assets_name;
    private String assets_logo;
    private String location;
    private Integer status;
    private Integer amount;
    private Integer user_id;
    private String register_name;
}
