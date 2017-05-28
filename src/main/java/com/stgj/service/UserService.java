package com.stgj.service;

import com.stgj.common.PageResult;
import com.stgj.entity.Student;
import com.stgj.entity.User;

import java.util.List;

/**
 * Created by acer on 2017/4/18.
 */
public interface UserService {

    User findOne(Integer id);

    List<User> findAll();


    int getUsersAccount();

    void delUser(Integer id);

    int updateUser(User user);

    int resisteruser(User user);

    int registerUser(User user,Student student);

    User findUserByName(String userName);

    List<User> findAllByPage(Integer pageStart,Integer pageEnd);


}
