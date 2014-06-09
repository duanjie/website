

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
//import com.lsh.site.entity.Menu;
import com.lsh.site.entity.Recruitment;
import com.lsh.site.service.RecruitmentService;

   /**
	* ClassName: RecruitmentController <br/>
	* Description: 招聘
	* date: 2014年5月23日 下午3:35:07 <br/>
	*
	* @author GaoFeiFeng
	* @version 1.0
	* @since JDK 1.6
	*/
@Controller("recruitmentController")
@RequestMapping("admin/recruitment")
public class RecruitmentController extends BaseController{

	@Resource(name = "recruitmentServiceImpl")
	private RecruitmentService recruitmentService;
	
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
		Page<Recruitment> page =  recruitmentService.findPage(pageable);
		model.addAttribute("title", title);
		model.addAttribute("startDateP", startDateP);
		model.addAttribute("endDateP", endDateP);
		model.addAttribute("page", page);
		model.addAttribute("pageSize", page.getPageSize());
		model.addAttribute( ""+page.getPageSize(), "selected");
		return "/admin/page/recruitment/list";
	}
	
	
	@RequestMapping(value = "info")
	public String info(Model model,Long id){
		Recruitment re = recruitmentService.find(id);
		model.addAttribute("recruitment", re);
		model.addAttribute("menu","详细页面");
		return "/admin/page/recruitment/info";
	}
	
	
	@RequestMapping(value = "showAdd")
	public String showAdd(){
		return "/admin/page/recruitment/add";
	}
	
	@RequestMapping(value = "add",method = {RequestMethod.POST})
	public @ResponseBody Message add(Recruitment recruitment){
		try {
			recruitmentService.save(recruitment);
		} catch (Exception e) {
			return Message.error("admin.add.error");
		}
		return Message.success("admin.add.success");
	}
	
	@RequestMapping(value = "showEdit")
	public String showEdit(Long id,ModelMap  modelMap){
		Recruitment recruitment = recruitmentService.find(id);
	    modelMap.addAttribute("recruitment", recruitment);
		return "/admin/page/recruitment/edit";
	
	}
	
	
	@RequestMapping(value = "edit")
	public @ResponseBody Message edit(Recruitment recruitment,ModelMap modelMap){
		try {
			recruitment=recruitmentService.update(recruitment,BaseEntity.ID_PROPERTY_NAME,BaseEntity.CREATE_DATE_PROPERTY_NAME);
			modelMap.addAttribute("recruitment",recruitment);	
		} catch (Exception e) {
			return Message.error("admin.edit.error");
		}
		return Message.success("admin.edit.success");
	}
	
	@RequestMapping(value ="delete",method = {RequestMethod.POST,RequestMethod.GET})
	public @ResponseBody Message delete(@RequestParam(value = "ids[]") Long[] ids){
		recruitmentService.delete(ids);
		return Message.success("admin.delete.success");
	}
}
