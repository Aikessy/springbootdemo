package com.heikki.springbootdemo.service.impl;

import com.github.pagehelper.PageHelper;
import com.heikki.springbootdemo.mapper.SysUserMapper;
import com.heikki.springbootdemo.mapper.SysUserMapperCustom;
import com.heikki.springbootdemo.pojo.SysUser;
import com.heikki.springbootdemo.service.SysUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import tk.mybatis.mapper.entity.Example;

import java.util.List;

@Service
public class SysUserServiceImpl implements SysUserService {
    @Autowired
    private SysUserMapper sysUserMapper;
    @Autowired
    private SysUserMapperCustom sysUserMapperCustom;

    @Override
    @Transactional(propagation = Propagation.REQUIRED)
    public void save(SysUser sysUser) {
        sysUserMapper.insert(sysUser);
    }

    @Override
    @Transactional(propagation = Propagation.REQUIRED)
    public void update(SysUser sysUser) {
        sysUserMapper.updateByPrimaryKeySelective(sysUser);
    }

    @Override
    @Transactional(propagation = Propagation.REQUIRED)
    public void delete(String id) {
        sysUserMapper.deleteByPrimaryKey(id);
    }

    @Override
    @Transactional(propagation = Propagation.SUPPORTS)
    public SysUser queryById(String id) {
        return sysUserMapper.selectByPrimaryKey(id);
    }

    @Override
    @Transactional(propagation = Propagation.SUPPORTS)
    public List<SysUser> getAll() {
        return sysUserMapper.selectAll();
    }

    @Override
    @Transactional(propagation = Propagation.SUPPORTS)
    public List<SysUser> getSysUserByPage(int page, int pageSize) {
        PageHelper.startPage(page,pageSize);
        Example example = new Example(SysUser.class);
//        Example.Criteria criteria = example.createCriteria();
        example.orderBy("registTime").desc();
        return sysUserMapper.selectByExample(example);
    }

    @Override
    @Transactional(propagation = Propagation.SUPPORTS)
    public SysUser getSimpleUserInfo(String id) {
        return sysUserMapperCustom.queryUserSimpleInfoById(id);
    }
}
