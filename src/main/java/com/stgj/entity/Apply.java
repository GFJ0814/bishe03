package com.stgj.entity;

import lombok.Data;

/**
 * Created by gfj43958 on 2017/6/6.
 * time:19:45
 * author:GuoFangjun
 */
@Data
public class Apply extends BaseEntity{
    private Integer apply_id;
    private String  apply_type;
    private String apply_more;
    private Integer applyer_id;
    private String applyer_name;
    private Integer check_status;
    private String check_info;
}
