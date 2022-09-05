package com.rongxing.controller;



import com.github.pagehelper.PageHelper;

import com.github.pagehelper.PageInfo;
import com.rongxing.bean.AuUser;
import com.rongxing.bean.query.UserQuery;
import com.rongxing.service.AuUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller

public class UserController {

    //每页条数
    final int pageSize=5;
    @Autowired
    AuUserService auUserService;


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
        System.out.println(userQuery.getUsername());
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
     * @param attributes
     * @return
     */
    @GetMapping("/delete/{id}")
    public String delete(@PathVariable("id") Integer id, RedirectAttributes attributes,Model model,UserQuery userQuery) {
        PageInfo<AuUser> userPageInfo = auUserService.listUserByName(userQuery);
        model.addAttribute("page", userPageInfo);
        boolean b = auUserService.deleteUserById(id);
        return "back_user_management";
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

    @PostMapping("/edit")
    public String edit(AuUser user, RedirectAttributes attributes,Model model,UserQuery userQuery) {
        int i = auUserService.selectUserByName(user.getUsername());
        /* 根据id的是否为null判断新增还是修改操作，null为新增，不为null为修改 */
        Long id = user.getId();
        /* 修改用户 */
        if (id != null) {
            /* 用户名不存在 */
            if (i == 0) {
               auUserService.updateUser(user);
                PageInfo<AuUser> userPageInfo = auUserService.listUserByName(userQuery);
                model.addAttribute("page", userPageInfo);
                return "back_user_management";
            } else {
                attributes.addFlashAttribute("message", "该用户名已存在");
                return "redirect:/edit/" + user.getId();
            }
            // 新增用户
        } else {
            if (i == 0) {
                boolean b = auUserService.addUser(user);
                PageInfo<AuUser> userPageInfo = auUserService.listUserByName(userQuery);
                model.addAttribute("page", userPageInfo);
                return "back_user_management";
            } else {
                attributes.addFlashAttribute("message", "该用户名已存在");
                return "back_user_management";
            }
        }
    }

    /* 新增操作 */
    @GetMapping("/update")
    public String toUpdate(Model model) {
        AuUser user = new AuUser();
        model.addAttribute("user", user);
        return "back_user_edit";
    }

}
