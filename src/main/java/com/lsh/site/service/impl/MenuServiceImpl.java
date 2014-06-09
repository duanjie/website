/*
 * Project Name:LSHWebSite
 * File Name:MenuServiceImpl.java
 * Package Name:com.lsh.site.service.impl
 * Date:2014年6月3日下午2:54:57
 * Copyright (c) 2014, MYLSH All Rights Reserved.
 *
 */
package com.lsh.site.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lsh.site.dao.MenuDao;
import com.lsh.site.entity.Menu;
import com.lsh.site.service.MenuService;

/**
 * ClassName: MenuServiceImpl <br/>
 * Description: 类描述 <br/>
 * date: 2014年6月3日 下午2:54:57 <br/>
 *
 * @author YangEnHua
 * @version 1.0
 * @since JDK 1.6
 */


@Service("menuServiceImpl")
public class MenuServiceImpl extends BaseServiceImpl< Menu, Long> implements MenuService {

		@Resource(name="menuDaoImpl")
		public void setBaseDao(MenuDao menuDao ) {
			super.setBaseDao(menuDao);
		}
		
		@Resource(name="menuDaoImpl")
		private MenuDao menuDao;

		public List<Menu> findTopLevelMenus() {
			return menuDao.findTopLevelMenus();
		}
	 
}
