/*
 * Project Name:LSHWebSite
 * File Name:ImageServiceImpl.java
 * Package Name:com.lsh.site.service.impl
 * Date:2014年5月30日上午9:52:36
 * Copyright (c) 2014, MYLSH All Rights Reserved.
 *
 */
package com.lsh.site.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lsh.site.dao.ImageDao;
import com.lsh.site.entity.Image;
import com.lsh.site.service.ImageService;

/**
 * ClassName: ImageServiceImpl <br/>
 * Description: 图片ServiceImpl
 * date: 2014年5月30日 上午9:52:36 <br/>
 *
 * @author DuanJie
 * @version 1.0
 * @since JDK 1.6
 */
@Service("imageServiceImpl")
public class ImageServiceImpl extends BaseServiceImpl<Image, Long> implements ImageService{
		
	@Resource(name="imageDaoImpl")
	private ImageDao imageDao;
	
	@Resource(name="imageDaoImpl")
	public void setBaseDao(ImageDao imageDao) {
		super.setBaseDao(imageDao);
	}

	
	@Transactional
	public void cancelTheCover(Long albumId) {
		imageDao.cancelTheCover(albumId);
	}


	@Transactional(readOnly = true)
	public Image findAlbumCoverByAlbumId(Long albumId) {
		return imageDao.findAlbumCoverByAlbumId(albumId);
	}
}
