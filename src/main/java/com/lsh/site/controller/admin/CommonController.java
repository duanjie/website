/*
 * Project Name:LSHWebSite
 * File Name:CommonController.java
 * Package Name:com.lsh.site.controller.admin
 * Date:2014年5月8日下午2:50:30
 * Copyright (c) 2014, MYLSH All Rights Reserved.
 *
 */
package com.lsh.site.controller.admin;

  import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lsh.site.entity.Menu;
import com.lsh.site.service.MenuService;

/**
 * ClassName: CommonController <br/>
 * Description: 类描述
 * date: 2014年5月8日 下午2:50:30 <br/>
 *
 * @author YangEnHua
 * @version 1.0
 * @since JDK 1.6
 */
@Controller("commonController")
@RequestMapping(value = "admin")
public class CommonController {
	
	@Resource(name="menuServiceImpl")
	private MenuService menuService;
	
	
	@RequestMapping(value = "/index")
	public String index(){
		return "/admin/index";
	}
	
	@RequestMapping(value = "/left")
	public String left(Model model){
		List<Menu> menuList = menuService.findTopLevelMenus();
		model.addAttribute("menuList", menuList);
		return "/admin/page/common/left";
	}
	

	@RequestMapping(value = "/top")
	public String top(){
		return "/admin/page/common/top";
	}
	
	@RequestMapping(value = "/mainfra")
	public String mainfra(){
		return "/admin/page/common/mainfra";
	}
}
