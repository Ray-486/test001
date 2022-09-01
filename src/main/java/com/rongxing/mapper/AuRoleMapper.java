package com.rongxing.mapper;

import com.rongxing.bean.AuRole;

public interface AuRoleMapper {
    int deleteByPrimaryKey(Long id);

    int insert(AuRole record);

    int insertSelective(AuRole record);

    AuRole selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(AuRole record);

    int updateByPrimaryKey(AuRole record);
}