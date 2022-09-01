package com.crm.crmsight;

import lombok.ToString;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;

@SpringBootApplication
@MapperScan("com.crm.crmsight.modules.ums.mapper")
public class CrmSightApplication {

    public static void main(String[] args) {
        System.out.println("just a test");
        SpringApplication.run(CrmSightApplication.class, args);
    }

}
