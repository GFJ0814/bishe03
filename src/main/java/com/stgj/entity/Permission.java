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
    private Integer permissionParentId;//父级权限编号
    private String  permissionParentName;//父级权限名称
    private String permissionName; //权限名称
    private String permissionLink; //权限链接

}
