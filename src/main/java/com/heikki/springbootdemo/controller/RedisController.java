package com.heikki.springbootdemo.controller;

import com.heikki.springbootdemo.common.RespJson;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("redis")
public class RedisController {
    @Autowired
    private StringRedisTemplate strRedis;

    @RequestMapping("/test")
    public RespJson test(){
        strRedis.opsForValue().set("username", "heikki");
        return RespJson.success(strRedis.opsForValue().get("username"));
    }
}
