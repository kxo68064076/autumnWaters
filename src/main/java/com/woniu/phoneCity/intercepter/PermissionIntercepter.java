package com.woniu.phoneCity.intercepter;

import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class PermissionIntercepter implements HandlerInterceptor {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        //获取请求的路径
        String path = request.getServletPath();
//        System.out.println(path);
        String ip = request.getRemoteHost();
//        System.out.println(ip);

        if (path.contains("login") || path.contains("reg")){
            //如果请求上  有 login 或者 reg  登录和注册
            return true ;
        }

        Object userInfo = request.getSession().getAttribute("userInfo");
        if (userInfo == null){
            //没有登录
            request.setAttribute("errorInfo","请先登录");
            //转发到 登录界面
            request.getRequestDispatcher("WEB-INF/jsp/back-login.jsp").forward(request,response);
            return false ;
        }

        return true;
    }
}
