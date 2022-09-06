package com.rongxing.service;


import com.github.pagehelper.PageInfo;
import com.rongxing.bean.AuUser;
import com.rongxing.bean.query.UserQuery;

import java.util.List;
import java.util.Map;

public interface AuUserService {
    //登录
    public AuUser login(String loginCode, String passWord);

    //分页+模糊查询
    public List<AuUser> findAll(String username);


    abstract boolean insert(AuUser user);

    // 查询所有用户
    public List<AuUser> listUser();

    // 根据用户名来查询用户  并分页展示
    public PageInfo<AuUser> listUserByName(UserQuery userQuery);

    //根据id删除用户
    public boolean deleteUserById(Integer id);

    // 根据id查询用户
    public AuUser queryUserById(Integer id);

    // 修改用户
    public boolean updateByPrimaryKey(AuUser user);


    public int selectUserByName(String username);
}
