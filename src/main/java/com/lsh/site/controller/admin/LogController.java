/*
 * Project Name:LSHWebSite
 * File Name:LogController.java
 * Package Name:com.lsh.site.controller.admin
 * Date:2014年6月6日上午10:18:16
 * Copyright (c) 2014, MYLSH All Rights Reserved.
 *
 */
package com.lsh.site.controller.admin;


import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lsh.site.Page;
import com.lsh.site.Pageable;
import com.lsh.site.controller.site.BaseController;
import com.lsh.site.entity.Log;
import com.lsh.site.entity.LoginLog;
import com.lsh.site.service.LogService;
import com.lsh.site.service.LoginLogService;

/**
 * ClassName: LogController <br/>
 * Description: 日志 Controller <br/>
 * date: 2014年6月6日 上午10:18:16 <br/>
 *
 * @author DuanJie
 * @version 1.0
 * @since JDK 1.6
 */
@Controller("logController")
@RequestMapping("admin/log")
public class LogController extends BaseController{

	
	@Resource(name="logServiceImpl")
	private LogService logService;
	
	@Resource(name="loginLogServiceImpl")
	private LoginLogService loginLogService;
	
	/**
	 * 
	 * list:操作日志查询. <br/>
	 * TODO url:login/list.jhtml .<br/>
	 * @param model
	 * @param pageable
	 * @return
	 *         String
	 */
	@RequestMapping(value = "list")
	public String list(Model model,Pageable pageable){
		Page<Log> page = logService.findPage(pageable);
		model.addAttribute("page", page);
		return "/admin/page/log/list";
	}
	
	/**
	 * 
	 * list:登陆日志查询. <br/>
	 * TODO url:login/list.jhtml .<br/>
	 * @param pageable
	 * @param model
	 * @return
	 *         String
	 */
	@RequestMapping(value = "login/list")
	public String list(Pageable pageable,Model model){
		Page<LoginLog> page = loginLogService.findPage(pageable);
		model.addAttribute("page", page);
		return "/admin/page/login_log/list";
	}
}
