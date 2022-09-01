package com.rongxing.service;

import com.rongxing.bean.AuUser;
import com.rongxing.mapper.AuUserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class AuUserService {
    @Autowired
    private AuUserMapper auUserMapper;
    /**
     * 登录
     */
    public AuUser login(String loginCode,String passWord){
        AuUser auUser = auUserMapper.selectByLoginCodeAndPwd(loginCode, passWord);
        return auUser;
    }
}
