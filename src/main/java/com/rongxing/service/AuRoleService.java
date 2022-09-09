package com.rongxing.service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.rongxing.bean.AuRole;
import com.rongxing.bean.query.RoleQuery;
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


    public boolean insert(AuRole role) {
        return (auRoleMapper.insert(role) > 0);
    }

    public PageInfo<AuRole> listRoleByName(RoleQuery roleQuery) {
        PageHelper.startPage(roleQuery.getPageNum(),roleQuery.getPageSize());
        return new PageInfo<AuRole>(auRoleMapper.listRoleByName(roleQuery));
    }

    public boolean deleteRoleById(Integer id) {
        int i = auRoleMapper.deleteRoleById(id);
        if(i > 0){
            return true;
        }else {
            return false;
        }
    }

    public AuRole queryRoleById(Integer id) {
        return auRoleMapper.queryRoleById(id);
    }

    public boolean updateByPrimaryKey(AuRole auRole) {
        int i = auRoleMapper.updateByPrimaryKey(auRole);
        if(i > 0){
            return true;
        }else {
            return false;
        }
    }

    public int selectRoleByName(String logincode) {
        return auRoleMapper.selectRoleByName(logincode);
    }

    public int updateisStartByRoleid(Integer isStart,Long roleId){
        int i = auRoleMapper.updateisStartByRoleId(isStart, roleId);
        return i;
    }
}
