/*
 * Project Name:LSHWebSite
 * File Name:SiteInfomationDaoImpl.java
 * Package Name:com.lsh.site.dao.impl
 * Date:2014年5月6日下午1:50:01
 * Copyright (c) 2014, MYLSH All Rights Reserved.
 *
 */
package com.lsh.site.dao.impl;


import org.springframework.stereotype.Repository;

import com.lsh.site.dao.SiteInfomationDao;
import com.lsh.site.entity.SiteInformation;

/**
 * ClassName: SiteInfomationDaoImpl <br/>
 * Description: 类描述
 * date: 2014年5月6日 下午1:50:01 <br/>
 *
 * @author YangEnHua
 * @version 1.0
 * @since JDK 1.6
 */

@Repository("siteInfomationDaoImpl")
public class SiteInfomationDaoImpl extends BaseDaoImpl<SiteInformation, Long>  implements SiteInfomationDao{

	
}
