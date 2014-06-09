<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<style type="text/css">
</style>

 <!-- Content wrapper -->  
		    <!-- /content wrapper -->
		     <div class="wrapper">
		           <!-- Breadcrumbs line -->
				  <div class="crumbs">
				         <ul id="breadcrumbs" class="breadcrumb"> 
				             <li><a href="javascript:loadContent('admin/notice/list.jhtml')"><spring:message code="admin.notice.manager"/></a></li>
				             <li class="active"><a href="javascript:loadContent('admin/notice/list.jhtml')" title="">${menu}</a></li>
				         </ul>
				         <ul class="alt-buttons">
				             <li><a href="#" title=""><i class="icon-signal"></i><spring:message code="admin.head.good.message"/></a></li>
				             <li><a href="#" title=""><i class="icon-comments"></i><spring:message code="admin.head.message"/></a></li>
				             <li class="dropdown"><a href="#" title="" data-toggle="dropdown"><i class="icon-tasks"></i><spring:message code="admin.task"/> <strong>(+16)</strong></a>
				             	<ul class="dropdown-menu pull-right">
				                     <li><a href="#" title=""><i class="icon-plus"></i><spring:message code="admin.task.add"/></a></li>
				                     <li><a href="#" title=""><i class="icon-cog"></i><spring:message code="admin.task.site"/></a></li>
				             	</ul>
				             </li>
				         </ul>
				  </div>
				 
				  	<h6 class="widget-name"><i class="icon-th"></i></h6>
				  	
				  	<ul class="toolbar">
            			<li><a href="javascript:loadContent('admin/notice/list.jhtml')" title=""><i class="ico-eye-open"></i><spring:message code="admin.list"/></a></li> 
        		    </ul>
				  
				<div class="widget">
	                <div id="scrollspy-data" class="navbar navbar-static">
	                    <div class="navbar-inner">
	                        <div class="container">
	                            <h6><spring:message code="admin.notice.title"/>:${notice.title}</h6>
	                            <ul class="nav pull-right">
	                                <li ><a href="javascript:;"><spring:message code="admin.notice.begin.time"/>:<fmt:formatDate value="${notice.begin_time}"   type="both"  pattern="yyyy-MM-dd "/></a></li>
	                                <li ><a href="javascript:;"><spring:message code="admin.form.end.time"/>:<fmt:formatDate value="${notice.end_time}"   type="both"  pattern="yyyy-MM-dd "/></a></li>
	                                <li ><a href="javascript:;"><spring:message code="admin.notice.create.time"/>:<fmt:formatDate value="${notice.createDate}" type="both"  pattern="yyyy-MM-dd HH:mm"/></a></li>
	                           	
	                            </ul>
	                            
	                        </div>
	                        
	                    </div>
	                    <div class="navbar-inner">
	                        <div class="container">
	                    
	                    </div>
	                    </div>
	                </div>
	                
	                <div data-spy="scroll" data-target="#scrollspy-data" data-offset="0" class="scrollspy well body">
	               		
	               		 <label class="control-label">:${notice.content} </label> 
	               		  
	                </div>
	            </div>
                	
                </div>

<script type="text/javascript">
	$(document).ready(function(){
		initCheckBoxSelectAll("checkAllRow","checkRow");
	});
	
</script>