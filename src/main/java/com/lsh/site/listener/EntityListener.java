/*
 * Project Name:LSHWebSite
 * File Name:EntityListener.java
 * Package Name:com.lsh.site.listener
 * Date:2014年4月25日上午9:51:10
 * Copyright (c) 2014, MYLSH All Rights Reserved.
 *
 */
package com.lsh.site.listener;

import java.util.Date;

import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;

import com.lsh.site.entity.BaseEntity;


/**
 * ClassName: EntityListener <br/>
 * Description: 创建日期、修改日期处理
 * date: 2014年4月25日 上午9:51:10 <br/>
 *
 * @author DuanJie
 * @version 1.0
 * @since JDK 1.6
 */
public class EntityListener {

	/**
	 * 保存前处理
	 * 
	 * @param entity
	 *            基类
	 */
	@PrePersist
	public void prePersist(BaseEntity entity) {
		entity.setCreateDate(new Date());
		entity.setModifyDate(new Date());
	}

	/**
	 * 更新前处理
	 * 
	 * @param entity
	 *            基类
	 */
	@PreUpdate
	public void preUpdate(BaseEntity entity) {
		entity.setModifyDate(new Date());
	}

}