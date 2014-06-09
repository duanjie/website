<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
 <!-- /content wrapper -->
    
    
     <div class="wrapper">
     
           <!-- Breadcrumbs line -->
		  <div class="crumbs">
		         <ul id="breadcrumbs" class="breadcrumb"> 
		              <li><a href="javascript:loadContent('admin/article/list.jhtml')"><spring:message code="admin.album"/></a></li>
				             <li class="active"><a href="#" title=""><spring:message code="admin.list"/></a></li>
		         </ul>
		         <ul class="alt-buttons">
		         </ul>
		  </div>
		  
	    <h5 class="widget-name"><i class="icon-th"></i></h5>
	    
	    
     	<ul class="toolbar">
             <li><a href="javascript:loadContent('admin/article/showEdit.jhtml')" title=""><i class="icon-heart"></i><span><spring:message code="admin.edit"/></span></a></li>
       
             
         </ul>
	    
        <form id="albumForm" class="form-horizontal" action="admin/album/edit.jhtml" method="post" name="editForm">
        			<input type="hidden" value="${album.id }" name="id"></input>
	                <fieldset>
	                  	 <!-- Form validation -->
	                    <div class="widget">
	                        <div class="navbar"><div class="navbar-inner"><h6><spring:message code="admin.add.album"/></h6></div></div>
	                    	<div class="well row-fluid">

	                            <div class="control-group">
	                                <label class="control-label"><spring:message code="admin.leavelmessage.title"/>: <span class="text-error">*</span></label>
	                                <div class="controls">
	                                    <input type="text" class="validate[required,maxSize[35]] span12" name="title" value="${album.title}"/>
	                                </div>
	                            </div>
	                            
	                             <div class="control-group">
	                                <label class="control-label"><spring:message code="admin.add.lable"/>: </label>
	                                <div class="controls">
	                                    <input type="text" name="tag" class="tags" value="${album.tag}"/>
	                                </div>
	                            </div>
	                            
	                            <!-- Color picker -->
	                             <div class="control-group">
	                                <label class="control-label"><spring:message code="admin.title.color"/>:</label>
	                                <div class="controls">
				                        <div class="input-prepend widget input-append color" data-color="rgb(255, 146, 180)" data-color-format="rgb" id="cp1">
					                        <input type="text"  readonly name="titleColor" class="validate[]"  value="${album.titleColor }">
					                        <span class="add-on"><i style="background-color: rgb(255, 146, 180)"></i></span>
				                        </div>
                   				   </div>
	                            </div>
                   				 <!-- /color picker -->
	                            
	                             <div class="control-group">
	                                <label class="control-label"><spring:message code="admin.article.level"/>: </label>
	                                <div class="controls">
		                                   <select name="topLevel" class="styled validate[required] span12">
                                                <option   value='0' ${album.topLevel eq 0?"selected":""}><spring:message code="admin.article.edit.select0"/></option> 
												<option   value='1' ${album.topLevel eq 1?"selected":""}><spring:message code="admin.article.edit.select1"/></option> 
												<option   value='2' ${album.topLevel eq 2?"selected":""}><spring:message code="admin.article.edit.select2"/></option> 
												<option   value='3' ${album.topLevel eq 3?"selected":""}><spring:message code="admin.article.edit.select3"/></option> 
												<option   value='4' ${album.topLevel eq 4?"selected":""}><spring:message code="admin.article.edit.select4"/></option> 
												<option   value='5' ${album.topLevel eq 5?"selected":""}><spring:message code="admin.article.edit.select5"/></option> 
											    <option   value='6' ${album.topLevel eq 6?"selected":""}><spring:message code="admin.article.edit.select6"/></option> 
                                            </select>
	                                </div>
	                            </div>
	                            
	                            <div class="control-group">
	                                <label class="control-label"><spring:message code="admin.image.author"/> :<span class="text-error">*</span></label>
	                                <div class="controls">
	                                    <input type="text" class="validate[required,maxSize[10]] span12" name="author" value="${album.author}"/>
	                                </div>
	                            </div>
	                            
	                            <div class="control-group">
	                                <label class="control-label"><spring:message code="admin.album.description"/>: <span class="text-error">*</span></label>
	                                <div class="controls">
	                                	<textarea rows="5" cols="5" name="description" class="validate[required,minSize[6],maxSize[200]] span12">${album.description}</textarea>
	                                </div>
	                            </div>
	                        
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
		 initForm("albumForm","admin/album/list.jhtml");
		 
		 /*
		 * 初始化颜色选择器
		 */
		 initColor();
		 
		 /*
		 * 初始化 标签输入框
		 */
		 $('.tags').tagsInput({width:'100%'});
		 
		 /*
		 * 初始table
		 */
		 $(".ui-datepicker-month, .styled, .dataTables_length select").uniform({ radioClass: 'choice' });
	});
	
</script>
    