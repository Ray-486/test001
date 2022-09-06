package com.rongxing.service.Impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.rongxing.bean.AuRole;
import com.rongxing.bean.AuUser;
import com.rongxing.bean.query.RoleQuery;
import com.rongxing.mapper.AuRoleMapper;
import com.rongxing.service.AuRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AuRoleServiceImpl implements AuRoleService {

    @Autowired
    AuRoleMapper auRoleMapper;

    @Override
    public boolean insert(AuRole role) {
        return (auRoleMapper.insert(role) > 0);
    }



    @Override
    public PageInfo<AuRole> listRoleByName(RoleQuery roleQuery) {
        PageHelper.startPage(roleQuery.getPageNum(),roleQuery.getPageSize());
        return new PageInfo<AuRole>(auRoleMapper.listRoleByName(roleQuery));
    }

    @Override
    public boolean deleteRoleById(Integer id) {
        int i = auRoleMapper.deleteRoleById(id);
        if(i > 0){
            return true;
        }else {
            return false;
        }
    }

    @Override
    public AuRole queryRoleById(Integer id) {
        return auRoleMapper.queryRoleById(id);
    }

    @Override
    public boolean updateByPrimaryKey(AuRole auRole) {
        int i = auRoleMapper.updateByPrimaryKey(auRole);
        if(i > 0){
            return true;
        }else {
            return false;
        }
    }

    @Override
    public int selectRoleByName(String logincode) {
        return auRoleMapper.selectRoleByName(logincode);
    }
}
