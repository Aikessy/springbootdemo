package com.heikki.springbootdemo.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {
    @RequestMapping("/hello")
    public String hello(){
        return "Hello SpringBoot!";
    }

    @RequestMapping("/index")
    public String index(){
        return "Spring Boot index page!";
    }
}
