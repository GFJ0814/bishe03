import com.stgj.entity.User;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Test;

import java.io.IOException;
import java.io.Reader;
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
}
