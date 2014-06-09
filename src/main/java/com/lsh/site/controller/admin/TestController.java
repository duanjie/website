/*
 * Project Name:LSHWebSite
 * File Name:TestController.java
 * Package Name:com.lsh.site.controller.admin
 * Date:2014年5月23日下午2:28:09
 * Copyright (c) 2014, MYLSH All Rights Reserved.
 *
 */
package com.lsh.site.controller.admin;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.lsh.site.Message;
import com.lsh.site.Page;
import com.lsh.site.Pageable;
import com.lsh.site.controller.site.BaseController;
import com.lsh.site.entity.Article;
import com.lsh.site.service.ArticleService;

/**
 * ClassName: TestController <br/>
 * Description: 类描述
 * date: 2014年5月23日 下午2:28:09 <br/>
 *
 * @author GaoFeiFeng
 * @version 1.0
 * @since JDK 1.6
 */
public class TestController extends BaseController{
	@Controller("TestController")
	@RequestMapping("admin/Test")
	public class ArticleController extends BaseController{
		
		
		@Resource(name = "TestServiceImpl")
		ArticleService articleService;
		@RequestMapping(value = "Test")
		public String list(Pageable pageable,Model model){
			Page<Article> page1 =  articleService.findPage(pageable);
			model.addAttribute("page1", page1);
			return "/admin/page/article/Test";
		}
		
		
	
		
	
	}
	
}
