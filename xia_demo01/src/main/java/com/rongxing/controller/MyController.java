package com.rongxing.controller;


import com.rongxing.bean.AuUser;
import com.rongxing.service.AuUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.io.IOException;

@Controller
public class MyController {
    @Autowired
    private AuUserService auUserService;

    @RequestMapping(value="/login" )
    public String login(String loginCode, String password, HttpSession session) throws IOException {
        AuUser auUser = auUserService.login(loginCode, password);
        if(auUser!=null){
            session.setAttribute("auUser",auUser);
            return "index";
        }else{
            return "redirect:/";
        }

    }


}
