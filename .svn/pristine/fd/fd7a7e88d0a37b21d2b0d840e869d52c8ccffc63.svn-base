/*
 * Project Name:LSHWebSite
 * File Name:CcommonController.java
 * Package Name:com.lsh.site.controller.site
 * Date:2014年5月30日上午11:25:00
 * Copyright (c) 2014, MYLSH All Rights Reserved.
 *
 */
package com.lsh.site.controller.site;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lsh.site.entity.Article;
import com.lsh.site.service.ArticleService;

/**
 * ClassName: CcommonController <br/>
 * Description: 类描述 <br/>
 * date: 2014年5月30日 上午11:25:00 <br/>
 *
 * @author xjr
 * @version 1.0
 * @since JDK 1.6
 */
@Controller("siteCommonController")
public class CommonController {
	
	@Resource(name = "articleServiceImpl")
	private ArticleService articleService;
	
	@RequestMapping("/site/{type}")
	public String getContent(@PathVariable String type,Model model){
		Long articleId = null;
		Long articleFooterId=null;
		articleFooterId = 51l;
		Article articleFooter = articleService.find(articleFooterId);
		model.addAttribute("articleFooter", articleFooter);
		if(type.equals("about")){
			articleId = 48l;
			Article article = articleService.find(articleId);
			model.addAttribute("article", article);
			return "/about";
		}else if(type.equals("market")){
			articleId = 49l;
			Article article = articleService.find(articleId);
			model.addAttribute("article", article);
			return "/market";
		}else if(type.equals("construction")){
			articleId = 50l;
			Article article = articleService.find(articleId);
			model.addAttribute("article", article);
			return "/construction";
		}
		
		return "";
	}
}
