/*
 * Project Name:LSHWebSite
 * File Name:DateEditor.java
 * Package Name:com.lsh.site
 * Date:2014年4月10日下午11:01:15
 * Copyright (c) 2014, MYLSH All Rights Reserved.
 *
 */
package com.lsh.site;

import java.beans.PropertyEditorSupport;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.commons.lang.time.DateUtils;

/**
 * 
 * ClassName: DateEditor <br/>
 * Description: 日期类型转换
 * date: 2014年4月24日 下午5:44:58 <br/>
 *
 * @author DuanJie
 * @version 1.0
 * @since JDK 1.6
 */
public class DateEditor extends PropertyEditorSupport {

	/** 默认日期格式 */
	private static final String DEFAULT_DATE_FORMAT = "yyyy-MM-dd HH:mm:ss";

	/** 是否将空转换为null */
	private boolean emptyAsNull;

	/** 日期格式 */
	private String dateFormat = DEFAULT_DATE_FORMAT;

	/**
	 * @param emptyAsNull
	 *            是否将空转换为null
	 */
	public DateEditor(boolean emptyAsNull) {
		this.emptyAsNull = emptyAsNull;
	}

	/**
	 * @param emptyAsNull
	 *            是否将空转换为null
	 * @param dateFormat
	 *            日期格式
	 */
	public DateEditor(boolean emptyAsNull, String dateFormat) {
		this.emptyAsNull = emptyAsNull;
		this.dateFormat = dateFormat;
	}

	/**
	 * 获取日期
	 * 
	 * @return 日期
	 */
	@Override
	public String getAsText() {
		Date value = (Date) getValue();
		return value != null ? new SimpleDateFormat(dateFormat).format(value) : "";
	}

	/**
	 * 设置日期
	 * 
	 * @param text
	 *            字符串
	 */
	@Override
	public void setAsText(String text) {
		if (text == null) {
			setValue(null);
		} else {
			String value = text.trim();
			if (emptyAsNull && "".equals(value)) {
				setValue(null);
			} else {
				try {
					setValue(DateUtils.parseDate(value, CommonAttributes.DATE_PATTERNS));
				} catch (ParseException e) {
					setValue(null);
				}
			}
		}
	}

}