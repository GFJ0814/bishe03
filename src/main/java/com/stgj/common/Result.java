package com.stgj.common;

import lombok.Data;

/**
 * Created by acer on 2017/5/9.
 */
@Data
public class Result<T> {
    boolean success = false;
    T data;
    String errorMsg;
}
