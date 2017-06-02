import com.stgj.entity.Role;
import com.stgj.service.RoleService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 * Created by gfj43958 on 2017/5/28.
 * time:18:29
 * author:GuoFangjun
 */
@ContextConfiguration(locations = {"classpath:spring-mybatis.xml"})
@RunWith(SpringJUnit4ClassRunner.class)
public class RoleTest {

    @Autowired
    RoleService roleService;

    @Test
    public void testAddRole(){
        Role role = new Role();
        role.setRoleName("握手谁");
        roleService.saveRole(role);
    }

    @Test
    public void testUpdateRole(){
        Role role = new Role();
        role.setRoleId(5);
        role.setRoleName("我是sei");
        roleService.updateRole(role);
    }

    @Test
    public void testDelRole(){
        roleService.delRole(5);
    }


    //给角色分配权限
    @Test
    public void testFenPeiPermissionByRole(){
     //1,传进来的参数：用户Id  角色id或者集合  往里面新增


    //2.角色Id 权限id集合


    //3.用户id  查到角色集合 角色Id  权限集合

    }


}
