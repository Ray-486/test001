package com.rongxing.service;

import com.github.pagehelper.PageInfo;
import com.rongxing.bean.AuRole;
import com.rongxing.bean.AuUser;
import com.rongxing.bean.query.RoleQuery;
import com.rongxing.bean.query.UserQuery;

import java.util.List;

public interface AuRoleService {
    abstract boolean insert(AuRole role);


    // 根据用户名来查询用户  并分页展示
    public PageInfo<AuRole> listRoleByName(RoleQuery roleQuery);

    //根据id删除用户
    public boolean deleteRoleById(Integer id);

    // 根据id查询用户
    public AuRole queryRoleById(Integer id);

    // 修改用户
    public boolean updateByPrimaryKey(AuRole auRole);


    public int selectRoleByName(String logincode);
}
