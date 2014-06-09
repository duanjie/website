/*
 * Project Name:LSHWebSite
 * File Name:SiteMarketController.java
 * Package Name:com.lsh.site.controller.admin
 * Date:2014年5月9日上午10:35:34
 * Copyright (c) 2014, MYLSH All Rights Reserved.
 *
 */
package com.lsh.site.controller.admin;

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
 * date: 2014年5月9日 上午10:35:34 <br/>
 *
 * @author DuanJie
 * @version 1.0
 * @since JDK 1.6
 */
@Controller("siteMarketAdminController")
@RequestMapping(value = "admin/siteMarket")
public class SiteMarketController {

	@Resource(name = "siteMarketServiceImpl")
	private SiteMarketService siteMarketService;
	
	@RequestMapping(value = "/list_market", method = RequestMethod.GET)
	public String showEdit(ModelMap modelMap){
		SiteMarket maket = siteMarketService.find(1L);
		modelMap.addAttribute("market", maket);
		return "/admin/page/market/list_market";
	}
	
	@RequestMapping(value = "/edit_market", method = RequestMethod.POST)
	public String editEdit(ModelMap modelMap,SiteMarket siteMarket ){
		SiteMarket maket = siteMarketService.update(siteMarket);
		modelMap.addAttribute("market", maket);
		return "/admin/page/market/list_market";
	}
	
	
}
