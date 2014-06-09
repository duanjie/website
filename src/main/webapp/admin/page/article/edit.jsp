<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
 <!-- /content wrapper -->
     <div class="wrapper">
     
           <!-- Breadcrumbs line -->
		  <div class="crumbs">
		         <ul id="breadcrumbs" class="breadcrumb"> 
		              <li><a href="javascript:loadContent('admin/article/list.jhtml')"><spring:message code="admin.article.manager"/></a></li>
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
             <li><a href="javascript:loadContent('admin/article/list.jhtml')" title=""><i class="ico-eye-open"></i><span><spring:message code="admin.list"/></span></a></li>
         </ul>
	    
        <form id="articleForm" class="form-horizontal" action="admin/article/edit.jhtml" method="post" name="editForm">
        			<input type="hidden" value="${article.id }" name="id"></input>
	                <fieldset>
	                    <!-- Form validation -->
	                    <div class="widget">
	                        <div class="navbar"><div class="navbar-inner"><h6><spring:message code="admin.article.edit.editarticle"/></h6></div></div>
	                    	<div class="well row-fluid">

	                             <div class="control-group">
	                                <label class="control-label"><spring:message code="admin.article.title"/> <span class="text-error">*</span></label>
	                                <div class="controls">
	                                    <input type="text" class="validate[required,maxSize[90],minSize[2]] span12" name="title"  value="${article.title }"/>
	                                </div>
	                            </div>
	                            
	                             <div class="control-group">
	                                <label class="control-label"><spring:message code="admin.article.brieftitle"/> </label>
	                                <div class="controls">
	                                    <input type="text" class="validate[maxSize[30]] span12" name="briefTitle" value="${article.briefTitle }" />
	                                </div>
	                            </div>
	                            
	                             <div class="control-group">
	                                <label class="control-label"><spring:message code="admin.article.author"/> </label>
	                                <div class="controls">
	                                    <input type="text" class="validate[maxSize[10]] span12" name="author" id="req" value="${article.author }"/>
	                                </div>
	                            </div>
	                        
	                            <!-- Color picker -->
	                             <div class="control-group">
	                                <label class="control-label"><spring:message code="admin.article.title.color"/> </label>
	                                <div class="controls">
				                        <div class="input-prepend widget input-append color" data-color="rgb(255, 146, 180)" data-color-format="rgb" id="cp1">
					                        <input type="text"  readonly name="titleColor" class="validate[]"  value="${article.titleColor }">
					                        <span class="add-on"><i style="background-color: rgb(255, 146, 180)"></i></span>
				                        </div>
                   				   </div>
	                            </div>
                   				 <!-- /color picker -->
	                            
	                             <div class="control-group">
	                                <label class="control-label"><spring:message code="admin.article.level"/> </label>
	                                 <div class="controls">
                                            <select name="topLevel" class="styled">
                                                <option   value='0' ${article.topLevel eq 0?"selected":""}><spring:message code="admin.select0"/></option> 
												<option   value='1' ${article.topLevel eq 1?"selected":""}><spring:message code="admin.select1"/></option> 
												<option   value='2' ${article.topLevel eq 2?"selected":""}><spring:message code="admin.select2"/></option> 
												<option   value='3' ${article.topLevel eq 3?"selected":""}><spring:message code="admin.select3"/></option> 
												<option   value='4' ${article.topLevel eq 4?"selected":""}><spring:message code="admin.select4"/></option> 
												<option   value='5' ${article.topLevel eq 5?"selected":""}><spring:message code="admin.select5"/></option> 
											    <option   value='6' ${article.topLevel eq 6?"selected":""}><spring:message code="admin.select6"/></option> 
                                            </select>
                                     </div>
	                            </div>
	           				 
	           				 	<!-- WYSIWYG editor -->
					              <c:if test="${article.isHtmlPage==0}">
					            <div class="widget">
					                <div class="navbar">
					                	<div class="navbar-inner">
					                		<label class="control-label"><spring:message code="admin.article.content"/> <span class="text-error">*</span></label>
				                            <ul class="dropdown-menu pull-right">
				                                <li><a href="#"><i class="icon-plus"></i>Add new option</a></li>
				                                <li><a href="#"><i class="icon-reorder"></i>View statement</a></li>
				                                <li><a href="#"><i class="icon-cogs"></i>Parameters</a></li>
				                            </ul>
				                		</div>
				              	  </div>
                		    </c:if>
                				<textarea name="content" id="content" rows="15" cols="5"   class="validate[required,minSize[2]] span12" >
                					${article.content}
                				</textarea>
           				 	</div>
	           				 <!-- /WYSIWYG editor -->
	           				 
	           				 
	           				 
	           				 
	           				 
	                            
	                        
	                            <div class="form-actions align-right">
	                                <button type="submit" class="btn btn-info"><spring:message code="admin.submin"/></button>
	                                <button type="reset" class="btn"><spring:message code="admin.reset"/></button>
	                            </div>
	                        </div>
	                      </div>

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
		 initForm("articleForm","admin/article/list.jhtml");
		 
		 /*
		 * 初始化颜色选择器
		 */
		 initColor();
		 
		//===== Form elements styling =====//
		 $(".ui-datepicker-month, .styled, .dataTables_length select").uniform({ radioClass: 'choice' });
		 <c:if test="${article.isHtmlPage==0}">
			 CKEDITOR.replace('content');
			</c:if>
	});
	
</script>
    