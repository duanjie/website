/*
 * Project Name:LSHWebSite
 * File Name:ImageDao.java
 * Package Name:com.lsh.site.dao
 * Date:2014年5月30日上午9:38:22
 * Copyright (c) 2014, MYLSH All Rights Reserved.
 *
 */
package com.lsh.site.dao;

import com.lsh.site.entity.Image;

/**
 * ClassName: ImageDao <br/>
 * Description: 图片Dao <br/>
 * date: 2014年5月30日 上午9:38:22 <br/>
 * 
 * @author DuanJie
 * @version 1.0
 * @since JDK 1.6
 */
public interface ImageDao extends BaseDao<Image, Long> {

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
