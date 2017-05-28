package com.stgj.entity;

import lombok.Data;

/**
 * Created by gfj43958 on 2017/5/28.
 * time:20:08
 * author:GuoFangjun
 */
@Data
public class Permission extends BaseEntity {
    private Integer permissionId;  //权限id
    private String permissionName; //权限名称
    private String permissionLink; //权限链接
}
