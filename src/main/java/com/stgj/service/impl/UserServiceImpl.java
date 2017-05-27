package com.stgj.service.impl;

import com.stgj.dao.StudentDao;
import com.stgj.dao.UserDao;
import com.stgj.entity.Student;
import com.stgj.entity.User;
import com.stgj.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by acer on 2017/4/18.
 */
@Service
@Transactional(rollbackFor = Exception.class)
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;
    @Autowired
    private StudentDao studentDao;
    /**
     *
     * @param id
     * @return
     */

    public User findOne(Integer id) {
        return userDao.findById(id);
    }

    public List<User> findAll() {
        return userDao.findAll();
    }



    public int getUsersAccount() {
        return userDao.getUsersCount();
    }

    public UserServiceImpl() {
        super();
    }

    public void delUser(Integer id) {
        userDao.delUser(id);
    }

    public int updateUser(User user) {
        return userDao.updateUser(user);
    }

    public int resisteruser(User user) {
        return userDao.addUser(user);
    }

    public int registerUser(User user, Student student) {
        userDao.addUser(user);
        if(user.getAccept().equals("1")){
            studentDao.saveStuInfo(student);
        }
        return 1;
    }

    public User findUserByName(String userName) {
        return userDao.findByUserName(userName);
    }
}
