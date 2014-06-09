/*
 * Project Name:LSHWebSite
 * File Name:LogConfigService.java
 * Package Name:com.lsh.site.service
 * Date:2014年6月3日下午2:53:12
 * Copyright (c) 2014, MYLSH All Rights Reserved.
 *
 */
package com.lsh.site.service;

import java.util.List;

import com.lsh.site.LogConfig;


/**
 * ClassName: LogConfigService <br/>
 * Description: 日志配置Service<br/>
 * date: 2014年6月3日 下午2:53:12 <br/>
 *
 * @author DuanJie
 * @version 1.0
 * @since JDK 1.6
 */
public interface LogConfigService {
	
	List<LogConfig> getAll();
}
