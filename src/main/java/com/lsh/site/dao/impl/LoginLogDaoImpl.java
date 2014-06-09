/*
 * Project Name:LSHWebSite
 * File Name:LoginLogDaoImpl.java
 * Package Name:com.lsh.site.dao.impl
 * Date:2014年6月3日下午5:23:39
 * Copyright (c) 2014, MYLSH All Rights Reserved.
 *
 */
package com.lsh.site.dao.impl;

import org.springframework.stereotype.Repository;

import com.lsh.site.dao.LoginLogDao;
import com.lsh.site.entity.LoginLog;

/**
 * ClassName: LoginLogDaoImpl <br/>
 * Description: 登陆日志Dao实现<br/>
 * date: 2014年6月3日 下午5:23:39 <br/>
 *
 * @author DuanJie
 * @version 1.0
 * @since JDK 1.6
 */
@Repository("loginLogDaoImpl")
public class LoginLogDaoImpl extends BaseDaoImpl<LoginLog, Long> implements LoginLogDao{
	
}
