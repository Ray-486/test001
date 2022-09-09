package com.rongxing.controller;

import com.rongxing.bean.AuAuthority;
import com.rongxing.bean.AuFunction;
import com.rongxing.bean.AuRole;
import com.rongxing.bean.AuUser;
import com.rongxing.service.AuAuthorityService;
import com.rongxing.service.AuFunctionService;
import com.rongxing.service.AuRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class AuAuthorityController {
    @Autowired
    private AuRoleService auRoleService;
    @Autowired
    private AuFunctionService auFunctionService;
    @Autowired
    private AuAuthorityService auAuthorityService;

    /**
     *获取所有的角色以及功能
     */
    @RequestMapping(value="/back_authority_management.html")
    public ModelAndView fuc(ModelAndView mv){
        List<AuRole> allRoles = auRoleService.getAllRoles();
        List<AuFunction> allFunctions = auFunctionService.getAll();
        mv.addObject("roles",allRoles);
        mv.addObject("functions",allFunctions);
       mv.setViewName("back_authority_management");
       return mv;
    }

    /**
     *判断角色是否有某权限
     */
    @RequestMapping(value="/isExistFunction")
    @ResponseBody
    public String getByRoleidAndFuncid(Long rid,Long fid){
        AuAuthority auAuthority = auAuthorityService.getByRidAndFid(rid, fid);
        if(auAuthority==null){
            return "fail";
        }else {
            return "success";
        }
    }

    /**
     *修改权限
     */
    @RequestMapping(value="/modify_function",produces="text/html;charset=UTF-8")
    @ResponseBody
    public String modifyFunction(String mdata, HttpSession session){
        AuUser auUser = (AuUser) session.getAttribute("auUser");
        auAuthorityService.modifyByData(mdata,auUser.getUsername());
        return "修改成功";
    }
}
