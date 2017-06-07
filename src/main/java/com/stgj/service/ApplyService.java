package com.stgj.service;

import com.stgj.common.PageResult;
import com.stgj.entity.Apply;


import java.util.List;

/**
 * Created by gfj43958 on 2017/6/6.
 * time:20:09
 * author:GuoFangjun
 */

public interface ApplyService {

    List<Apply> findAllByPage(Integer pageStart);

    int getAllApplyAccount();

    void addApply(Apply apply);

    void delApply(Integer apply_id);

    void updateApply(Apply apply);

    PageResult<Apply> getPageResult(Integer pageNo);

}
