/*
 * Project Name:LSHWebSite
 * File Name:TestController.java
 * Package Name:com.lsh.site.controller.site
 * Date:2014年4月25日上午11:08:50
 * Copyright (c) 2014, MYLSH All Rights Reserved.
 *
 */
package com.lsh.site.controller.site;

import javax.annotation.Resource;


import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.lsh.site.entity.Test;
import com.lsh.site.service.TestService;

/**
 * ClassName: TestController <br/>
 * Description: Test Controller date: 2014年4月25日 上午11:08:50 <br/>
 * 
 * @author DuanJie
 * @version 1.0
 * @since JDK 1.6
 */
@Controller("testController")
@RequestMapping("/test")
public class TestController extends BaseController {

	@Resource(name = "testServiceImpl")
	private TestService testService;

	/**
	 * 列表
	 */
	@RequestMapping(value = "list",method = RequestMethod.GET)
	public String list(Long id, ModelMap model) {
		Test test = testService.find(id);
		model.addAttribute("test", test);
		return "/test/list";
	}
}
