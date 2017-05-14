package com.stgj.entity;


import lombok.Data;

import java.sql.Timestamp;


/**
 * Created by acer on 2017/4/16.
 * 对应user表
 */
@Data
public class User extends BaseEntity{
    private Integer userId;     //用户id
    private String userName;    //用户名
    private String userPwd;     //用户密码
    private String accept;     //标识该用户是否加入社团

}
