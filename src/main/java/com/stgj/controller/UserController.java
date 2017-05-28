package com.stgj.controller;

import com.stgj.common.PageResult;
import com.stgj.entity.Student;
import com.stgj.entity.User;
import com.stgj.service.StudentService;
import com.stgj.service.UserService;
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
 * Created by acer on 2017/4/19.
 */
@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;
    @Autowired
    private StudentService studentService;

    User user = null;
    HttpSession session = null;

    @RequestMapping("/findOne")
    public ModelAndView findOne(@RequestParam(value = "id") Integer id) {
        ModelAndView mav = new ModelAndView("findOne");
        user = userService.findOne(id);
        mav.addObject("user", user);
        return mav;
    }

    @RequestMapping("/login")
    public String login(User user1, ModelMap model, HttpServletRequest request) {
        user = userService.findUserByName(user1.getUserName());
        if (user != null && user1.getUserPwd().equals(user.getUserPwd())) {
            session = request.getSession();
            session.setAttribute("user", user);
            model.addAttribute("user", user);
            if (user.getAccept().equals("1")) {
                Student student = studentService.findByUserName(user.getUserName());
                model.addAttribute("student", student);
                request.getSession().setAttribute("stuInfo", student);
                return "showOneStuInfo";
            }
            return "fontIndex";
        }
        model.addAttribute("result", "用户名或密码错误");
        return "index";
    }

    @RequestMapping("/register")
    public String register(@RequestParam("userName") String userName,
                           @RequestParam("pwd") String pwd,
                           @RequestParam("accept") String accept,
                           @RequestParam("stuName") String stuName,
                           @RequestParam("stuNum") String stuNum,
                           ModelMap model, HttpServletRequest request) {
        user = new User();
        user.setUserName(userName);
        user.setUserPwd(pwd);
        user.setAccept(accept);
        if (accept.equals("1")) {
            Student student = new Student();
            student.setStuName(stuName);
            student.setStuNum(stuNum);
            student.setUserName(userName);
            userService.registerUser(user, student);
        }
        if (accept.equals("0")) {
            userService.resisteruser(user);
        }
        return login(user, model, request);
    }


    //注销当前用户
    @RequestMapping("logOut")
    public String logOut(HttpServletRequest request) {
        request.getSession().setAttribute("user", null);
        request.getSession().invalidate();
        return "fontIndex";
    }

    //修改密码
    @RequestMapping("updatePassword")
    public String updatePassword(@RequestParam("newPasswordPre") String newPasswordPre,
                                 @RequestParam("newPassword") String newPassword,
                                 HttpServletRequest request,
                                 ModelMap model) {
        User user = (User) request.getSession().getAttribute("user");
        String errorMsg = "两次输入的密码不对，修改密码失败";
        model.addAttribute("errorMsg", errorMsg);
        if (newPassword == null || newPasswordPre == null) {
            return "error";
        }
        if (newPassword != null && (!newPassword.equals(newPasswordPre))) {
            return "error";
        }
        user.setUserPwd(newPasswordPre);
        userService.updateUser(user);
        return "index";
    }

    @RequestMapping("findAllUsers")
    public String findAllUsers(ModelMap model, HttpServletRequest request) {
        int usersNum = userService.getUsersAccount();
        int pagesNum = usersNum % 5 == 0 ? usersNum / 5 : usersNum / 5 + 1; //求总共页数
        String strPageNo = request.getParameter("pageNo");
        int pageNo=1;
        if (strPageNo!= null && (!("".equals(strPageNo)))) {
            pageNo = Integer.valueOf(strPageNo);
        }
        if(pageNo<=0){
            pageNo=1;
        }
        if (pageNo > pagesNum) {
            pageNo = pagesNum;
        }
        //默认每页5条记录  pageNum=1 1 5 （1-1）*5+1  1*5
        PageResult<User> pageResult = new PageResult<User>();

        int pageStart = (pageNo - 1) * 5 ;
        int pageEnd = (pageNo) * 5;
        List<User> users = userService.findAllByPage(pageStart, pageEnd);

        pageResult.setCurrentPage(pageNo); //存储当前页码
        pageResult.setList(users);//按页码查到的数据集合
        pageResult.setPageNum(pagesNum);

        model.addAttribute("pageResult", pageResult);
        return "showAllUsers";
    }


}
