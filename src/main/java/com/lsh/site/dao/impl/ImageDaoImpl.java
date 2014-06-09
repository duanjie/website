/*
 * Project Name:LSHWebSite
 * File Name:ImageDaoImpl.java
 * Package Name:com.lsh.site.dao.impl
 * Date:2014年5月30日上午9:39:12
 * Copyright (c) 2014, MYLSH All Rights Reserved.
 *
 */
package com.lsh.site.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.lsh.site.dao.ImageDao;
import com.lsh.site.entity.Image;

/**
 * ClassName: ImageDaoImpl <br/>
 * Description: 图片Dao实现
 * date: 2014年5月30日 上午9:39:12 <br/>
 *
 * @author DuanJie
 * @version 1.0
 * @since JDK 1.6
 */
@Repository("imageDaoImpl")
public class ImageDaoImpl extends BaseDaoImpl<Image, Long> implements ImageDao{

	public void cancelTheCover(Long albumId) {
		String hql = "update Image Set isCover = 0 where isCover = 1  and album.id = " + albumId;
		entityManager.createQuery(hql).executeUpdate();
	}

	
	public Image findAlbumCoverByAlbumId(Long albumId) {
		String hql ="from Image img where img.isCover = 1 and img.album.id = " + albumId;
		@SuppressWarnings("unchecked")
		List<Image> listImage = entityManager.createQuery(hql).getResultList();
		if(listImage != null && listImage.size() > 0){
			return listImage.get(0);
		}
		return null;
	}
	
}
