package com.csc;

import com.csc.modules.ums.mapper.UmsResourceMapper;
import com.csc.modules.ums.model.UmsAdmin;
import com.csc.modules.ums.model.UmsResource;
import com.csc.modules.ums.service.impl.UmsAdminCacheServiceImpl;
import com.csc.modules.ums.service.impl.UmsAdminServiceImpl;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

@SpringBootTest
public class SampleTest {
    @Autowired(required = false)
    private UmsResourceMapper umsResourceMapper;

    @Autowired
    private UmsAdminServiceImpl umsAdminService;

    @Autowired
    UmsAdminCacheServiceImpl umsAdminCacheService;

    @Test
    public void testSelect() {
        System.out.println(("----- selectAll method test ------"));
        long id = 1;
        List<UmsResource> userList = umsResourceMapper.getResourceList(id);
        userList.forEach(System.out::println);
    }

    @Test
    public void testLogin() {
        UmsAdmin umsAdmin = umsAdminService.getAdminByUsername("admin");
        System.out.println(umsAdmin.toString());
    }


}

