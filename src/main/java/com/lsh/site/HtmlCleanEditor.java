/*
 * Project Name:LSHWebSite
 * File Name:HtmlCleanEditor.java
 * Package Name:com.lsh.site
 * Date:2014年4月10日下午11:01:15
 * Copyright (c) 2014, MYLSH All Rights Reserved.
 *
 */
package com.lsh.site;

import java.beans.PropertyEditorSupport;

import org.jsoup.Jsoup;
import org.jsoup.safety.Whitelist;

/**
 * 
 * ClassName: HtmlCleanEditor <br/>
 * Description: HTML 清理
 * date: 2014年4月24日 下午5:49:21 <br/>
 *
 * @author DuanJie
 * @version 1.0
 * @since JDK 1.6
 */
public class HtmlCleanEditor extends PropertyEditorSupport {

	/** 是否移除两端空白 */
	private boolean trim;

	/** 是否将空转换为null */
	private boolean emptyAsNull;

	/** 白名单 */
	private Whitelist whitelist = Whitelist.none();

	/**
	 * @param trim
	 *            是否移除两端空白
	 * @param emptyAsNull
	 *            是否将空转换为null
	 */
	public HtmlCleanEditor(boolean trim, boolean emptyAsNull) {
		this.trim = trim;
		this.emptyAsNull = emptyAsNull;
	}

	/**
	 * @param trim
	 *            是否移除两端空白
	 * @param emptyAsNull
	 *            是否将空转换为null
	 * @param whitelist
	 *            白名单
	 */
	public HtmlCleanEditor(boolean trim, boolean emptyAsNull, Whitelist whitelist) {
		this.trim = trim;
		this.emptyAsNull = emptyAsNull;
		this.whitelist = whitelist;
	}

	/**
	 * 获取内容
	 * 
	 * @return 内容
	 */
	@Override
	public String getAsText() {
		Object value = getValue();
		return value != null ? value.toString() : "";
	}

	/**
	 * 设置内容
	 * 
	 * @param text
	 *            内容
	 */
	@Override
	public void setAsText(String text) {
		if (text != null) {
			String value = trim ? text.trim() : text;
			value = Jsoup.clean(value, whitelist);
			if (emptyAsNull && "".equals(value)) {
				value = null;
			}
			setValue(value);
		} else {
			setValue(null);
		}
	}

}