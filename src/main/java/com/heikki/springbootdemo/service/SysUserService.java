package com.heikki.springbootdemo.service;

import com.heikki.springbootdemo.pojo.SysUser;

public interface SysUserService {
    void save(SysUser sysUser);
    void update(SysUser sysUser);
    void delete(String id);
    SysUser queryById(String id);

}
