package com.rongxing.controller;


import com.rongxing.bean.AuUser;
import com.rongxing.service.AuUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@Controller
public class MyController {
    @Autowired
    private AuUserService auUserService;

    @RequestMapping(value="/login")
    public String login(String loginCode, String password, HttpSession session) throws IOException {
        AuUser auUser = auUserService.login(loginCode, password);
        if(auUser!=null){
            session.setAttribute("auUser",auUser);
            return "redirect:/index";
        }else{
            return "redirect:/";
        }

    }
    @RequestMapping(value="/index")
    public String index(){
        return "系统登录默认页";
    }

}
