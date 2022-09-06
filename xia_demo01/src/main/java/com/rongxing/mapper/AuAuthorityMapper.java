package com.rongxing.mapper;

import com.rongxing.bean.AuAuthority;

public interface AuAuthorityMapper {
    int deleteByPrimaryKey(Long id);

    int insert(AuAuthority record);

    int insertSelective(AuAuthority record);

    AuAuthority selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(AuAuthority record);

    int updateByPrimaryKey(AuAuthority record);
}