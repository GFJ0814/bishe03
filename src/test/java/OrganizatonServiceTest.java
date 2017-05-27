import com.stgj.entity.Organization;
import com.stgj.service.OrganizationService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

/**
 * Created by acer on 2017/5/7.
 */
@ContextConfiguration(locations = {"classpath:spring-mybatis.xml"})
@RunWith(SpringJUnit4ClassRunner.class)
public class OrganizatonServiceTest {

    @Autowired
    OrganizationService organizationService;
  /*  @Test
    public void testAddOrgInfo(){
        Organization organization = new Organization();
        organization.setOrgAdmin("郭方军");
        organization.setOrgAdminTeacher("张彩琴");
        organization.setOrgDesciption("哎呦不错");
        organization.setOrgName("别管我");
        organization.setOrgPhone("356");
        organizationService.addOrgInfo(organization);

    }*/

    @Test
    public void testFindAllOrgs(){
        List<Organization> organizations = organizationService.findAll();
        for(Organization org:organizations){
            System.out.println(org.getOrgId()+"---"+org.getOrgAdminTeacher());
        }
    }
}
