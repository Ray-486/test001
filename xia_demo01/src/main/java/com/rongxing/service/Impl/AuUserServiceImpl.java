package com.rongxing.service.Impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.rongxing.bean.AuUser;
import com.rongxing.bean.query.UserQuery;
import com.rongxing.mapper.AuUserMapper;
import com.rongxing.service.AuUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AuUserServiceImpl implements AuUserService {
    @Autowired
    private AuUserMapper auUserMapper;
    /**
     * 登录
     */
    public AuUser login(String loginCode,String passWord){
        AuUser auUser = auUserMapper.selectByLoginCodeAndPwd(loginCode, passWord);
        return auUser;
    }

    @Override
    public List<AuUser> findAll(String username) {
        return auUserMapper.findAll(username);
    }



    @Override
    public List<AuUser> listUser() {
        return auUserMapper.listUser();
    }

    @Override
    public PageInfo<AuUser> listUserByName(UserQuery userQuery) {
        PageHelper.startPage(userQuery.getPageNum(),userQuery.getPageSize());
        return new PageInfo<AuUser>(auUserMapper.listUserByName(userQuery));
    }

    @Override
    public boolean deleteUserById(Integer id) {
        int i = auUserMapper.deleteUserById(id);
        if(i > 0){
            return true;
        }else {
            return false;
        }
    }

    @Override
    public AuUser queryUserById(Integer id) {
        return (auUserMapper.queryUserById(id));
    }

    @Override
    public boolean updateByPrimaryKey(AuUser user) {
        int i = auUserMapper.updateByPrimaryKey(user);
        if(i > 0){
            return true;
        }else {
            return false;
        }
    }

    @Override
    public boolean insert(AuUser user) {
        return auUserMapper.insert(user) > 0;
    }

    @Override
    public int selectUserByName(String username) {
        return auUserMapper.selectUserByName(username);
    }
}
