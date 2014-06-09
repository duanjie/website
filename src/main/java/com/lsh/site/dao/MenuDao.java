/*
 * Project Name:LSHWebSite
 * File Name:MenuDao.java
 * Package Name:com.lsh.site.dao
 * Date:2014年5月5日下午2:39:01
 * Copyright (c) 2014, MYLSH All Rights Reserved.
 *
 */
package com.lsh.site.dao;

import java.util.List;

import com.lsh.site.entity.Menu;

/**
 * ClassName: MenuDao <br/>
 * Description: 菜单Dao
 * date: 2014年5月5日 下午2:39:01 <br/>
 *
 * @author DuanJie
 * @version 1.0
 * @since JDK 1.6
 */
public interface MenuDao extends BaseDao<Menu, Long>{

	
	public List<Menu> findTopLevelMenus();
}
