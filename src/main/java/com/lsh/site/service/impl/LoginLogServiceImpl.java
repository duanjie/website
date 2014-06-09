/*
 * Project Name:LSHWebSite
 * File Name:LoginLogServiceImpl.java
 * Package Name:com.lsh.site.service.impl
 * Date:2014年6月4日上午9:24:24
 * Copyright (c) 2014, MYLSH All Rights Reserved.
 *
 */
package com.lsh.site.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lsh.site.dao.LoginLogDao;
import com.lsh.site.entity.LoginLog;
import com.lsh.site.service.LoginLogService;

/**
 * ClassName: LoginLogServiceImpl <br/>
 * Description: 登陆日志 Service <br/>
 * date: 2014年6月4日 上午9:24:24 <br/>
 *
 * @author DuanJie
 * @version 1.0
 * @since JDK 1.6
 */
@Service("loginLogServiceImpl")
public class LoginLogServiceImpl extends BaseServiceImpl<LoginLog, Long> implements LoginLogService{
	
	@Resource(name="loginLogDaoImpl")
	public void setBaseDao(LoginLogDao loginLogDao) {
		super.setBaseDao(loginLogDao);
	}
}
