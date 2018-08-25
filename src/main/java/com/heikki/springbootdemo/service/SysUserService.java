package com.heikki.springbootdemo.service;

import com.heikki.springbootdemo.pojo.SysUser;

import java.util.List;

public interface SysUserService {
    void save(SysUser sysUser);
    void update(SysUser sysUser);
    void delete(String id);
    SysUser queryById(String id);
    List<SysUser> getAll();
    List<SysUser> getSysUserByPage(int page, int pageSize);
    SysUser getSimpleUserInfo(String id);
}
