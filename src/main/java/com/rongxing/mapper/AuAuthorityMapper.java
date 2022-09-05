package com.rongxing.mapper;

import com.rongxing.bean.AuAuthority;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface AuAuthorityMapper {
    int deleteByPrimaryKey(Long id);

    int insert(AuAuthority record);

    int insertSelective(AuAuthority record);

    AuAuthority selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(AuAuthority record);

    int updateByPrimaryKey(AuAuthority record);

    List<AuAuthority> selectByRoleId(@Param("roleId") Long roleId);

    int deleteByRoleId(@Param("roleId") Long roleId);

    AuAuthority selectByRidAndFid(@Param("rid") Long rid,@Param("fid")Long fid);
}