import com.stgj.entity.Apply;
import com.stgj.service.ApplyService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 * Created by gfj43958 on 2017/6/7.
 * time:10:07
 * author:GuoFangjun
 */
@ContextConfiguration(locations = {"classpath:spring-mybatis.xml"})
@RunWith(SpringJUnit4ClassRunner.class)
public class ApplyServiceTest {

    @Autowired
    ApplyService applyService;

    //测试新增申请信息
    @Test
    public void testAdd(){
        Apply apply  = new Apply();
        apply.setApply_type("评优加分");
        apply.setApply_more("负责团队建设");
        applyService.addApply(apply);
    }
}
