/*
 * Project Name:LSHWebSite
 * File Name:LogDao.java
 * Package Name:com.lsh.site.dao
 * Date:2014年6月3日下午3:15:54
 * Copyright (c) 2014, MYLSH All Rights Reserved.
 *
 */
package com.lsh.site.dao;

import com.lsh.site.entity.Log;

/**
 * ClassName: LogDao <br/>
 * Description: 日志 Dao <br/>
 * date: 2014年6月3日 下午3:15:54 <br/>
 *
 * @author DuanJie
 * @version 1.0
 * @since JDK 1.6
 */
public interface LogDao extends BaseDao<Log, Long>{
	
	/**
	 * 
	 * deleteAll:删除所有日志. <br/>
	 * 
	 */
	public void deleteAll();
}
