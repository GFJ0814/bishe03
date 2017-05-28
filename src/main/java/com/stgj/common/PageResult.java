package com.stgj.common;

import lombok.Data;

import java.util.List;

/**
 * Created by gfj43958 on 2017/5/28.
 * time:14:51
 * author:GuoFangjun
 */
@Data
public class PageResult<T> {
    List<T> list;
    Integer pageNum;
    Integer currentPage;
}
