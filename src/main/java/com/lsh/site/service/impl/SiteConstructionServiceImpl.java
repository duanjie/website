/*
 * Project Name:LSHWebSite
 * File Name:SiteConstructionServiceImpl.java
 * Package Name:com.lsh.site.service.impl
 * Date:2014年5月9日上午10:55:14
 * Copyright (c) 2014, MYLSH All Rights Reserved.
 *
 */
package com.lsh.site.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lsh.site.dao.SiteConstructionDao;
import com.lsh.site.entity.SiteConstruction;
import com.lsh.site.service.SiteConstructionService;

/**
 * ClassName: SiteConstructionServiceImpl <br/>
 * Description: 网站建设Service 实现
 * date: 2014年5月9日 上午10:55:14 <br/>
 *
 * @author DuanJie
 * @version 1.0
 * @since JDK 1.6
 */
@Service("siteConstructionServiceImpl")
public class SiteConstructionServiceImpl extends BaseServiceImpl<SiteConstruction, Long> implements SiteConstructionService{

	@Resource(name = "siteConstructionDaoImpl")
	private SiteConstructionDao siteConstructionDao;
	
	@Resource(name = "siteConstructionDaoImpl")
	public void setBaseDao(SiteConstructionDao siteConstructionDao) {
		super.setBaseDao(siteConstructionDao);
	}
}
