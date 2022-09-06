package com.rongxing.mapper;

import com.rongxing.bean.AuRole;
import com.rongxing.bean.AuUser;
import com.rongxing.bean.query.RoleQuery;
import com.rongxing.bean.query.UserQuery;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface AuRoleMapper {
    int deleteByPrimaryKey(Long id);

    int insert(AuRole record);

    int insertSelective(AuRole record);

    AuRole selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(AuRole record);

    int updateByPrimaryKey(AuRole record);

    // 根据id查询用户
    public AuRole queryRoleById(Integer id);

    // 根据用户名来查询用户  并分页展示
    public List<AuRole> listRoleByName(RoleQuery roleQuery);

    //根据id删除用户
    public int deleteRoleById(Integer id);


    // 判断是否存在
    public int selectRoleByName(String rolecode);
}