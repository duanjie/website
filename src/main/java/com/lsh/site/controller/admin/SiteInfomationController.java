/*
 * Project Name:LSHWebSite
 * File Name:SiteInfomationController.java
 * Package Name:com.lsh.site.controller.site
 * Date:2014年5月6日下午2:21:12
 * Copyright (c) 2014, MYLSH All Rights Reserved.
 *
 */
package com.lsh.site.controller.admin;


import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.lsh.site.controller.site.BaseController;
import com.lsh.site.entity.SiteInformation;
import com.lsh.site.service.SiteInformationService;

/**
 * ClassName: SiteInfomationController <br/>
 * Description: 类描述 date: 2014年5月6日 下午2:21:12 <br/>
 * 
 * @author YangEnHua
 * @version 1.0
 * @since JDK 1.6
 */

@Controller("siteInfomationController")
@RequestMapping(value = "admin/siteInfomation")
public class SiteInfomationController extends BaseController {

	@Resource(name = "siteInfomationServiceImpl")
	private SiteInformationService siteInformationService;


	
	@RequestMapping(value = "/showEdit", method = RequestMethod.GET)
	public String showEdit(ModelMap modelMap){
		long id = 1l; 
		SiteInformation siteInformation = siteInformationService.find(id);
		modelMap.addAttribute("siteInformation", siteInformation);
		return "/admin/page/site_information/edit_site_information";
	}
	             
	@RequestMapping(value = "/edit", method = RequestMethod.POST)
	public String edit(ModelMap modelMap,SiteInformation siteInformation){
		siteInformationService.update(siteInformation);
		modelMap.addAttribute("siteInformation", siteInformation);
		return "/admin/page/site_information/edit_site_information";
	}
}
