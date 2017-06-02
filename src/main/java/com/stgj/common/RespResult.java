package com.stgj.common;

import lombok.Data;

/**
 * Created by gfj43958 on 2017/5/31.
 * time:15:50
 * author:GuoFangjun
 */
@Data
public class RespResult {
    private boolean success;
    private String msg;
    private Object data;

    public RespResult(){}
    public RespResult(boolean success){
        this.success = success;
    }
    public RespResult(boolean success, String msg){
        this.success = success;
        this.msg = msg;
    }
    public RespResult(boolean success, String msg, Object data){
        this.success = success;
        this.msg = msg;
        this.data = data;
    }
}
