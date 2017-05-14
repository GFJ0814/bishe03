package com.stgj.dao;

import com.stgj.entity.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by acer on 2017/4/18.
 */
@Repository
public interface UserDao {
    /**
     * 根据id查找单一用户
     * @param id
     * @return
     */
    User findById(@Param("id") Integer id);

    /**
     * 根据用户名和密码查找用户
     * @param userName
     * @param passWord
     * @return
     */
    List<User> findByUserNameAndPwd(@Param("userName") String userName,@Param("passWord") String passWord);

    /**
     * 查询所有用户
     * @return
     */
    List<User> findAll();

    /**
     * 注册用户
     * @param user
     * @return
     */
    int addUser(User user);

    /**
     * 修改用户信息
     * @param user
     * @return
     */
    int updateUser(User user);

    /**
     * 删除用户
     * @param id
     * @return
     */
    int delUser(@Param("id") Integer id);


    /**
     * 查询总条数
     */
    int getUsersCount();

    /**
     * 根据用户名查找用户
     * @param userName
     * @return
     */
    User findByUserName(@Param("userName") String userName);
















}
