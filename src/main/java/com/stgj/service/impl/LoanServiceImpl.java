package com.stgj.service.impl;

import com.stgj.common.Define;
import com.stgj.dao.LoanDao;
import com.stgj.entity.Loan;
import com.stgj.entity.Student;
import com.stgj.po.LoanPo;
import com.stgj.service.LoanService;
import com.stgj.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by gfj43958 on 2018/5/20.
 * time:15:00
 * author:GuoFangjun
 */
@Service
@Transactional(rollbackFor = Exception.class)
public class LoanServiceImpl implements LoanService {

    @Autowired
    LoanDao loanDao;

    @Autowired
    StudentService studentService;

    public void addLoan(Loan loan) {
        loanDao.addLoan(loan);
    }

    public Loan findLoanById(Integer id) {
        return loanDao.findLoanById(id);
    }

    public List<Loan> findAllLoans() {
        return loanDao.findAllLoans();
    }

    public void delLoan(Integer id) {
        loanDao.delLoan(id);
    }

    public void updateLoan(Loan loan) {
        loanDao.updateLoan(loan);
    }

    public int getAllAccount() {
        return loanDao.getLoanNum();
    }

    public List<Loan> findLoanByPage(Integer pageStart) {
        return loanDao.findLoanByPage(pageStart);
    }

    public List<LoanPo> getAllLoanInfoByPage(Integer pageStart){
        List<LoanPo> loanPos = new ArrayList<LoanPo>();
        String  name = "";
        String resultStatus="待审核";
        String currentNode="学生审核";
        List<Loan> loans =findLoanByPage(pageStart);
        for (Loan loan:loans) {
            LoanPo loanPo = new LoanPo();
            if(loan.getStu_id()!=null){
                name =studentService.findByStuId(loan.getStu_id()).getStuName();
            }
            switch (loan.getResult_status()){
                case Define.shenpitongguo:resultStatus="审批通过";break;
                case Define.shenpijujue:resultStatus="审批拒绝";break;
                case Define.shenpizhong:resultStatus="审批中";break;
            }
            switch(loan.getCurrent_node()){
                case Define.fudaoyuan_shenpi:currentNode="辅导员审批";break;
                case Define.yuanxi_shenpi:currentNode="院系审批";break;
                case Define.daikuanke_shenpi:currentNode="贷款管理科审批";break;
            }

            loanPo.setStuName(name);
            loanPo.setResultStatus(resultStatus);
            loanPo.setCurrentNode(currentNode);
            loanPo.setLoan_amount(loan.getLoan_amount());
            loanPo.setLoan_term(loan.getLoan_term());
            loanPo.setCreateTime(loan.getCreateTime());
            loanPo.setLoan_reason(loan.getLoan_reason());
            loanPo.setId(loan.getId());
            loanPos.add(loanPo);
        }
        return loanPos;
    }


}
