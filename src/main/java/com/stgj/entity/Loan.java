package com.stgj.entity;

import lombok.Data;
import org.junit.experimental.theories.DataPoints;

/**
 * Created by gfj43958 on 2018/5/15.
 * time:22:53
 * author:GuoFangjun
 */
@Data
public class Loan extends BaseEntity{
    private Integer id;
    private Integer stu_id;
    private Integer user_id;
    private Integer loan_amount;
    private Integer loan_term;
    private Integer result_status;
    private String  loan_reason;
    private String process_status;
    private Integer current_node;
    private String note;


}
