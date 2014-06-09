/*
 * Project Name:LSHWebSite
 * File Name:NoticeServiceImpl.java
 * Package Name:com.lsh.site.service.impl
 * Date:2014年5月29日上午9:38:12
 * Copyright (c) 2014, MYLSH All Rights Reserved.
 *
 */
package com.lsh.site.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lsh.site.dao.NoticeDao;

import com.lsh.site.entity.Notice;
import com.lsh.site.service.NoticeService;

/**
 * ClassName: NoticeServiceImpl <br/>
 * Description: 类描述
 * date: 2014年5月29日 上午9:38:12 <br/>
 *
 * @author GaoFeiFeng
 * @version 1.0
 * @since JDK 1.6
 */
@Service("noticeServiceImpl")
public class NoticeServiceImpl extends BaseServiceImpl<Notice,Long> implements NoticeService{
	@Resource(name="noticeDaoImpl")
	public void setBaseDao(NoticeDao NoticeDao) {
		super.setBaseDao(NoticeDao);
	}
}
