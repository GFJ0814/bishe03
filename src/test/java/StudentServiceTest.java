import com.stgj.entity.Student;
import com.stgj.service.StudentService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 * Created by acer on 2017/5/6.
 */
@ContextConfiguration(locations = {"classpath:spring-mybatis.xml"})
@RunWith(SpringJUnit4ClassRunner.class)
public class StudentServiceTest {

    @Autowired
     private  StudentService studentService;

    @Test
    public void testAddStudent(){
        Student student = new Student();
        student.setStuName("曹操");
        student.setStuNum("20134497");
        studentService.saveStuInfo(student);
    }


}
