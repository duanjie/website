/*
 * Project Name:LSHWebSite
 * File Name:ProjetosController.java
 * Package Name:projetos
 * Date:2014年5月12日上午9:19:22
 * Copyright (c) 2014, MYLSH All Rights Reserved.
 *
 */
package com.lsh.site.controller.site;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * ClassName: ProjetosController <br/>
 * Description: 类描述
 * date: 2014年5月12日 上午9:19:22 <br/>
 *
 * @author YangEnHua
 * @version 1.0
 * @since JDK 1.6
 */

@Controller("projetosController")
public class ProjetosController {
	
	@RequestMapping(value="projetos",method=RequestMethod.GET)
	public String show(ModelMap map){
		map.addAttribute("pro", "current_page_item");
		return "projetos";
	}
}
