package com.stgj.po;

import com.stgj.entity.Loan;
import lombok.Data;

/**
 * Created by gfj43958 on 2018/6/6.
 * time:23:45
 * author:GuoFangjun
 */
@Data
public class LoanPo extends Loan{
    private String  stuName;
    private String resultStatus;
    private String currentNode;
}
