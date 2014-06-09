<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
 <!-- /content wrapper -->
     <div class="wrapper">
     
           <!-- Breadcrumbs line -->
		  <div class="crumbs">
		         <ul id="breadcrumbs" class="breadcrumb"> 
		              <li><a href="javascript:loadContent('admin/leaveMessage/list.jhtml')"><spring:message code="admin.leavelmessage.menu.title"/></a></li>
				             <li class="active"><a href="javascript:;" title=""><spring:message code="admin.edit"/></a></li>
		         </ul>
		        <ul class="alt-buttons">
				             <li><a href="#" title=""><i class="icon-signal"></i><span><spring:message code="admin.head.good.message"/></span></a></li>
				             <li><a href="#" title=""><i class="icon-comments"></i><span><spring:message code="admin.message"/></span></a></li>
				             <li class="dropdown"><a href="#" title="" data-toggle="dropdown"><i class="icon-tasks"></i><span><spring:message code="admin.task"/></span> <strong>(+16)</strong></a>
				             	<ul class="dropdown-menu pull-right">
				                     <li><a href="#" title=""><i class="icon-plus"></i><spring:message code="admin.task.add"/></a></li>
				                     <li><a href="#" title=""><i class="icon-cog"></i><spring:message code="admin.task.site"/></a></li>
				             	</ul>
				             </li>
		        </ul>
		  </div>
		  
	    <h5 class="widget-name"><i class="icon-th"></i></h5>
	    
	    
     	<ul class="toolbar">
             <li><a href="javascript:loadContent('admin/leaveMessage/list.jhtml')" title=""><i class="ico-eye-open"></i><span><spring:message code="admin.list"/> </span></a></li>
         </ul>
	    
        			
		   <form id="leaveMessageForm" class="form-horizontal" action="admin/leaveMessage/edit.jhtml" method="post" name="editForm">
		       <input type="hidden" value="${article.id }" name="id"></input>
	                <fieldset>
	                    <!-- Form validation -->
	                    <div class="widget">
	                        <div class="navbar"><div class="navbar-inner"><h6><spring:message code="admin.leavelmessage.edit"/></h6></div></div>
	                    	<div class="well row-fluid">

	                            <div class="control-group">
	                                <label class="control-label"><spring:message code="admin.leavelmessage.title"/>：<span class="text-error">*</span></label>
	                                <div class="controls">
	                                    <input type="text" class="validate[required,maxSize[75],minSize[2]] span12" name="title" value="${article.title}" />
	                                </div>
	                            </div>
	                            
	                             <div class="control-group">
	                                <label class="control-label"><spring:message code="admin.leavelmessage.email"/> </label>
	                                <div class="controls">
	                                    <input type="text" class="validate[maxSize[50],custom[email]] span12" name="email" value="${article.email}"/>
	                                </div>
	                            </div>
	                            
	                             <div class="control-group">
	                                <label class="control-label"><spring:message code="admin.leavelmessage.phone"/></label>
	                                <div class="controls">
		                                <input type="text" name="phone"  class="validate[maxSize[15]] span12" data-mask="+19 999 999 999"  value="${article.phone}">
		                                <span class="help-block"><spring:message code="admin.leavelmessage.phone.model"/></span>
	                                </div>
	                            </div>
	                            
	                             <div class="control-group">
	                                <label class="control-label"><spring:message code="admin.leavelmessage.qq"/> </label>
	                                <div class="controls">
	                                    <input type="text" class="validate[min[10000],max[9999999999999]] span12" name="qq" id="req" value="${article.qq}"/>
	                                </div>
	                            </div>
	                            
	                            <div class="control-group">
	                                <label class="control-label"><spring:message code="admin.leavelmessage.checked"/>：<span class="text-error">*</span></label>
	                                 <div class="controls">
		                                    <select  name="checked" class="styled">
												 <option  value='0' ${article.checked eq 0?"selected":""}><spring:message code="admin.leavelmessage.no.checked"/></option> 
												<option  value='1' ${article.checked eq 1?"selected":""}><spring:message code="admin.leavelmessage.checked"/></option> 
											</select>
	                                </div>
	                            </div>
	                            
	                            <div class="control-group">
	                                <label class="control-label"><spring:message code="admin.leavelmessage.type"/><span class="text-error">*</span></label>
	                                 <div class="controls">
		                                    <select  name="checked" class="styled">
												 <option  value='0' ${article.leaveMessageType eq 0?"selected":""}><spring:message code="admin.leavelmessage.type.one"/></option> 
												<option  value='1' ${article.leaveMessageType eq 1?"selected":""}><spring:message code="admin.leavelmessage.type.two"/></option> 
											</select>
	                                </div>
	                            </div>
	                            
	                            <div class="control-group">
	                                <label class="control-label"><spring:message code="admin.leavelmessage.recommend"/> ：<span class="text-error">*</span></label>
	                                 <div class="controls">
		                                    <select  name="recommend" class="styled">
												 <option   value='0' ${article.recommend eq 0?"selected":""}><spring:message code="admin.leavelmessage.no.recommend"/></option> 
												<option   value='1' ${article.recommend eq 1?"selected":""}><spring:message code="admin.leavelmessage.recommend"/></option> 
											</select>
	                                </div>
	                            </div>
	                          	<!-- WYSIWYG editor -->
					            <div class="widget">
					                <div class="navbar">
					                	<div class="navbar-inner">
					                		 <label class="control-label"><spring:message code="admin.leavelmessage.content"/>： <span class="text-error">*</span></label>
				                		</div>
				              	  </div>
                				<textarea rows="5" cols="5" name="content" class="validate[required,minSize[2]] span12">${article.content}</textarea>
                					
           				 	</div>
	           				 <!-- /WYSIWYG editor -->
	           				 
	           				 
	           				 	<!-- WYSIWYG editor -->
					            <div class="widget">
					                <div class="navbar">
					                	<div class="navbar-inner">
					                		 <label class="control-label"><spring:message code="admin.leavelmessage.reply"/></label>
				                		</div>
				              	  </div>
                				<textarea rows="5" cols="5" name="reply" class="span12">${article.reply}</textarea>
           				 	</div>
	           				 <!-- /WYSIWYG editor -->
	                        
	                            <div class="form-actions align-right">
	                                <button type="submit" class="btn btn-info"><spring:message code="admin.submin"/></button>
	                                <button type="reset" class="btn"><spring:message code="admin.reset"/></button>
	                            </div>
	                        </div>
	                    </div>
	                    <!-- /form validation -->

	                </fieldset>
				</form>
				<!-- /form validation -->
				</div>
				
			
<script type="text/javascript">
	$(document).ready(function(){
		 /*
		 * 初始化Form,
		 * @param: fomrId
		 * @param: 提交成功之后跳转路径
		 */
		 initForm("leaveMessageForm","admin/leaveMessage/list.jhtml");
		 
	});
	
</script>
    