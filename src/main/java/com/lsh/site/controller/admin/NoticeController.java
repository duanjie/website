/*
 * Project Name:LSHWebSite
 * File Name:NoticeController.java
 * Package Name:com.lsh.site.controller.admin
 * Date:2014年5月29日上午9:33:27
 * Copyright (c) 2014, MYLSH All Rights Reserved.
 *
 */
package com.lsh.site.controller.admin;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lsh.site.Filter;
import com.lsh.site.Message;
import com.lsh.site.Page;
import com.lsh.site.Pageable;
import com.lsh.site.Filter.Operator;
import com.lsh.site.controller.site.BaseController;
import com.lsh.site.entity.Article;
import com.lsh.site.entity.BaseEntity;
import com.lsh.site.entity.Notice;
import com.lsh.site.service.NoticeService;


/**
 * ClassName: NoticeController <br/>
 * Description: 类描述
 * date: 2014年5月29日 上午9:33:27 <br/>
 *
 * @author GaoFeiFeng
 * @version 1.0
 * @since JDK 1.6
 */

@Controller("noticeController")
@RequestMapping("admin/notice")
public class NoticeController extends BaseController{
	
	@Resource(name = "noticeServiceImpl")
	private NoticeService noticeService;
	
	private DateFormat format = new SimpleDateFormat("yyyy-MM-dd");   
	
	@RequestMapping(value = "list")
	public String list(Pageable pageable,String title, String startDateP,String endDateP,Model model){
		try {
			if(startDateP!=null&&endDateP!=null){
				Date startDate =  format.parse(startDateP);
			    Date endDate =  format.parse(endDateP);
				Filter startDateFileter = new Filter(BaseEntity.CREATE_DATE_PROPERTY_NAME, Operator.greaterThanOrEqualTo,startDate);
				Filter endDateFilter = new Filter(BaseEntity.CREATE_DATE_PROPERTY_NAME, Operator.lessThanOrEqualTo,endDate);
				pageable.getFilters().add(startDateFileter);
				pageable.getFilters().add(endDateFilter);
			}
			pageable.getFilters().add(new Filter(Article.TITLE_HTML_PAGE_PROPERTY_NAME, Operator.like, title, true));
		} catch (ParseException e) {
			e.printStackTrace();
		}
		Page<Notice> page =  noticeService.findPage(pageable);
		model.addAttribute("title", title);
		model.addAttribute("startDateP", startDateP);
		model.addAttribute("endDateP", endDateP);
		model.addAttribute("page", page);
		model.addAttribute("pageSize", page.getPageSize());
		model.addAttribute( ""+page.getPageSize(), "selected");
		return "/admin/page/notice/list";
	}
	
	
	@RequestMapping(value = "info")
	public String info(Model model,Long id){
		Notice ne = noticeService.find(id);
		model.addAttribute("notice", ne);
		model.addAttribute("menu","详细页面");
		return "/admin/page/notice/info";
	}
	
	
	@RequestMapping(value = "showAdd")
	public String showAdd(){
		return "/admin/page/notice/add";
	}
	
	@RequestMapping(value = "add",method = {RequestMethod.POST})
	public @ResponseBody Message add(Notice notice){
		try {
			noticeService.save(notice);
		} catch (Exception e) {
			return Message.error("admin.add.error");
		}
		return Message.success("admin.add.success");
	}
	
	@RequestMapping(value = "showEdit")
	public String showEdit(Long id,ModelMap  modelMap){
		Notice notice = noticeService.find(id);
		System.out.println(notice.getCreateDate());
	    modelMap.addAttribute("notice", notice);
		return "/admin/page/notice/edit";
	
	}
	
	
	@RequestMapping(value = "edit")
	public @ResponseBody Message edit(Notice notice,ModelMap modelMap){
		try {
			notice=noticeService.update(notice,BaseEntity.ID_PROPERTY_NAME,BaseEntity.CREATE_DATE_PROPERTY_NAME);
		} catch (Exception e) {
			return Message.error("admin.edit.error");
		}
		return Message.success("admin.edit.success");
	}
	
	@RequestMapping(value ="delete",method = {RequestMethod.POST,RequestMethod.GET})
	public @ResponseBody Message delete(@RequestParam(value = "ids[]") Long[] ids){
		try{
			noticeService.delete(ids);
		}catch(Exception e){
			return Message.success("admin.delete.error");
		}
		return Message.success("admin.delete.success");
	}

}
