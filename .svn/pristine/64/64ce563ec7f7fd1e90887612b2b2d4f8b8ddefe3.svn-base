/*
 * Project Name:LSHWebSite
 * File Name:RecruitmentImpl.java
 * Package Name:com.lsh.site.service.impl
 * Date:2014年5月23日下午3:14:00
 * Copyright (c) 2014, MYLSH All Rights Reserved.
 *
 */
package com.lsh.site.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;




import com.lsh.site.dao.RecruitmentDao;
import com.lsh.site.entity.Recruitment;
import com.lsh.site.service.RecruitmentService;

/**
 * ClassName: RecruitmentImpl <br/>
 * Description: 类描述
 * date: 2014年5月23日 下午3:14:00 <br/>
 *
 * @author GaoFeiFeng
 * @version 1.0
 * @since JDK 1.6
 */
@Service("recruitmentServiceImpl")
public class RecruitmentServiceImpl extends BaseServiceImpl<Recruitment,Long> implements RecruitmentService {

	@Resource(name="recruitmentDaoImpl")
	public void setBaseDao(RecruitmentDao RecruitmentDao) {
		super.setBaseDao(RecruitmentDao);
	}

}
