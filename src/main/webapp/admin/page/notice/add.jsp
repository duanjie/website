<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
   <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
    <!-- /content wrapper -->
    
   
     <div class="wrapper">
    
         
		  <div class="crumbs">
		         <ul id="breadcrumbs" class="breadcrumb"> 
		           
		             <li><a href="javascript:loadContent('admin/notice/list.jhtml')"><spring:message code="admin.notice.manager"/></a></li>
				             <li class="active"><a href="javascript:void(0);"><spring:message code="admin.add"/></a></li>
		         </ul>
		         <ul class="alt-buttons">
		             <li><a href="#" title=""><i class="icon-signal"></i><span><spring:message code="admin.count"/></span></a></li>
		             <li><a href="#" title=""><i class="icon-comments"></i><spring:message code="admin.head.message"/></a></li>
		             <li class="dropdown"><a href="#" title="" data-toggle="dropdown"><i class="icon-tasks"></i><spring:message code="admin.task"/> <strong>(+16)</strong></a>
		             	<ul class="dropdown-menu pull-right">
		                     <li><a href="#" title=""><i class="icon-plus"></i><spring:message code="admin.task.add"/></a></li>
		                     <li><a href="#" title=""><i class="icon-cog"></i><spring:message code="admin.task.siter"/></a></li>
		             	</ul>
		             </li>
		         </ul>
		  </div>
		  
	    <h5 class="widget-name"><i class="icon-th"></i></h5>
	    
	    
     	
        <form id="recruitmentForm" class="form-horizontal" action="admin/notice/add.jhtml" method="post">
	             
	                    <!-- Form validation -->
	                    <ul class="toolbar">
            			<li><a href="javascript:loadContent('admin/notice/list.jhtml')" title=""><i class="ico-eye-open"></i><spring:message code="admin.list"/></a></li> 
        		    </ul>
	                    <div class="widget">
	                      
	                    	<div class="well row-fluid">

	                            
	                            
	                            
	                             <div class="control-group">
	                                <label class="control-label"><spring:message code="admin.notice.title"/>: <span class="text-error">*</span></label>
	                                <div class="controls">
	                                    <input type="text" class="validate[required,minSize[2],maxSize[70]] span12" name="title" />
	                                </div>
	                            </div>
	                          
	                          
	                         <%--  <div class="control-group">
	                                <label class="control-label"><spring:message code="admin.notice.begin.time"/>:<span class="text-error">*</span></label>
	                                <div class="controls" class="styled">
	                                    <input type="text"  value='<fmt:formatDate  type="date" dateStyle="medium"/>'   class="validate[required] datepicker"  name="begin_time"  />
	                                </div>
	                            </div> --%>
	                            
	                            
	                             <div class="control-group">
	                                <label class="control-label"><spring:message code="admin.notice.begin.time"/>:<span class="text-error">*</span></label>
	                                <div class="controls" class="styled">
	                                    <input type="text" readonly="readonly" id="fromDate"  class="validate[required] datepicker"  name="begin_time"  />
	                                </div>
	                            </div>
	                            
	                          
	                            
	                            
	                             <div class="control-group">
	                                <label class="control-label" class="styled" ><spring:message code="admin.form.end.time"/>: <span class="text-error">*</span></label>
	                                <div class="controls">
	                                 <input type="text" readonly  name="end_time" id="toDate" class="validate[required] datepicker">
	                                 </div> 
	                            </div>
	                            
	                            <div class="control-group">
	                                <label class="control-label"><spring:message code="admin.notice.content"/>: <span class="text-error">*</span></label>
	                                <div class="controls">
	                                	<textarea rows="10" cols="3" name="content" class="validate[required] span12"></textarea>
	                                </div>
	                            </div>
	                            
	                            
	                            
	                      
	                            <div class="form-actions align-right">
	                                <button type="submit" class="btn btn-info"><spring:message code="admin.submin"/></button>
	                                <button type="reset" class="btn"><spring:message code="admin.reset"/></button>
	                            </div>
	                        </div>
	                    </div>
	                    <!-- /form validation -->

	              
				</form>
				</div>
				<!-- /form validation -->
				
				
				
			
<script type="text/javascript">
	$(document).ready(function(){
		 /*
		 * 初始化Form,
		 * @param: fomrId
		 * @param: 提交成功之后跳转路径
		 */
		 initForm("recruitmentForm","admin/notice/list.jhtml");
		   
	    var dates = $( "#fromDate, #toDate" ).datepicker({
			defaultDate: "+1w",
			changeMonth: false,
			showOtherMonths:true,
			numberOfMonths: 1,
			appendText: '(yyyy-mm-dd)',
			dateFormat: 'yy-mm-dd',
			onSelect: function( selectedDate ) {
				var option = this.id == "fromDate" ? "minDate" : "maxDate",
					instance = $( this ).data( "datepicker" ),
					date = $.datepicker.parseDate(
						instance.settings.dateFormat ||
						$.datepicker._defaults.dateFormat,
						selectedDate, instance.settings );
				dates.not( this ).datepicker( "option", option, date );
			}
		});
		
	});
	
</script>

				

				
				
				
				
				
				
				
				
				
				
				
				
				