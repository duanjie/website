/*
 * Project Name:LSHWebSite
 * File Name:ImageService.java
 * Package Name:com.lsh.site.service
 * Date:2014年5月30日上午9:45:13
 * Copyright (c) 2014, MYLSH All Rights Reserved.
 *
 */
package com.lsh.site.service;

import com.lsh.site.entity.Image;

/**
 * ClassName: ImageService <br/>
 * Description: Image Service
 * date: 2014年5月30日 上午9:45:13 <br/>
 *
 * @author DuanJie
 * @version 1.0
 * @since JDK 1.6
 */
public interface ImageService extends BaseService<Image, Long>{

	/**
	 * 
	 * cancelTheCover:取消指定相册下的封面. <br/>
	 * @param albumId
	 *         void
	 */
	public void cancelTheCover(Long albumId);
	
	/**
	 * 
	 * findAlbumCoverByAlbumId:根据相册Id查找相册封面. <br/>
	 * TODO(这里描述这个方法适用条件 – 可选).<br/>
	 * @param albumId
	 * @return
	 *         Image
	 */
	public Image findAlbumCoverByAlbumId(Long albumId);
}
