package com.rongxing.mapper;

import com.rongxing.bean.AuUser;
import com.rongxing.bean.query.UserQuery;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface AuUserMapper {
    int deleteByPrimaryKey(Long id);

    int insert(AuUser record);

    int insertSelective(AuUser record);

    AuUser selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(AuUser record);

    int updateByPrimaryKey(AuUser record);

    AuUser selectByLoginCodeAndPwd(@Param("loginCode") String loginCode,@Param("passWord") String passWord);

    //模糊查询所有用户
    List<AuUser> findAll(@Param("username") String username);

    // 查询所有用户
    public List<AuUser> listUser();

    // 根据id查询用户
    public AuUser queryUserById(Integer id);

    // 根据用户名来查询用户  并分页展示
    public List<AuUser> listUserByName(UserQuery userQuery);

    //根据id删除用户
    public int deleteUserById(Integer id);

    // 新增用户
    public int addUser(AuUser user);

    // 判断用户名是否存在
    public int selectUserByName(String name);

    public int updateisStartByUid(@Param("isStart") Integer isStart,@Param("uid")Long uid);
}