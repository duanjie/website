/*
 * Project Name:LSHWebSite
 * File Name:AboutUsDaoImpl.java
 * Package Name:com.lsh.site.dao.impl
 * Date:2014年5月9日上午9:29:42
 * Copyright (c) 2014, MYLSH All Rights Reserved.
 *
 */
package com.lsh.site.dao.impl;

import org.springframework.stereotype.Repository;

import com.lsh.site.dao.AboutUsDao;
import com.lsh.site.entity.AboutUs;

/**
 * ClassName: AboutUsDaoImpl <br/>
 * Description: 类描述
 * date: 2014年5月9日 上午9:29:42 <br/>
 *
 * @author YangEnHua
 * @version 1.0
 * @since JDK 1.6
 */

@Repository("aboutUsDaoImpl")
public class AboutUsDaoImpl extends BaseDaoImpl<AboutUs, Long> implements AboutUsDao {

}
