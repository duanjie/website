/*
 * Project Name:LSHWebSite
 * File Name:PluginServiceImpl.java
 * Package Name:com.lsh.site.service.impl
 * Date:2014年5月16日上午11:55:38
 * Copyright (c) 2014, MYLSH All Rights Reserved.
 *
 */
package com.lsh.site.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;




import org.springframework.stereotype.Service;

import com.lsh.site.plugin.StoragePlugin;
import com.lsh.site.service.PluginService;

/**
 * ClassName: PluginServiceImpl <br/>
 * Description: 插件 Service
 * date: 2014年5月16日 上午11:55:38 <br/>
 *
 * @author DuanJie
 * @version 1.0
 * @since JDK 1.6
 */
@Service("pluginServiceImpl")
public class PluginServiceImpl implements PluginService{

	
	@Resource
	private List<StoragePlugin> storagePlugins = new ArrayList<StoragePlugin>();
	
	public List<StoragePlugin> getStoragePlugins(boolean isEnabled) {
		return storagePlugins;
	}

}
