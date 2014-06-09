<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
    <!-- /content wrapper -->
    
    
     <div class="wrapper">
           <!-- Breadcrumbs line -->
		  <div class="crumbs">
		         <ul id="breadcrumbs" class="breadcrumb"> 
		              <li><a href="javascript:loadContent('admin/image/list.jhtml')"><spring:message code="admin.album"/></a></li>
				             <li class="active"><a href="javascript:;" title=""><spring:message code="admin.add"/></a></li>
		         </ul>
		  </div>
	    <h5 class="widget-name"><i class="icon-th"></i></h5>
        <form id="imageForm" class="form-horizontal" action="admin/image/add.jhtml" method="post" name="imageForm">
	                
	                <fieldset>
	                    <!-- Form validation -->
	                    <div class="widget">
	                        <div class="navbar"><div class="navbar-inner"><h6><spring:message code="admin.image.add"/></h6></div></div>
	                    	<div class="well row-fluid">
								<input type="hidden" value="${albumId}" name="albumId" />
	                            <div class="control-group">
	                                <label class="control-label"><spring:message code="admin.album.title0"/>: <span class="text-error">*</span></label>
	                                <div class="controls">
	                                    <input type="text" class="validate[required,maxSize[10]] span12"  name="title" />
	                                </div>
	                            </div>
	                            
	                             <div class="control-group">
	                                <label class="control-label"><spring:message code="admin.image.iscover"/>: </label>
	                                <div class="controls">
	                                   <select name="isCover" class="styled" > 
								
									 <option   value="0"><spring:message code="admin.image.iscover0"/></option>	
									 <option   value="1"><spring:message code="admin.image.iscover1"/></option> 
										</select>
	                                </div>
	                            </div>
	                            
	                            
                   				 <!-- /color picker -->
	                            
	                              <div class="control-group">
	                                <label class="control-label"> <spring:message  code="admin.address"/>: <span class="text-error">*</span></label>
	                                <div class="controls">
	                                  <input type="text" name="address" class="text" maxlength="200"/>
									 <input type="button" id="browserButton" class="button" value="选择文件" />
	                                </div>
	                            </div>
	     
	                            <div class="control-group">
	                                <label class="control-label"><spring:message code="admin.recruitement.description"/>: <span class="text-error"></span></label>
	                                <div class="controls">
	                                	<textarea rows="5" cols="100" name="description" ></textarea>
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
		 initForm("imageForm","admin/image/list.jhtml?albumId=${albumId}");
		 
		 $().ready(function() {
				var $browserButton = $("#browserButton");
				$browserButton.browser();
				
			});
		
		 
		
	});
	
</script>

				

				
				
				
				
				
				
				
				
				
				
				
				
				