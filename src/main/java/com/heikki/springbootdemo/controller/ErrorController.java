package com.heikki.springbootdemo.controller;

import com.heikki.springbootdemo.common.RespJson;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class ErrorController {

    @RequestMapping("/err")
    public void errorTest(){
        int i = 1/0;
    }

    @RequestMapping("/ajaxerror")
    public String ajaxErrorTest(){
        return "thymeleaf/ajaxerror";
    }

    @RequestMapping("/getAjaxerror")
    @ResponseBody
    public RespJson getAjaxError(){
        int a = 1/0;
        return RespJson.success();
    }
}
