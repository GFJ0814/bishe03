package com.stgj.controller;

import com.stgj.common.Result;
import com.stgj.common.Util;
import com.stgj.entity.Student;
import com.stgj.entity.User;
import com.stgj.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by gfj43958 on 2017/5/9.
 * time:19:58
 * author:GuoFangjun
 */
@Controller
@RequestMapping("/stu")
public class StudentController {

    @Autowired
    StudentService studentService;

    Student student;

    /**
     *
     * @param model
     * @param request
     * @return
     */
    @RequestMapping("findOneStuByUserName")
    public String findOneStuByUserName( ModelMap model,HttpServletRequest request) {
        User user = (User)request.getSession().getAttribute("user");
        if(user==null){
            return "index";
        }
         student=studentService.findByUserName(user.getUserName());
         model.addAttribute("student",student);
         request.getSession().setAttribute("stuInfo",student);
         return "showOneStuInfo";
    }


    @RequestMapping("addOrUpdateStuInfo")
    public String addOrUpdateStuInfo(MultipartFile file, Student student1, HttpServletRequest request,ModelMap model) {
        if(file!=null&&(!file.isEmpty())){
            Result<String> result = Util.uploadFile(file, request);
            if(!result.isSuccess()){
                model.addAttribute("errorMsg",result.getErrorMsg());
                return "error";
            }
            student1.setStuPhoto(result.getData());
        }
        User user=(User)request.getSession().getAttribute("user");
        student = studentService.findByUserName(user.getUserName());
        if (student== null) { //普通用户新增信息
            student1.setUserName(user.getUserName());
            studentService.saveStuInfo(student1);
        }else{//社团人员完善信息
            student1.setStuId(student.getStuId());
            studentService.updateStuInfo(student1);
        }
        return findOneStuByUserName(model,request);
    }

    /**
     * 组合条件查询学生信息
     * @return
     */
    @RequestMapping("findAllStudents")
    public String findAllStudents() {

        return "showAllUsers";
    }
}
