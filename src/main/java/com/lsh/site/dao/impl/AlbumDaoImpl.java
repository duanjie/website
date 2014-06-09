/*
 * Project Name:LSHWebSite
 * File Name:AlbumDaoImpl.java
 * Package Name:com.lsh.site.dao.impl
 * Date:2014年5月22日下午3:26:05
 * Copyright (c) 2014, MYLSH All Rights Reserved.
 *
 */
package com.lsh.site.dao.impl;

import org.springframework.stereotype.Repository;

import com.lsh.site.dao.AlbumDao;
import com.lsh.site.entity.Album;

/**
 * ClassName: AlbumDaoImpl <br/>
 * Description: 相册 Dao
 * date: 2014年5月22日 下午3:26:05 <br/>
 *
 * @author DuanJie
 * @version 1.0
 * @since JDK 1.6
 */
@Repository("albumDaoImpl")
public class AlbumDaoImpl extends BaseDaoImpl<Album, Long> implements AlbumDao{

}
