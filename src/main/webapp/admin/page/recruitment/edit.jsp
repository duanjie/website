<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
 <!-- /content wrapper -->
    
    
     <div class="wrapper">
     
           <!-- Breadcrumbs line -->
		  <div class="crumbs">
		         <ul id="breadcrumbs" class="breadcrumb"> 
		         
		           
		             <li><a href="javascript:loadContent('admin/recruitment/list.jhtml')"><spring:message code="admin.recruitment.manager"/></a></li>
				             <li class="active"><a href="javascript:void(0);" title=""><spring:message code="admin.edit"/></a></li>
		         </ul>
		         <ul class="alt-buttons">
		             <li><a href="#" title=""><i class="icon-signal"></i><span><spring:message code="admin.count"/></span></a></li>
		             <li><a href="#" title=""><i class="icon-comments"></i><span><spring:message code="admin.head.message"/></span></a></li>
		             <li class="dropdown"><a href="#" title="" data-toggle="dropdown"><i class="icon-tasks"></i><span><spring:message code="admin.task"/> </span> <strong>(+16)</strong></a>
		             	<ul class="dropdown-menu pull-right">
		                     <li><a href="#" title=""><i class="icon-plus"></i><spring:message code="admin.task.add"/></a></li>
		                     <li><a href="#" title=""><i class="icon-cog"></i><spring:message code="admin.task.site"/></a></li>
		             	</ul>
		             </li>
		         </ul>
		  </div>
		  
	    <h5 class="widget-name"><i class="icon-th"></i></h5>
	    
	    
     	
	   
        <form id="recruitmentForm" class="form-horizontal" action="admin/recruitment/edit.jhtml" method="post">
        		
        		
        			<input type="hidden" value="${recruitment.id }" name="id"></input>
        			
	                <fieldset>
	                <ul class="toolbar">
            			<li><a href="javascript:loadContent('admin/recruitment/list.jhtml')" title=""><i class="ico-eye-open"></i><span><spring:message code="admin.list"/></span></a></li> 
        		    </ul>
	                
	          			<div class="widget">
	                       
	                    	<div class="well row-fluid">
	                    	
	                            <div class="control-group">
	                                <label class="control-label"><spring:message code="admin.recruitment.title"/>: <span class="text-error">*</span></label>
	                                <div class="controls" class="styled">
	                                    <input type="text" class="validate[required, minSize[2],maxSize[70]] span12span12" name="title" value="${recruitment.title }"/>
	                                </div>
	                            </div>
	                             <div class="control-group">
	                                <label class="control-label"><spring:message code="admin.form.end.time"/>:<span class="text-error">*</span></label>
	                                <div class="controls" class="styled">
	                                    <input type="text"  value='<fmt:formatDate value="${recruitment.deadline}" type="date" dateStyle="medium"/>' readonly="readonly"  class="validate[required] datepicker"  name="deadline"  />
	                                </div>
	                            </div>
	                            
	                             <div class="control-group">
	                                <label class="control-label"><spring:message code="admin.recruitment.experience"/>: <span class="text-error">*</span></label>
	                                <div class="controls">
				                          
	                                 <select name="experience" class="styled" > 
									
									<option   value='<spring:message code="admin.recruitment.experience0"/>' ${recruitment.experience eq "0"?"selected":""}><spring:message code="admin.recruitment.experience0"/></option> 
									 <option   value='<spring:message code="admin.recruitment.experience1"/>' ${recruitment.experience eq "1"?"selected":""}><spring:message code="admin.recruitment.experience1"/></option>
									 <option   value='<spring:message code="admin.recruitment.experience2"/>' ${recruitment.experience eq "2"?"selected":""}><spring:message code="admin.recruitment.experience2"/></option>
									 <option   value='<spring:message code="admin.recruitment.experience3"/>' ${recruitment.experience eq "3"?"selected":""}><spring:message code="admin.recruitment.experience3"/></option>
									</select> 
	                                 
	                                </div>
	                            </div>
	                             <div class="control-group">
	                                <label class="control-label"><spring:message code="admin.recruitment.nature"/>: <span class="text-error">*</span></label>
	                                <div class="controls" class="styled" >
	                                   <select name="nature" class="styled"> 
								
									 <option   value='0' ${recruitment.nature eq 0?"selected":""}><spring:message code="admin.recruitment.nature0"/></option> 
									 <option   value='1' ${recruitment.nature eq 1?"selected":""}><spring:message code="admin.recruitment.nature1"/></option>
									</select> 
	                                </div>
	                            </div>
	                            <div class="control-group">
	                                <label class="control-label"><spring:message code="admin.recruitment.workplace"/>: <span class="text-error">*</span></label>
	                                <div class="controls" class="styled">
	                                    <input type="text" class="validate[required,minSize[2],maxSize[10]] span12" name="workplace" value="${recruitment.workplace }" />
	                                </div>
	                            </div>
	                            
	                             <div class="control-group">
	                                <label class="control-label"><spring:message code="admin.recruitment.hasmanger"/>: <span class="text-error">*</span></label>
	                                <div class="controls" class="styled">
	                                      <select name="hasmanage" class="styled" > 
									
									 <option   value='0' ${recruitment.hasmanage eq 0?"selected":""}><spring:message code="admin.recruitment.hasmanger0"/></option> 
									 <option   value='1' ${recruitment.hasmanage eq 1?"selected":""}><spring:message code="admin.recruitment.hasmanger1"/></option>
									
								</select> 
	                                </div>
	                            </div>
	                         
	                            <div class="control-group">
	                                <label class="control-label"><spring:message code="admin.recruitment.nums"/>: <span class="text-error">*</span></label>
	                                <div class="controls">
	                                    <input type="text" class="validate[required,minSize[1],maxSize[10]] span12" name="nums" value="${recruitment.nums }" />
	                                </div>
	                            </div>
	                            <div class="control-group">
	                                <label class="control-label"><spring:message code="admin.recruitment.category"/>: <span class="text-error">*</span></label>
	                                <div class="controls" class="styled">
	                                    <input type="text" class="validate[required,minSize[2],maxSize[20]] span12" name="category" value="${recruitment.category }" />
	                                </div>
	                            </div>
	                             <div class="control-group">
	                                <label class="control-label"><spring:message code="admin.article.level"/>: <span class="text-error">*</span></label>
	                                 <div class="controls">
                                            <select name="topLevel" class="styled"  >
                                                <option   value='0' ${recruitment.topLevel eq 0?"selected":""}><spring:message code="admin.article.edit.select0"/></option> 
												<option   value='1' ${recruitment.topLevel eq 1?"selected":""}><spring:message code="admin.article.edit.select1"/></option> 
												<option   value='2' ${recruitment.topLevel eq 2?"selected":""}><spring:message code="admin.article.edit.select2"/></option> <!-- 这里就表示这一项被默认选中,也就是页面一进来"非洲"这一项就是被选中的了 -->
												<option   value='3' ${recruitment.topLevel eq 3?"selected":""}><spring:message code="admin.article.edit.select3"/></option> 
												<option   value='4' ${recruitment.topLevel eq 4?"selected":""}><spring:message code="admin.article.edit.select4"/></option> 
												<option   value='5' ${recruitment.topLevel eq 5?"selected":""}><spring:message code="admin.article.edit.select5"/></option> 
											    <option   value='6' ${recruitment.topLevel eq 6?"selected":""}><spring:message code="admin.article.edit.select6"/></option> 
                                            </select>
                                     </div>
	                            </div>
	                             <div class="control-group">
	                                <label class="control-label"><spring:message code="admin.recruitement.description"/>: <span class="text-error">*</span></label>
	                                <div class="controls">
	                                    <input type="text" class="validate[required] span12" name="description" value="${recruitment.description }"/>
	                                </div>
	                            </div>
	                             <div class="form-actions align-right">
	                                <button type="submit" class="btn btn-info"><spring:message code="admin.submin"/></button>
	                                <button type="reset" class="btn"><spring:message code="admin.reset"/></button>
	                            </div>
	                            </div>
	                        </div></fieldset></form>
	                           
	                            
	                  
	     


				
			
<script type="text/javascript">
	$(document).ready(function(){
		 /*
		 * 初始化Form,
		 * @param: fomrId
		 * @param: 提交成功之后跳转路径
		 */
		 initForm("recruitmentForm","admin/recruitment/list.jhtml");
		 
		 
		 $(".ui-datepicker-month, .styled, .dataTables_length select").uniform({ radioClass: 'choice' });
		 
		 $( ".datepicker" ).datepicker({
				defaultDate: +7,
				showOtherMonths:true,
				autoSize: true,
				appendText: '<spring:message code="admin.datetime"/>',
				dateFormat: 'yy-mm-dd'
				});
	});
</script>
    