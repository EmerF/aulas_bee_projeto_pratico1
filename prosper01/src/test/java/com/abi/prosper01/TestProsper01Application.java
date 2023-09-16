package com.abi.prosper01;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.test.context.TestConfiguration;

@TestConfiguration(proxyBeanMethods = false)
public class TestProsper01Application {

    public static void main(String[] args) {
        SpringApplication.from(Prosper01Application::main).with(TestProsper01Application.class).run(args);
    }

}
