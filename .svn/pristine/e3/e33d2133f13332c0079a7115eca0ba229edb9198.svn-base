/*
 * Project Name:LSHWebSite
 * File Name:AccountController.java
 * Package Name:com.lsh.site.controller.site
 * Date:2014年5月5日下午2:50:20
 * Copyright (c) 2014, MYLSH All Rights Reserved.
 *
 */
package com.lsh.site.controller.admin;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.lsh.site.Message;
import com.lsh.site.controller.site.BaseController;
import com.lsh.site.entity.Account;
import com.lsh.site.entity.LoginLog;
import com.lsh.site.service.AccountService;
import com.lsh.site.service.LoginLogService;
import com.lsh.site.util.WebUtils;

/**
 * ClassName: AccountController <br/>
 * Description: 帐号 Controller 
 * date: 2014年5月5日 下午2:50:20 <br/>
 * 
 * @author DuanJie
 * @version 1.0
 * @since JDK 1.6
 */
@Controller("accountController")
@RequestMapping("admin")
public class AccountController extends BaseController {

	@Resource(name = "accountServiceImpl")
	private AccountService accountService;
	
	@Resource(name="loginLogServiceImpl")
	private LoginLogService loginLogService;
	
	/**
	 * 
	 * login:登陆. <br/>
	 * @param account
	 * @param modelMap
	 * @param request
	 * @param redirectAttributes
	 * @return
	 *         String
	 */
	@RequestMapping(value = "login", method = {RequestMethod.POST })
	public String login(Account account, ModelMap modelMap,
			HttpServletRequest request,RedirectAttributes redirectAttributes) {
		LoginLog loginLog = new LoginLog();
		loginLog.setUsername(account.getUsername());
        loginLog.setIp(WebUtils.getIpAddr(request));
        loginLog.setBrowser(request.getHeader("User-Agent"));
		Account accountData = accountService.findByUsername(account.getUsername(),1);
		String view = null;
		loginLog.setStatus(LoginLog.LOGIN_LOG_STATUS_FAILURE);
		if(null == accountData){
			addFlashMessage(redirectAttributes, Message.error("admin.login.error.username"));
			view = "redirect:/admin/showLogin.jhtml";
		}else if(!accountData.getPassword().equals(account.getPassword())){
			addFlashMessage(redirectAttributes, Message.error("admin.login.error.password"));
			view = "redirect:/admin/showLogin.jhtml";
		}else{
			view = "redirect:/admin/index.jhtml";
			request.getSession().setAttribute("account", accountData);
			loginLog.setStatus(LoginLog.LOGIN_lOG_STATUS_SUCCEED);
		}
		
		loginLogService.save(loginLog);
		return view;
	}
	
	@RequestMapping(value = "showLogin", method = { RequestMethod.GET,RequestMethod.POST })
	public String showLogin(){
		return "/admin/login";
	}
	
	@RequestMapping(value = "logout", method = { RequestMethod.GET,RequestMethod.POST })
	public String logout(ModelMap modelMap,HttpServletRequest request){
		request.getSession(true).invalidate();
		return "/admin/login";
	}
	
	
}
