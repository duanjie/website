/*
 * Project Name:LSHWebSite
 * File Name:AuthenticationInterceptor.java
 * Package Name:com.lsh.site.interceptor
 * Date:2014年5月9日下午2:24:19
 * Copyright (c) 2014, MYLSH All Rights Reserved.
 *
 */
package com.lsh.site.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

/**
 * ClassName: AuthenticationInterceptor <br/>
 * Description: 身份验证
 * date: 2014年5月9日 下午2:24:19 <br/>
 *
 * @author DuanJie
 * @version 1.0
 * @since JDK 1.6
 */
public class AuthenticationInterceptor extends HandlerInterceptorAdapter{

	
	@Override  
    public boolean preHandle(HttpServletRequest request,  
            HttpServletResponse response, Object handler) throws Exception { 
		return true;
//        String url=request.getRequestURL().toString();  
//        if(url.endsWith("login.jhtml") || url.endsWith("showLogin.jhtml")){
//        	return true;
//        }
//        if(request.getSession(true).getAttribute("account") != null){
//        	return true;
//        }
//        request.getRequestDispatcher("/admin/login.jsp").forward(request, response);  
//        return false;   
    }
}
