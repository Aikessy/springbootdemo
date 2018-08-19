package com.heikki.springbootdemo.controller;

import com.heikki.springbootdemo.common.RespJson;
import com.heikki.springbootdemo.mapper.UserMapper;
import com.heikki.springbootdemo.pojo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class UserController {
    @Autowired
    UserMapper userMapper;

    @RequestMapping("/getAllUser")
    @ResponseBody
    public RespJson getAllUser(){
        return RespJson.success(userMapper.findAll());
    }
}
