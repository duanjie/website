/*
 * Project Name:LSHWebSite
 * File Name:SiteConstructionController.java
 * Package Name:com.lsh.site.controller.site
 * Date:2014年5月9日下午3:41:53
 * Copyright (c) 2014, MYLSH All Rights Reserved.
 *
 */
package com.lsh.site.controller.site;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.lsh.site.entity.SiteConstruction;
import com.lsh.site.service.SiteConstructionService;

/**
 * ClassName: SiteConstructionController <br/>
 * Description: 类描述
 * date: 2014年5月9日 下午3:41:53 <br/>
 *
 * @author YangEnHua
 * @version 1.0
 * @since JDK 1.6
 */
@Controller("siteConstructionController")
public class SiteConstructionController {

	
	@Resource(name = "siteConstructionServiceImpl")
	private SiteConstructionService siteConstructionService;

	@RequestMapping(value = "/construction", method = RequestMethod.GET)
	public String info(ModelMap modelMap) {
		Long id = 1l;
		SiteConstruction siteConstruction = siteConstructionService.find(id);
		modelMap.addAttribute("siteConstruction", siteConstruction);
		modelMap.addAttribute("con","current_page_item");
		return "construction";
	}
}
