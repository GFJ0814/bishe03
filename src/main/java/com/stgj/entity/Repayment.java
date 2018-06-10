package com.stgj.entity;

import lombok.Data;

/**
 * Created by gfj43958 on 2018/5/27.
 * time:18:19
 * author:GuoFangjun
 */
@Data
public class Repayment  extends  BaseEntity{
    private Integer id;
    private Integer loan_id;
    private Integer stu_id;
    private Double principle;//本金
    private Double interest;//利息
    private Integer status;
}
