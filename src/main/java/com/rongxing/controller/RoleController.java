package com.rongxing.controller;


import com.github.pagehelper.PageInfo;
import com.rongxing.bean.AuRole;
import com.rongxing.bean.AuUser;
import com.rongxing.bean.query.RoleQuery;
import com.rongxing.bean.query.UserQuery;
import com.rongxing.service.AuRoleService;
import com.rongxing.service.AuUserService;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Date;
import java.util.List;

@Controller
public class RoleController {

    @Autowired
    AuRoleService auRoleService;


    /**
     * 根据条件查询用户信息
     * @param model
     * @param roleQuery
     * @return
     * @throws ServletException
     * @throws IOException
     */
    @GetMapping(value = "/queryrole")
    public String queryRole(Model model, RoleQuery roleQuery)  {
        PageInfo<AuRole> userPageInfo = auRoleService.listRoleByName(roleQuery);
        model.addAttribute("page", userPageInfo);
        model.addAttribute("queryname",roleQuery.getRolecode());
        return "back_role_management";
    }


    /**
     * 页面初始化显示用户信息
     * @param model
     * @param roleQuery
     * @return
     */
    @RequestMapping(value = "/back_role_management.html")
    public String allUser(Model model, RoleQuery roleQuery){
        PageInfo<AuRole> userPageInfo = auRoleService.listRoleByName(roleQuery);
        model.addAttribute("page", userPageInfo);
        return "back_role_management";
    }

    /**
     * 根据id删除用户信息
     * @param id
     * @return
     */
    @RequestMapping ("/deleterole/{id}")
    public String delete(@PathVariable("id") Integer id,  Model model,RoleQuery roleQuery) {
        PageInfo<AuRole> userPageInfo = auRoleService.listRoleByName(roleQuery);
        model.addAttribute("page", userPageInfo);
        auRoleService.deleteRoleById(id);
        return "redirect:/back_role_management.html";
    }


    /**
     * 根据id进行跳转到编辑页面
     * @param id
     * @param model
     * @return
     */
    @GetMapping("/editrole/{id}")
    public String toEdit(@PathVariable Integer id, Model model) {
        model.addAttribute("role", auRoleService.queryRoleById(id));
        return "back_role_edit";
    }


    /* 新增操作 */
    @RequestMapping("/updaterole")
    @ResponseBody
    public boolean updateRole(@RequestParam String roleinfo, ModelAndView mv, HttpSession session) {

        boolean flag;
        // 转换前端传回来的json
        JSONObject roleinfoObject = JSONObject.fromObject(roleinfo);
        // 转换成 GoodsInfoWithBLOBs 对象
        AuRole add_roleinfo =  (AuRole) JSONObject.toBean(roleinfoObject,AuRole.class);
        if(session.isNew()){
            return false;
        }

        //推荐人
        AuUser auUser = (AuUser) session.getAttribute("auUser");
        String logincode = auUser.getLogincode();
        add_roleinfo.setCreatedby(logincode);

        Date date = new Date();
        // 最后操做时间
        add_roleinfo.setCreatedate(date);

        //新增操作
        if(add_roleinfo.getId()==null){
            add_roleinfo.setId(null);
            //插入数据
            flag = auRoleService.insert(add_roleinfo);
            // 测试
//		System.out.println(flag);
            return flag;
        }

        //更新操作
        else{
            //更新数据
            flag = auRoleService.updateByPrimaryKey(add_roleinfo);
            return flag;
        }
    }

    @PostMapping("/role_start_change")
    @ResponseBody
    public boolean updateRoleStatus(Integer isStart,Long roleId){
        int i = auRoleService.updateisStartByRoleid(isStart, roleId);
        if(i>0){
            return true;
        }else{
            return false;
        }
    }
}
