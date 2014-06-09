/*
 * Project Name:LSHWebSite
 * File Name:AboutUsController.java
 * Package Name:com.lsh.site.controller.admin
 * Date:2014年5月9日上午9:43:41
 * Copyright (c) 2014, MYLSH All Rights Reserved.
 *
 */
package com.lsh.site.controller.site;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.lsh.site.entity.AboutUs;
import com.lsh.site.service.AboutUsService;

/**
 * ClassName: AboutUsController <br/>
 * Description: 类描述
 * date: 2014年5月9日 上午9:43:41 <br/>
 *
 * @author YangEnHua
 * @version 1.0
 * @since JDK 1.6
 */

@Controller("aboutController")
public class AboutUsController {
	
	@Resource(name="aboutUsServiceImpl")
	private AboutUsService  aboutUsService;
	
	@RequestMapping(value="about",method=RequestMethod.GET)
	public String showAbout(ModelMap modelMap){
		AboutUs aboutUs = aboutUsService.find(1l);
		modelMap.addAttribute("about", aboutUs);
		modelMap.addAttribute("at", "current_page_item");
		return  "about";
	}
	
	
}
