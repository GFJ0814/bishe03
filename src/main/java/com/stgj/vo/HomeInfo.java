package com.stgj.vo;

import com.alibaba.fastjson.JSON;
import lombok.Data;

/**
 * Created by gfj43958 on 2018/5/19.
 * time:20:05
 * author:GuoFangjun
 * 家庭信息类，用于接收并组装前端传递过来的数据
 */
@Data
public class HomeInfo {
    private String fatherName;
    private String fatherPhone;
    private String fatherWorkAddress;
    private String fatherIdCarNo;
    private String motherName;
    private String motherPhone;
    private String matherWorkAddress;
    private String matherIdCardNo;
    private String faYearSalary;
    private String maYearSalary;
    private String homeAddress;
    private String homePhone;
    private String youbian;
    private String jingjilaiyuan;
    public String toString(){
        return  JSON.toJSONString(this);
    }
}
