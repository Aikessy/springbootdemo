package com.heikki.springbootdemo.controller;

import com.heikki.springbootdemo.common.RespJson;
import com.heikki.springbootdemo.pojo.SysUser;
import com.heikki.springbootdemo.service.SysUserService;
import org.apache.commons.lang3.StringUtils;
import org.n3r.idworker.Sid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Date;

@RestController
@RequestMapping("mybatis")
public class MybatisCRUDController {
    @Autowired
    private SysUserService sysUserService;
    @Autowired
    private Sid sid;

    @RequestMapping("/save")
    public RespJson saveUser(){
        String id = sid.nextShort();
        SysUser user = new SysUser();
        user.setId(id);
        user.setUsername("heikki");
        user.setNickname("jie");
        user.setPassword("123");
        user.setIsDelete(0);
        user.setRegistTime(new Date());

        sysUserService.save(user);
        return RespJson.success();
    }

    @RequestMapping("/getAll")
    public RespJson getAll(){
        return RespJson.success(sysUserService.getAll());
    }

    @RequestMapping("/getUserPage")
    public RespJson getSysUserByPage(Integer page,Integer pageSize){
        page = page == null ? 1 : page;
        pageSize = pageSize == null ? 5 : pageSize;

        return RespJson.success(sysUserService.getSysUserByPage(page,pageSize));
    }

    @RequestMapping("/getSimpleUserInfo")
    public RespJson getSimpleUserInfo(String id){
        if (StringUtils.isEmpty(id)) return RespJson.error("请输入用户id");
        SysUser sysUser = sysUserService.getSimpleUserInfo(id);
        if (sysUser == null) return RespJson.error("无该用户信息");
        return RespJson.success(sysUser);
    }
}
