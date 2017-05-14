package com.stgj.service.impl;

import com.stgj.dao.StudentDao;
import com.stgj.dao.UserDao;
import com.stgj.entity.Student;
import com.stgj.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by acer on 2017/4/23.
 */
@Service
public class StudentServiceImpl  implements StudentService {

    @Autowired
    private StudentDao studentDao;


    public List<Student> findAllStudents() {
        return studentDao.findAllStus();
    }

    public Student findByStuId(Integer stuId) {
        return studentDao.findById(stuId);
    }


    public int updateStuInfo(Student student) {
        return studentDao.updateStudentInfo(student);
    }

    public int delStudent(Integer stuId) {
        return studentDao.delStudent(stuId);
    }

    public int saveStuInfo(Student student) {
        return studentDao.saveStuInfo(student);
    }

    public int getAllStudentsAccount() {
        return studentDao.getAllStusAccount();
    }

    public Student findByUserName(String userName) {
        return studentDao.findStuByUserName(userName);
    }
}
