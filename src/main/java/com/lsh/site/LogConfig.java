/*
 * Project Name:LSHWebSite
 * File Name:LogConfig.java
 * Package Name:com.lsh.site
 * Date:2014年4月10日下午11:01:15
 * Copyright (c) 2014, MYLSH All Rights Reserved.
 *
 */
package com.lsh.site;

import java.io.Serializable;

/**
 * 
 * ClassName: LogConfig <br/>
 * Description: 日志配置
 * date: 2014年4月24日 下午5:52:52 <br/>
 *
 * @author DuanJie
 * @version 1.0
 * @since JDK 1.6
 */
public class LogConfig implements Serializable {

	private static final long serialVersionUID = -1108848647938408402L;

	/** 操作名称 */
	private String operation;

	/** 请求URL */
	private String urlPattern;

	/**
	 * 获取操作名称
	 * 
	 * @return 操作名称
	 */
	public String getOperation() {
		return operation;
	}

	/**
	 * 设置操作名称
	 * 
	 * @param operation
	 *            操作名称
	 */
	public void setOperation(String operation) {
		this.operation = operation;
	}

	/**
	 * 获取请求URL
	 * 
	 * @return 请求URL
	 */
	public String getUrlPattern() {
		return urlPattern;
	}

	/**
	 * 设置请求URL
	 * 
	 * @param urlPattern
	 *            请求URL
	 */
	public void setUrlPattern(String urlPattern) {
		this.urlPattern = urlPattern;
	}

}