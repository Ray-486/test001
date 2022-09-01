package com.rongxing.mapper;

import com.rongxing.bean.AuFunction;

public interface AuFunctionMapper {
    int deleteByPrimaryKey(Long id);

    int insert(AuFunction record);

    int insertSelective(AuFunction record);

    AuFunction selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(AuFunction record);

    int updateByPrimaryKey(AuFunction record);
}