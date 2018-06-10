package com.stgj.controller;

import com.stgj.common.PageResult;
import com.stgj.entity.Apply;
import com.stgj.entity.Loan;
import com.stgj.entity.Student;
import com.stgj.entity.User;
import com.stgj.po.LoanPo;
import com.stgj.service.ApplyService;
import com.stgj.service.LoanService;
import com.stgj.service.StudentService;
import com.stgj.vo.HomeInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by gfj43958 on 2018/6/4.
 * time:23:16
 * author:GuoFangjun
 */
@Controller
@RequestMapping("loan")
public class LoanController {

    @Autowired
    LoanService loanService;

    @Autowired
    StudentService studentService;

    @Autowired
    ApplyService applyService;

    @RequestMapping("findAllLoansByPage")
    public String findAllLoansByPage(ModelMap model, HttpServletRequest request) {
        String result = "daikuanguanli";
        //获取页码
        int pageNo = request.getParameter("pageNo") == null ? 1 : Integer.parseInt(request.getParameter("pageNo"));
        //获取总记录数：
        int accounts = loanService.getAllAccount();
        int pageSize = 5;
        int pageNum = accounts/pageSize==0?accounts/pageSize:accounts/pageSize+1;
        int pagestart = (pageNo-1)*pageSize;
        List<LoanPo> loans = loanService.getAllLoanInfoByPage(pagestart);
        PageResult<LoanPo> pageResult = new PageResult<LoanPo>();
        pageResult.setList(loans);
        pageResult.setPageNum(pageNum);
        pageResult.setCurrentPage(pageNo);
        model.addAttribute("pageResult",pageResult);
        return result;
    }

    @RequestMapping("addLoan")
    public String addLoan(HomeInfo homeInfo, @RequestParam("xuefei") String xuefei,
                          @RequestParam("zhusufei") String zhusufei,
                          @RequestParam("loan_term") String  loan_term,
                          @RequestParam("loan_reason") String loan_reason,
                          @RequestParam("bankcardNo") String bankCardNo,
                          HttpServletRequest request,ModelMap model){
        //获取当前用户信息
       HttpSession session = request.getSession();
       User user = (User)session.getAttribute("user");
       Integer userId = user.getUserId();
       Integer stuId = studentService.findByUserName(user.getUserName()).getStuId();
        //获取家庭信息
        String fatherName = homeInfo.getFatherName();
        System.out.println("得到的父亲的姓名是：----》"+fatherName);
        String fathercardNo =  homeInfo.getFatherIdCarNo();
        Student stu = new Student();
        stu.setHomeInfo(homeInfo.toString());
        stu.setBankcardNo(bankCardNo);
        stu.setStuId(stuId);

        //获取贷款信息
        Loan loan = new Loan();
        if(xuefei==null||"".equals(xuefei)){
            xuefei = "0";
        }
        if(zhusufei==null||"".equals(zhusufei)){
            zhusufei="0";
        }
        Integer loan_amount1 = Integer.parseInt(xuefei)+Integer.parseInt(zhusufei);
        loan.setLoan_amount(loan_amount1);
        if(loan_term==null||"".equals(loan_term)){
            loan_term="1";
        }
       Integer loan_term1 =Integer.parseInt(loan_term);
        loan.setLoan_term(loan_term1);
        loan.setLoan_reason(loan_reason);
        loan.setStu_id(stuId);
        loan.setUser_id(userId);
        //保存家庭信息以及银行卡号
        studentService.updateStuInfo(stu);
        //添加贷款申请
        loanService.addLoan(loan);
        //添加审批任务
        Apply apply  = new Apply();
        apply.setApply_type("贷款申请");
        apply.setApply_more("贷款"+loan_amount1+"元-"+loan_term+"年");
        applyService.addApply(apply);
        return findAllLoansByPage(model,request);
    }

    @RequestMapping("updateBankcard")
    public String updateBankcardInfo(@RequestParam("bankcardNo") String bankcardNo,@RequestParam("stuId") String stuId){
        Integer stuId1 = Integer.parseInt(stuId);
        Student student = new Student();
        student.setBankcardNo(bankcardNo);
        student.setStuId(stuId1);
        studentService.updateStuInfo(student);
        return "daikuanguanli";
    }

    @RequestMapping("viewLoan")
    public String viewLoan(@RequestParam("loanId") String loanId,ModelMap model){


        return "daikuanshenqing";
    }





}
