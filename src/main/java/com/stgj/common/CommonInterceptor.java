package com.stgj.common;

import com.stgj.entity.User;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by gfj43958 on 2017/5/27.
 * time:14:38
 * author:GuoFangjun
 */
public class CommonInterceptor extends HandlerInterceptorAdapter {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        String requestUri = request.getRequestURI();
        String contextPath = request.getContextPath();

        User user =(User) request.getSession().getAttribute("user");
        if(user==null){
            response.sendRedirect("index");
            return false;
        }
        return true;
    }


}
