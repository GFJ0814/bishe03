import com.stgj.entity.Permission;
import com.stgj.service.PermissionService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

/**
 * Created by gfj43958 on 2017/5/28.
 * time:20:49
 * author:GuoFangjun
 */
@ContextConfiguration(locations = {"classpath:spring-mybatis.xml"})
@RunWith(SpringJUnit4ClassRunner.class)
public class PermissionTest {

    @Autowired
    PermissionService permissionService;

    Permission permission = new Permission();

    @Test
    public void addPermission(){
      permission.setPermissionName("角色管理");
      permission.setPermissionLink("/role/findAllRoles");
      for(int i = 0 ;i<10;i++){
          permissionService.addPermission(permission);
      }

    }

    @Test
    public void updatePermission(){
        permission.setPermissionId(1);
        permission.setPermissionName("");
        permissionService.updatePermission(permission);

    }

    @Test
    public  void findByPage(){
        List<Permission> permissions = permissionService.findAllPermissionsByPage(0);
        for (Permission p:permissions) {
            System.out.println(p.getPermissionId()+"-----"+p.getPermissionParentId());
        }
    }


}
