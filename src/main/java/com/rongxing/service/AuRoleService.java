package com.rongxing.service;

import com.rongxing.bean.AuRole;
import com.rongxing.mapper.AuRoleMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AuRoleService {
    @Autowired
    private AuRoleMapper auRoleMapper;

    /**
     * 获取所有角色
     * @return
     */
    public List<AuRole> getAllRoles(){
        List<AuRole> allRoles = auRoleMapper.getAllRoles();
        return allRoles;
    }
}
