package com.stgj.service;

import com.stgj.entity.Student;

import java.util.List;

/**
 * Created by acer on 2017/4/23.
 */
public interface StudentService {

    List<Student> findAllStudents();  //查找所有学生信息

    Student findByStuId(Integer stuId); //根据主键查询所有学生信息

    Student findByUserName(String userName); //查找该用户对应的个人信息

    int updateStuInfo(Student student);   //修改个人信息

    int delStudent(Integer stuId);        //根据主键删除

    int saveStuInfo(Student student);    //新增学生信息

    int getAllStudentsAccount();        //求学生总数




}
