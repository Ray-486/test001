package com.rongxing.mapper;

import com.rongxing.bean.AuRole;

import java.util.List;

public interface AuRoleMapper {
    int deleteByPrimaryKey(Long id);

    int insert(AuRole record);

    int insertSelective(AuRole record);

    AuRole selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(AuRole record);

    int updateByPrimaryKey(AuRole record);

    List<AuRole> getAllRoles();
}