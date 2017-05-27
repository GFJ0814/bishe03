import com.stgj.entity.User;
import com.stgj.service.UserService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.AbstractJUnit4SpringContextTests;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.sql.Date;
import java.sql.Timestamp;
import java.util.List;

/**
 * Created by acer on 2017/4/21.
 */
@ContextConfiguration(locations = {"classpath:spring-mybatis.xml"})
@RunWith(SpringJUnit4ClassRunner.class)
public class UserServiceTest extends AbstractJUnit4SpringContextTests{

    @Autowired
    private UserService userService;

    User user;

    /**
     * 测试：根据id查找单一用户
     */
    @Test
    public  void printOneUser(){
        user = userService.findOne(1);
        System.out.println(user.getUserId()+"---"+user.getUserName());
    }

    @Test
    public void printAllUser(){
        List<User> userList = userService.findAll();
        for (User u:userList){
            System.out.println(u.getUserId()+"----"+u.getUserName());
        }
    }

    /**
     *测试:登陆方法
     */
   /* @Test
    public void getUserByUserNameAndPwd(){
        String userName="zhangsan";
        String passWord="or 1=1";
        List<User> userList = userService.findByUserNameAndPwd(userName,passWord);
        if(userList!=null && userList.size()>0){
            System.out.println(userList.get(0).getUserName());
        }else{
            System.out.println("用户名或密码错误");
        }

    }*/

    /**
     * 测试:注册用户
     */
    @Test
    public void testAddUser(){
        User user = new User();
        user.setUserName("刘备");
        user.setUserPwd("123456l");
        int  result = userService.resisteruser(user);
        if(result>0){
            System.out.println("注册用户成功");
            return;
        }
        System.out.println("注册失败");
    }

    @Test
    public  void testDelUser(){
         userService.delUser(1);
    }

    @Test
    public void testUpdateUser(){
        User user = userService.findOne(5);
        System.out.println("修改前,这个用户叫："+user.getUserName());
        //user.setUserName("王五");
        user.setUserPwd("zhu001");
        //user.setModifyTime(new Date(new java.util.Date().getTime()));
        userService.updateUser(user);
        System.out.println("修改后，这个用户叫："+userService.findOne(5).getUserName());
    }

    @Test
    public void testGetUsersAccount(){
        System.out.println("这里一共有"+userService.getUsersAccount()+"个用户");
        List<User> list = userService.findAll();
        int i=1;
        for(User u:list){
            System.out.println("第"+i+"个用户叫:"+u.getUserId()+"---"+u.getUserName()+"----"+u.getCreateTime()+"----"+u.getModifyTime());
            i++;
        }
    }

}
