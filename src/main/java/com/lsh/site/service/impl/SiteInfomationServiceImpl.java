/*
 * Project Name:LSHWebSite
 * File Name:SiteInfomationServiceImpl.java
 * Package Name:com.lsh.site.service.impl
 * Date:2014年5月6日下午1:51:05
 * Copyright (c) 2014, MYLSH All Rights Reserved.
 *
 */
package com.lsh.site.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lsh.site.dao.SiteInfomationDao;
import com.lsh.site.entity.SiteInformation;
import com.lsh.site.service.SiteInformationService;

/**
 * ClassName: SiteInfomationServiceImpl <br/>
 * Description: 类描述
 * date: 2014年5月6日 下午1:51:05 <br/>
 *
 * @author YangEnHua
 * @version 1.0
 * @since JDK 1.6
 */
@Service("siteInfomationServiceImpl")
public class SiteInfomationServiceImpl extends BaseServiceImpl<SiteInformation, Long> implements SiteInformationService{

	
	@Resource(name = "siteInfomationDaoImpl")
	public void setBaseDao(SiteInfomationDao siteInfomationDao) {
		super.setBaseDao(siteInfomationDao);
	}
	
}
