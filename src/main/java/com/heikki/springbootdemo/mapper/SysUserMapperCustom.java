package com.heikki.springbootdemo.mapper;

import com.heikki.springbootdemo.pojo.SysUser;
import tk.mybatis.mapper.common.Mapper;

public interface SysUserMapperCustom extends Mapper<SysUser> {
    SysUser queryUserSimpleInfoById(String id);
}