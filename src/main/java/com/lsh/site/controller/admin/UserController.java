/*
 * Project Name:LSHWebSite
 * File Name:UserController.java
 * Package Name:com.lsh.site.controller.admin
 * Date:2014年5月23日下午1:48:46
 * Copyright (c) 2014, MYLSH All Rights Reserved.
 *
 */
package com.lsh.site.controller.admin;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lsh.site.Page;
import com.lsh.site.Pageable;
import com.lsh.site.entity.User;

/**
 * ClassName: UserController <br/>
 * Description: 类描述
 * date: 2014年5月23日 下午1:48:46 <br/>
 *
 * @author GaoFeiFeng
 * @version 1.0
 * @since JDK 1.6
 */

@Controller("user")
@RequestMapping("admin/user")
public class UserController {
	
	
	@RequestMapping(value = "list")
	public String list(Pageable pageable,Model model){
		
		List<User> list = new ArrayList<User>();
		
			User user=new User();
			user.setName("高飞峰");
			list.add(user);
			
			User user1=new User();
			user1.setName("段杰");
			list.add(user1);
			model.addAttribute("list", list);
			
//		Page page1 =  articleService1.findPage(pageable);
//		model.addAttribute("page1", page1);
		return "/admin/page/user/list";
	}
}
