package com.rongxing.interceptor;

import com.rongxing.bean.AuAuthority;
import com.rongxing.bean.AuFunction;
import com.rongxing.bean.AuUser;
import com.rongxing.service.AuAuthorityService;
import com.rongxing.service.AuFunctionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;

public class AuthorityInterceptor implements HandlerInterceptor {
    @Autowired
    private AuAuthorityService auAuthorityService;
    @Autowired
    private AuFunctionService auFunctionService;

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        String requestURI = request.getRequestURI();
        AuUser auUser = (AuUser) request.getSession().getAttribute("auUser");
        Long roleid = auUser.getRoleid();
        List<AuAuthority> auAuthorities = auAuthorityService.getByRoleId(roleid);
        List<AuFunction> functions=new ArrayList<>();
        boolean flag=false;
        for(AuAuthority a:auAuthorities){
            AuFunction function = auFunctionService.getByid(a.getFunctionid());
            functions.add(function);
        }
         for(AuFunction f:functions){
             String funcurl = f.getFuncurl();
             if(funcurl!=null&&!funcurl.equals("")){
             if(requestURI.indexOf(funcurl)>=0){
                 flag=true;
                 break;
             }
             }
         }
         if(flag){
             return true;
         }else{
             response.getWriter().write("<script>alert('无权限');location.href='main.html';</script>");
             return false;
         }

    }
}
