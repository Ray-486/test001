package com.rongxing.interceptor;

import com.rongxing.bean.AuUser;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginInterceptor implements HandlerInterceptor {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        AuUser auUser = (AuUser) request.getSession().getAttribute("auUser");
        //判断session是否有用户
        if(auUser==null){
            response.sendRedirect("/");
            return false;
        }else{
            return true;
        }
    }
}
