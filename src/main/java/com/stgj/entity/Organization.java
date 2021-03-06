package com.stgj.entity;

import lombok.Data;

/**
 * Created by acer on 2017/4/23.
 */
@Data
public class Organization extends BaseEntity{
    private Integer orgId;          //组织id
    private String orgType;         //类型
    private String orgSimpleName;   //组织简称
    private String orgFullName;     //组织全称
    private String orgAdminNum;        //组织管理者学号
    private String orgAdmin;            //组织管理者名字
    private String orgAdminTeacher; //指导老师
    private Integer orgSuperId;     //所属组织编号
    private String orgPhone;        //联系电话
    private String orgLogo;         //组织logo
    private String orgDesciption;   //组织简介
    private String orgLocation;     //组织办公地点
}
