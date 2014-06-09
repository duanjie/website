/*
 * Project Name:LSHWebSite
 * File Name:LogServiceImpl.java
 * Package Name:com.lsh.site.service.impl
 * Date:2014年6月3日下午3:33:32
 * Copyright (c) 2014, MYLSH All Rights Reserved.
 *
 */
package com.lsh.site.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lsh.site.dao.LogDao;
import com.lsh.site.entity.Log;
import com.lsh.site.service.LogService;

/**
 * ClassName: LogServiceImpl <br/>
 * Description: 日志Service实现 <br/>
 * date: 2014年6月3日 下午3:33:32 <br/>
 *
 * @author DuanJie
 * @version 1.0
 * @since JDK 1.6
 */
@Service("logServiceImpl")
public class LogServiceImpl extends BaseServiceImpl<Log, Long> implements LogService{

	@Resource(name = "logDaoImpl")
	private LogDao logDao;

	@Resource(name = "logDaoImpl")
	public void setBaseDao(LogDao logDao) {
		super.setBaseDao(logDao);
	}

	public void clear() {
		logDao.deleteAll();
	}
}
