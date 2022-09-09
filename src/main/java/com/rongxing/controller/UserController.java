package com.rongxing.controller;



import com.github.pagehelper.PageHelper;

import com.github.pagehelper.PageInfo;
import com.rongxing.bean.AuRole;
import com.rongxing.bean.AuUser;
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
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller

public class UserController {

    //每页条数
    final int pageSize=5;
    @Autowired
    AuUserService auUserService;
    @Autowired
    AuRoleService auRoleService;

    /**
     * 根据条件查询用户信息
     * @param model
     * @param userQuery
     * @return
     * @throws ServletException
     * @throws IOException
     */
    @GetMapping(value = "/query")
    public String query(Model model, UserQuery userQuery) throws ServletException, IOException {

        PageInfo<AuUser> userPageInfo = auUserService.listUserByName(userQuery);
        model.addAttribute("page", userPageInfo);
        model.addAttribute("queryname",userQuery.getUsername());
        return "back_user_management";
    }


    /**
     * 页面初始化显示用户信息
     * @param model
     * @param userQuery
     * @return
     */
    @RequestMapping(value = "/back_user")
    public String allUser(Model model,UserQuery userQuery){
        PageInfo<AuUser> userPageInfo = auUserService.listUserByName(userQuery);
        model.addAttribute("page", userPageInfo);
        return "back_user_management";
    }

    /**
     * 根据id删除用户信息
     * @param id
     * @return
     */
    @GetMapping("/delete/{id}")
    public String delete(@PathVariable("id") Integer id, Model model,UserQuery userQuery) {
        PageInfo<AuUser> userPageInfo = auUserService.listUserByName(userQuery);
        model.addAttribute("page", userPageInfo);
       auUserService.deleteUserById(id);
        return "redirect:/back_user";
    }


    /**
     * 根据id进行跳转到编辑页面
     * @param id
     * @param model
     * @return
     */
    @GetMapping("/edit/{id}")
    public String toEdit(@PathVariable Integer id, Model model) {
        model.addAttribute("user", auUserService.queryUserById(id));
        return "back_user_edit";
    }



    @PostMapping("/updateuser")
    @ResponseBody
    public boolean  updateUser(@RequestParam String userinfo,ModelAndView mv,UserQuery userQuery,HttpSession session) {
        boolean flag=false;
        // 转换前端传回来的json
        JSONObject userinfoObject = JSONObject.fromObject(userinfo);
        // 转换成 GoodsInfoWithBLOBs 对象
        AuUser add_userinfo =  (AuUser)JSONObject.toBean(userinfoObject ,AuUser.class);

        Date date = new Date();
        // 最后操做时间
        add_userinfo.setLastupdatetime(date);

        if(add_userinfo.getRefercode()==null){
            //推荐人
            AuUser auUser = (AuUser) session.getAttribute("auUser");
            String logincode = auUser.getLogincode();
            add_userinfo.setRefercode(logincode);
        }

        if(add_userinfo.getId()==null){
            add_userinfo.setId(null);
            // 当前操作时间
            add_userinfo.setCreatetime(date);
            //插入数据
            flag = auUserService.insert(add_userinfo);

            // 测试
//		System.out.println(flag);
            return flag;
        }

        else{
            add_userinfo.setCreatetime(date);
            //更新数据
            flag = auUserService.updateByPrimaryKey(add_userinfo);
            return flag;
        }

    }

    @PostMapping("/user_start_change")
    @ResponseBody
    public boolean userStartChange(Integer isStart,Long uid){
        int i = auUserService.updateStatusByUid(isStart, uid);
        if(i>0){
            return true;
        }else{
            return false;
        }
    }
//    @RequestMapping("/back_user_edit")
//    public void backUserEdit(){
//
//    }

}
