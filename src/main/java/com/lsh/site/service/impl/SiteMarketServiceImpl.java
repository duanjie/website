/*
 * Project Name:LSHWebSite
 * File Name:SiteMarketServiceImpl.java
 * Package Name:com.lsh.site.service.impl
 * Date:2014年5月9日上午10:22:34
 * Copyright (c) 2014, MYLSH All Rights Reserved.
 *
 */
package com.lsh.site.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lsh.site.dao.SiteMarketDao;
import com.lsh.site.entity.SiteMarket;
import com.lsh.site.service.SiteMarketService;

/**
 * ClassName: SiteMarketServiceImpl <br/>
 * Description: 类描述
 * date: 2014年5月9日 上午10:22:35 <br/>
 *
 * @author DuanJie
 * @version 1.0
 * @since JDK 1.6
 */
@Service("siteMarketServiceImpl")
public class SiteMarketServiceImpl extends BaseServiceImpl<SiteMarket, Long> implements SiteMarketService{

	@Resource(name = "siteMarketDaoImpl")
	private SiteMarketDao siteMarketDao;
	
	@Resource(name = "siteMarketDaoImpl")
	public void setBaseDao(SiteMarketDao siteMarketDao) {
		super.setBaseDao(siteMarketDao);
	}
	
}
