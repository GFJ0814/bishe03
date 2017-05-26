package com.stgj.controller;

import com.stgj.entity.Student;
import com.stgj.entity.User;
import com.stgj.service.StudentService;
import com.stgj.service.UserService;
import org.apache.ibatis.annotations.Param;
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

    User user =null;
    HttpSession session= null;

   @RequestMapping("/findOne")
    public ModelAndView findOne(@RequestParam(value = "id") Integer id){
       ModelAndView mav = new ModelAndView("findOne");
       user = userService.findOne(id);
       mav.addObject("user", user);
       return mav;
   }

   @RequestMapping("/login")
   public String login(User user, ModelMap model, HttpServletRequest request){
       List<User> list= userService.findByUserNameAndPwd(user.getUserName(),user.getUserPwd());
       if(list!=null&&list.size()>0){
           user = list.get(0);
           session = request.getSession();
           session.setAttribute("user",user);
           model.addAttribute("user",user);
           if(user.getAccept().equals("1")){
              // return "managerAdminIndex";
              Student student=studentService.findByUserName(user.getUserName());
               model.addAttribute("student",student);
               request.getSession().setAttribute("stuInfo",student);
               return "showOneStuInfo";
           }
           return "fontIndex";
       }
       model.addAttribute("result","用户名或密码错误");
       return"../../index";
   }

   @RequestMapping("/register")
   public String register(@RequestParam("userName") String userName,
                          @RequestParam("pwd") String pwd,
                          @RequestParam("accept") String accept,
                          @RequestParam("stuName") String stuName,
                          @RequestParam("stuNum") String stuNum,
                          ModelMap model,HttpServletRequest request){
       user = new User();
       user.setUserName(userName);
       user.setUserPwd(pwd);
       user.setAccept(accept);
       if(accept.equals("1")){
           Student student = new Student();
           student.setStuName(stuName);
           student.setStuNum(stuNum);
           student.setUserName(userName);
           userService.registerUser(user,student);
       }
       if(accept.equals("0")){
           userService.resisteruser(user);
       }
       return login(user,model,request);
   }

   //查询所有用户
   @RequestMapping("findAllUsers")
   public String findAllUsers(){

       return null;
   }

   //注销当前用户
    @RequestMapping("logOut")
    public String logOut(HttpServletRequest request){
     //  request.getSession().setAttribute("user",null);
       request.getSession().invalidate();
       return "fontIndex";
    }





}
