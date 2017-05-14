package com.stgj.entity;

import lombok.Data;

import java.sql.Timestamp;

/**
 * Created by acer on 2017/4/23.
 */
@Data
public class BaseEntity {
    private Timestamp createTime;       //记录的创建时间
    private Timestamp modifyTime;       //记录的修改时间
}
