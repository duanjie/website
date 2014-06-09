/*
 * Project Name:LSHWebSite
 * File Name:AboutUsServiceImpl.java
 * Package Name:com.lsh.site.service.impl
 * Date:2014年5月9日上午9:40:15
 * Copyright (c) 2014, MYLSH All Rights Reserved.
 *
 */
package com.lsh.site.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;

import com.lsh.site.dao.AboutUsDao;
import com.lsh.site.entity.AboutUs;
import com.lsh.site.service.AboutUsService;

/**
 * ClassName: AboutUsServiceImpl <br/>
 * Description: 类描述
 * date: 2014年5月9日 上午9:40:15 <br/>
 *
 * @author YangEnHua
 * @version 1.0
 * @since JDK 1.6
 */
@Repository("aboutUsServiceImpl")
public class AboutUsServiceImpl extends BaseServiceImpl<AboutUs, Long> implements AboutUsService{
	
	@Resource(name = "aboutUsDaoImpl")
	public void setBaseDao(AboutUsDao adoutUs) {
		super.setBaseDao(adoutUs);
	}

}
