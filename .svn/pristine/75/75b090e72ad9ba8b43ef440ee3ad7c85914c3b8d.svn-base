/*
 * Project Name:LSHWebSite
 * File Name:AlbumServiceImpl.java
 * Package Name:com.lsh.site.service.impl
 * Date:2014年5月27日下午2:22:20
 * Copyright (c) 2014, MYLSH All Rights Reserved.
 *
 */
package com.lsh.site.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lsh.site.dao.AlbumDao;
import com.lsh.site.entity.Album;
import com.lsh.site.service.AlbumService;

/**
 * ClassName: AlbumServiceImpl <br/>
 * Description: 相册Service 实现
 * date: 2014年5月27日 下午2:22:20 <br/>
 *
 * @author DuanJie
 * @version 1.0
 * @since JDK 1.6
 */
@Service("albumServiceImpl")
public class AlbumServiceImpl extends BaseServiceImpl<Album, Long> implements AlbumService{
	
	@Resource(name="albumDaoImpl")
	public void setBaseDao(AlbumDao albumDao) {
		super.setBaseDao(albumDao);
	}
}
