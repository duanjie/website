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
import com.lsh.site.entity.LeaveMessage;
import com.lsh.site.service.LeaveMessageService;

@Controller("leaveMessageController")
@RequestMapping("admin/leaveMessage")
public class LeaveMessageController extends BaseController{

	@Resource(name="leaveMessageServiceImpl")
	private LeaveMessageService leaveMessageService;
	
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
		Page<LeaveMessage> page =  leaveMessageService.findPage(pageable);
		model.addAttribute("title", title);
		model.addAttribute("startDateP", startDateP);
		model.addAttribute("endDateP", endDateP);
		model.addAttribute("page", page);
		model.addAttribute("pageSize", page.getPageSize());
		model.addAttribute( ""+page.getPageSize(), "selected");
		return "/admin/page/leave_message/list";
	}
	
	
	
	@RequestMapping(value = "info")
	public String info(Model model,Long id){
		LeaveMessage leaveMessage=leaveMessageService.find(id);
		model.addAttribute("article", leaveMessage);
		model.addAttribute("menu",leaveMessage.getId()+"详细页面");
		return "/admin/page/leave_message/info";
	}
	
	
	@RequestMapping(value = "add",method = {RequestMethod.POST})
	public @ResponseBody Message add(LeaveMessage leaveMessage,Model model){
		try {
			leaveMessageService.save(leaveMessage);
		} catch (Exception e) {
			return Message.error("admin.add.error");
		}
		return Message.success("admin.add.success");
	}
	
	@RequestMapping(value = "showAdd")
	public String showAdd(Model model){
		return "/admin/page/leave_message/add";
	}
	
	
	@RequestMapping(value = "showEdit")
	public String showEdit(Long id ,ModelMap  modelMap){
		LeaveMessage leaveMessage = leaveMessageService.find(id);
		    modelMap.addAttribute("article", leaveMessage);
		
		return "/admin/page/leave_message/edit";
	}
	
	
	@RequestMapping(value = "edit",method = {RequestMethod.POST})
	public @ResponseBody Message edit(LeaveMessage leaveMessage,ModelMap modelMap){
		try {
			leaveMessage=leaveMessageService.update(leaveMessage,BaseEntity.ID_PROPERTY_NAME,BaseEntity.CREATE_DATE_PROPERTY_NAME,BaseEntity.MENU_PROPERTY_NAME);
			modelMap.addAttribute("article", leaveMessage);	
		} catch (Exception e) {
			return Message.error("admin.edit.error");
		}
		return Message.success("admin.edit.success");
	}
	
	
	@RequestMapping(value = "delete")
	public @ResponseBody Message delete(@RequestParam(value = "ids[]") Long[] ids ){
		try {
			leaveMessageService.delete(ids);
		} catch (Exception e) {
			return Message.error("admin.delete.error");
		}
		return Message.success("admin.delete.success");
	}
	
	
	
	
	
	
}
