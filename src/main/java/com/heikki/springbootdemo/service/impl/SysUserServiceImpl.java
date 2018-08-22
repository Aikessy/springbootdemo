package com.heikki.springbootdemo.service.impl;

import com.heikki.springbootdemo.mapper.SysUserMapper;
import com.heikki.springbootdemo.pojo.SysUser;
import com.heikki.springbootdemo.service.SysUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SysUserServiceImpl implements SysUserService {
    @Autowired
    private SysUserMapper sysUserMapper;

    @Override
    public void save(SysUser sysUser) {
        sysUserMapper.insert(sysUser);
    }

    @Override
    public void update(SysUser sysUser) {
        sysUserMapper.updateByPrimaryKeySelective(sysUser);
    }

    @Override
    public void delete(String id) {
        sysUserMapper.deleteByPrimaryKey(id);
    }

    @Override
    public SysUser queryById(String id) {
        return sysUserMapper.selectByPrimaryKey(id);
    }
}
