package com.rongxing.controller;


import com.rongxing.bean.AuUser;
import com.rongxing.service.AuUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@Controller
public class MyController {
    @Autowired
    private AuUserService auUserService;

    /**
     *登录
     */
    @RequestMapping(value="/login",method = RequestMethod.POST)
    public String login(String loginCode, String password, HttpSession session) throws IOException {
        AuUser user = auUserService.login(loginCode, password);
        //判断是否存在
        if(user!=null){
            session.removeAttribute("login_msg");
            session.setAttribute("auUser",user);
            return "redirect:/index";
        }else{
            session.setAttribute("login_msg","登录失败");
            return "redirect:/";
        }

    }

    /**
     * 返回首页
     * @return
     */
    @RequestMapping(value="/index")
    public String index(){
        return "index";
    }

    /**
     * 返回顶部
     * @return
     */
    @RequestMapping(value="/top")
    public String top(){
        return "top";
    }

    /**
     *登出
     */
    @RequestMapping(value="/logout")
    @ResponseBody
    public String logout(HttpSession session){
         //销毁session
        session.invalidate();
        return "<script>parent.window.location.href='login.html';</script>";
    }
}
