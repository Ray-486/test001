package com.rongxing.mapper;

import com.rongxing.bean.AuUser;
import org.apache.ibatis.annotations.Param;

public interface AuUserMapper {
    int deleteByPrimaryKey(Long id);

    int insert(AuUser record);

    int insertSelective(AuUser record);

    AuUser selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(AuUser record);

    int updateByPrimaryKey(AuUser record);

    AuUser selectByLoginCodeAndPwd(@Param("loginCode") String loginCode,@Param("passWord") String passWord);
}