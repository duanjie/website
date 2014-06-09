<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
    <!-- /content wrapper -->
    
    
     <div class="wrapper">
           <!-- Breadcrumbs line -->
		  <div class="crumbs">
		         <ul id="breadcrumbs" class="breadcrumb"> 
		              <li><a href="javascript:loadContent('admin/album/list.jhtml')"><spring:message code="admin.album"/></a></li>
				             <li class="active"><a href="javascript:;" title=""><spring:message code="admin.add"/></a></li>
		         </ul>
		  </div>
	    <h5 class="widget-name"><i class="icon-th"></i></h5>
        <form id="albumForm" class="form-horizontal" action="admin/album/add.jhtml" method="post" name="addForm">
	                <fieldset>
	                    <!-- Form validation -->
	                    <div class="widget">
	                        <div class="navbar"><div class="navbar-inner"><h6><spring:message code="admin.add.album"/></h6></div></div>
	                    	<div class="well row-fluid">

	                            <div class="control-group">
	                                <label class="control-label"><spring:message code="admin.leavelmessage.title"/>: <span class="text-error">*</span></label>
	                                <div class="controls">
	                                    <input type="text" class="validate[required, span12" name="title" />
	                                </div>
	                            </div>
	                            
	                             <div class="control-group">
	                                <label class="control-label"><spring:message code="admin.add.lable"/>: </label>
	                                <div class="controls">
	                                    <input type="text" name="tag" class="tags" />
	                                </div>
	                            </div>
	                            
	                            <!-- Color picker -->
	                             <div class="control-group">
	                                <label class="control-label"><spring:message code="admin.article.title.color"/>:</label>
	                                <div class="controls">
				                        <div class="input-prepend widget input-append color" data-color="rgb(255, 146, 180)" data-color-format="rgb" id="cp1">
					                        <input type="text" value="" readonly name="titleColor">
					                        <span class="add-on"><i style="background-color: rgb(255, 146, 180)"></i></span>
				                        </div>
                   				   </div>
	                            </div>
                   				 <!-- /color picker -->
	                            
	                             <div class="control-group">
	                                <label class="control-label"><spring:message code="admin.article.level"/>: </label>
	                                <div class="controls">
		                                    <select  name="topLevel" class="styled">
												<option  value='0'><spring:message code="admin.article.edit.select0"/></option> 
												<option   value='1'><spring:message code="admin.article.edit.select1"/></option> 
												<option  value='2' ><spring:message code="admin.article.edit.select2"/></option> 
												<option  value='3'><spring:message code="admin.article.edit.select3"/></option> 
												<option  value='4'><spring:message code="admin.article.edit.select4"/></option> 
												<option   value='5'><spring:message code="admin.article.edit.select5"/></option> 
											    <option   value='6'><spring:message code="admin.article.edit.select6"/></option> 
											</select>
	                                </div>
	                            </div>
	                            
	                            <div class="control-group">
	                                <label class="control-label"><spring:message code="admin.image.author"/>: <span class="text-error">*</span></label>
	                                <div class="controls">
	                                    <input type="text" class="validate[required,maxSize[10]] span12" name="author" />
	                                </div>
	                            </div>
	                            
	                            <div class="control-group">
	                                <label class="control-label"><spring:message code="admin.album.description"/>: <span class="text-error">*</span></label>
	                                <div class="controls">
	                                	<textarea rows="5" cols="5" name="description" class="validate[required,minSize[6],maxSize[200]] span12"></textarea>
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
		 
		 $('.tags').tagsInput({width:'100%'});
		 
		 $(".ui-datepicker-month, .styled, .dataTables_length select").uniform({ radioClass: 'choice' });
	});
	
</script>

				

				
				
				
				
				
				
				
				
				
				
				
				
				