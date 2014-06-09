/*
 * Project Name:LSHWebSite
 * File Name:LogConfigServiceImpl.java
 * Package Name:com.lsh.site.service.impl
 * Date:2014年6月3日下午2:54:37
 * Copyright (c) 2014, MYLSH All Rights Reserved.
 *
 */
package com.lsh.site.service.impl;

import java.io.File;
import java.util.ArrayList;
import java.util.List;






import org.dom4j.Document;
import org.dom4j.io.SAXReader;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.core.io.ClassPathResource;
import org.springframework.stereotype.Service;

import com.lsh.site.CommonAttributes;
import com.lsh.site.LogConfig;
import com.lsh.site.service.LogConfigService;

/**
 * ClassName: LogConfigServiceImpl <br/>
 * Description: 日志配置Service实现 <br/>
 * date: 2014年6月3日 下午2:54:37 <br/>
 *
 * @author DuanJie
 * @version 1.0
 * @since JDK 1.6
 */
@Service("logConfigServiceImpl")
public class LogConfigServiceImpl implements LogConfigService {

	
	
	@Cacheable("logConfig")
	public List<LogConfig> getAll() {
		try {
			File shopxxXmlFile = new ClassPathResource(CommonAttributes.LSH_WEB_SITE_XML_PATH).getFile();
			Document document = new SAXReader().read(shopxxXmlFile);
			@SuppressWarnings("unchecked")
			List<org.dom4j.Element> elements = document.selectNodes("/website/logConfig");
			List<LogConfig> logConfigs = new ArrayList<LogConfig>();
			for (org.dom4j.Element element : elements) {
				String operation = element.attributeValue("operation");
				String urlPattern = element.attributeValue("urlPattern");
				LogConfig logConfig = new LogConfig();
				logConfig.setOperation(operation);
				logConfig.setUrlPattern(urlPattern);
				logConfigs.add(logConfig);
			}
			return logConfigs;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

}
