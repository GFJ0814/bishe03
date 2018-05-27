import com.alibaba.fastjson.JSON;
import com.stgj.entity.Loan;
import com.stgj.entity.User;
import com.stgj.service.LoanService;
import com.stgj.service.impl.LoanServiceImpl;
import com.stgj.vo.HomeInfo;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Test;

import java.io.IOException;
import java.io.Reader;
import java.io.Serializable;
import java.util.List;

/**
 * Created by acer on 2017/4/16.
 */
public class EntityTest {

    @Test
    public void test(){
       String resource="conf.xml";
        Reader reader = null;
        try{
            reader = Resources.getResourceAsReader(resource);
        }catch(IOException e){
            e.printStackTrace();
        }
        SqlSessionFactory sqlMapper = new SqlSessionFactoryBuilder().build(reader);
        SqlSession session=sqlMapper.openSession();
        try {
           // User user = session.selectOne("findById",1);
            List<User> list =session.selectList("finAll");
            for(User u:list){
                System.out.println(u.getUserId()+"---"+u.getUserPwd()+"---"+u.getCreateTime()+"---"+u.getModifyTime());
            }
            session.commit();
           // System.out.println(user.getUserName()+"---"+user.getUserPwd());
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            session.close();
        }
    }

    @Test
    public void testHomeInfo(){

        //1.对象序列化成json字符串方便存储
        HomeInfo home = new HomeInfo();
        home.setFatherName("张三");
        home.setFatherPhone("34456789");
        home.setFatherWorkAddress("海淀南路19号");
        String result = home.toString();
        System.out.println(home.toString());
        HomeInfo home1 = JSON.parseObject(result,HomeInfo.class);
        System.out.println(home1.getFatherName());
    }



    public void testXuexi(){
        //1.序列化对象存储对象利用,，写入mongoDB

        //2.模拟登陆获取教务处成绩

        //3.消息队列实现异步发邮件

        //4.redis存储session

        //5.shiro框架做安全权限

        //6.日志分析，动态监控
    }
}
