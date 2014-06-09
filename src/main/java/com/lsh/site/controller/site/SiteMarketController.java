/*
 * Project Name:LSHWebSite
 * File Name:SiteMarketController.java
 * Package Name:com.lsh.site.controller.site
 * Date:2014年5月9日下午1:59:16
 * Copyright (c) 2014, MYLSH All Rights Reserved.
 *
 */
package com.lsh.site.controller.site;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.lsh.site.entity.SiteMarket;
import com.lsh.site.service.SiteMarketService;

/**
 * ClassName: SiteMarketController <br/>
 * Description: 类描述
 * date: 2014年5月9日 下午1:59:16 <br/>
 *
 * @author YangEnHua
 * @version 1.0
 * @since JDK 1.6
 */
@Controller("siteMarketController")
public class SiteMarketController {
	
	@Resource(name = "siteMarketServiceImpl")
	private SiteMarketService siteMarketService;
	
	@RequestMapping(value = "/market", method = RequestMethod.GET)
	public String showEdit(ModelMap modelMap){
		SiteMarket maket = siteMarketService.find(1L);
		modelMap.addAttribute("market", maket);
		modelMap.addAttribute("mk","current_page_item");
		return "market";
	}
	
}
