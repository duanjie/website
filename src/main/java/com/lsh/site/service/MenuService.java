/*
 * Project Name:LSHWebSite
 * File Name:MenuService.java
 * Package Name:com.lsh.site.service
 * Date:2014年6月3日下午2:47:18
 * Copyright (c) 2014, MYLSH All Rights Reserved.
 *
 */
package com.lsh.site.service;

import java.util.List;

import com.lsh.site.entity.Menu;

/**
 * ClassName: MenuService <br/>
 * Description: 类描述 <br/>
 * date: 2014年6月3日 下午2:47:18 <br/>
 *
 * @author YangEnHua
 * @version 1.0
 * @since JDK 1.6
 */

public interface MenuService extends BaseService<Menu, Long> {
	
	public  List<Menu> findTopLevelMenus();

}
