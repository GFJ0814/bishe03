package com.stgj.dao;

import com.stgj.entity.Student;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by acer on 2017/4/23.
 */
@Repository
public interface StudentDao {

    /**
     * 按照id查询  用于查看学生详细信息等
     * @param id
     * @return
     */
    Student findById(@Param("id") Integer id);


    /**
     * 查询所有学生
     * @return
     */
    List<Student> findAllStus();

    /**
     * 修改学生信息
     * @param student
     * @return
     */
    int updateStudentInfo(Student student);

    /**
     * 保存学生信息
     * @param student
     * @return
     */
    int saveStuInfo(Student student);

    /**
     * 删除学生信息
     * @param id
     * @return
     */
    int delStudent(@Param("id") Integer id);

    /**
     * 获取学生总个数
     */
    int getAllStusAccount();

    /**
     * 根据用户名查找学生信息
     * @param userName
     * @return
     */
    Student findStuByUserName(@Param("userName") String userName);




}
