package com.rongxing.service;

import com.rongxing.bean.AuAuthority;
import com.rongxing.bean.AuUser;
import com.rongxing.mapper.AuAuthorityMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;

@Service
public class AuAuthorityService {
    @Autowired
    private AuAuthorityMapper auAuthorityMapper;

    /**
     *通过角色id获取所有的权限
     */
    public List<AuAuthority> getByRoleId(Long roleId) {
        List<AuAuthority> auAuthorities = auAuthorityMapper.selectByRoleId(roleId);
        return auAuthorities;
    }

    /**
     *通过角色id删除所有权限
     */
     public int deleteByRoleId(Long roleId){
         int i = auAuthorityMapper.deleteByRoleId(roleId);
         return i;
     }

    /**
     *根据角色id和功能id获取权限
     */
     public AuAuthority getByRidAndFid(Long rid,Long fid){
         AuAuthority auAuthority = auAuthorityMapper.selectByRidAndFid(rid, fid);
         return auAuthority;
     }

    /**
     *添加权限
     */
     public int insertAuAuthority(AuAuthority auAuthority){
         int i = auAuthorityMapper.insertSelective(auAuthority);
         return i;
     }

    /**
     *修改权限
     */
     @Transactional
     public void modifyByData(String mdata,String creator){
         //传入包含角色id和相应功能id的字符串
         String[] split = mdata.split("-");
         Long rid = Long.valueOf(split[0]);//角色id
         //删除该角色id下的所有权限
         auAuthorityMapper.deleteByRoleId(rid);
         if(split.length>1)
             //根据传入的字符串添加相应的权限
             for(int i=1;i<split.length;i++){
                 AuAuthority auAuthority=new AuAuthority();
                 auAuthority.setRoleid(rid);
                 auAuthority.setFunctionid(Long.valueOf(split[i]));
                 auAuthority.setCreatedby(creator);
                 auAuthority.setCreationtime(new Date());
                 auAuthority.setUsertypeid(0L);
                auAuthorityMapper.insertSelective(auAuthority);
             }
         }

}
