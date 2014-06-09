/*
 * Project Name:LSHWebSite
 * File Name:TestDaoDaoImpl.java
 * Package Name:com.lsh.site.dao.impl
 * Date:2014年4月25日上午11:01:38
 * Copyright (c) 2014, MYLSH All Rights Reserved.
 *
 */
package com.lsh.site.dao.impl;

import org.springframework.stereotype.Repository;

import com.lsh.site.dao.TestDao;
import com.lsh.site.entity.Test;

/**
 * ClassName: TestDaoDaoImpl <br/>
 * Description: Test DaoImpl
 * date: 2014年4月25日 上午11:01:38 <br/>
 *
 * @author DuanJie
 * @version 1.0
 * @since JDK 1.6
 */
@Repository("testDaoImpl")
public class TestDaoDaoImpl extends BaseDaoImpl<Test, Long> implements TestDao{

}
