package com.rongxing.service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.rongxing.bean.AuUser;
import com.rongxing.bean.query.UserQuery;
import com.rongxing.mapper.AuUserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

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

    public List<AuUser> findAll(String username) {
        return auUserMapper.findAll(username);
    }

    public int insert(AuUser auUser) {
        return auUserMapper.insert(auUser);
    }

    public List<AuUser> listUser() {
        return auUserMapper.listUser();
    }

    public PageInfo<AuUser> listUserByName(UserQuery userQuery) {
        PageHelper.startPage(userQuery.getPageNum(),userQuery.getPageSize());
        return new PageInfo<AuUser>(auUserMapper.listUserByName(userQuery));
    }

    public boolean deleteUserById(Integer id) {
        int i = auUserMapper.deleteUserById(id);
        if(i > 0){
            return true;
        }else {
            return false;
        }
    }

    public AuUser queryUserById(Integer id) {
        return auUserMapper.queryUserById(id);
    }

    public boolean updateUser(AuUser user) {
        int i = auUserMapper.updateUser(user);
        if(i > 0){
            return true;
        }else {
            return false;
        }
    }

    public boolean addUser(AuUser user) {
        return auUserMapper.addUser(user) > 0 ? true : false ;
    }

    public int selectUserByName(String name) {
        return auUserMapper.selectUserByName(name);
    }
}
