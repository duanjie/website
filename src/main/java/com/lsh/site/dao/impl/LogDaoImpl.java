/*
 * Project Name:LSHWebSite
 * File Name:LogDaoImpl.java
 * Package Name:com.lsh.site.dao.impl
 * Date:2014年6月3日下午3:20:02
 * Copyright (c) 2014, MYLSH All Rights Reserved.
 *
 */
package com.lsh.site.dao.impl;

import javax.persistence.FlushModeType;

import org.springframework.stereotype.Repository;

import com.lsh.site.dao.LogDao;
import com.lsh.site.entity.Log;

/**
 * ClassName: LogDaoImpl <br/>
 * Description: 日志Dao实现 <br/>
 * date: 2014年6月3日 下午3:20:02 <br/>
 *
 * @author DuanJie
 * @version 1.0
 * @since JDK 1.6
 */
@Repository("logDaoImpl")
public class LogDaoImpl extends BaseDaoImpl<Log, Long> implements LogDao{

	public void deleteAll() {
		String jpql = "delete from Log log";
		entityManager.createQuery(jpql).setFlushMode(FlushModeType.COMMIT).executeUpdate();
	}
}
