/*
 * Project Name:LSHWebSite
 * File Name:NoticeDaoImpl.java
 * Package Name:com.lsh.site.dao.impl
 * Date:2014年5月29日上午10:35:29
 * Copyright (c) 2014, MYLSH All Rights Reserved.
 *
 */
package com.lsh.site.dao.impl;

import org.springframework.stereotype.Repository;

import com.lsh.site.dao.NoticeDao;
import com.lsh.site.entity.Notice;

/**
 * ClassName: NoticeDaoImpl <br/>
 * Description: 类描述
 * date: 2014年5月29日 上午10:35:29 <br/>
 *
 * @author GaoFeiFeng
 * @version 1.0
 * @since JDK 1.6
 */

@Repository("noticeDaoImpl")
public class NoticeDaoImpl extends BaseDaoImpl<Notice,Long> implements NoticeDao{

}
