/*
 * Project Name:LSHWebSite
 * File Name:TestServiceImpl.java
 * Package Name:com.lsh.site.service.impl
 * Date:2014年4月25日上午11:06:54
 * Copyright (c) 2014, MYLSH All Rights Reserved.
 *
 */
package com.lsh.site.service.impl;

import javax.annotation.Resource;


import org.springframework.stereotype.Service;

import com.lsh.site.dao.TestDao;
import com.lsh.site.entity.Test;
import com.lsh.site.service.TestService;

/**
 * ClassName: TestServiceImpl <br/>
 * Description: 类描述
 * date: 2014年4月25日 上午11:06:54 <br/>
 *
 * @author DuanJie
 * @version 1.0
 * @since JDK 1.6
 */
@Service("testServiceImpl")
public class TestServiceImpl extends BaseServiceImpl<Test, Long> implements TestService{

	
	@Resource(name = "testDaoImpl")
	public void setBaseDao(TestDao testDao) {
		super.setBaseDao(testDao);
	}
}
