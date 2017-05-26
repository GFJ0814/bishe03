package com.stgj.entity;

import lombok.Data;

/**
 * Created by acer on 2017/4/23.
 * 对应着student表
 */
@Data
public class Student extends BaseEntity{
    private Integer stuId;              //学生表id
    private String userName;             //对应用户id
    private String stuNum;              //学号
    private String stuName;             //姓名
    private Integer stuAge;             //年龄
    private String stuSex;              //性别
    private String stuProfession;       //专业
    private String stuCollege;          //学院
    private String stuAddress;           //籍贯
    private String stuQQ;               //QQ号
    private String stuEmail;            //邮箱
    private String stuPhoto;            //照片
    private String stuHobbies;          //爱好
    private String stuRecommend;        //个人评价
    private String stuPhone;            //电话号



}
