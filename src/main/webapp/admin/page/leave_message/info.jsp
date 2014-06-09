<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<style type="text/css">
	ul li{list-style: none;}
</style>

 <!-- Content wrapper -->
		    <!-- /content wrapper -->
		     <div class="wrapper">
		           <!-- Breadcrumbs line -->
				  <div class="crumbs">
				         <ul id="breadcrumbs" class="breadcrumb"> 
				             <li><a href="javascript:loadContent('admin/leaveMessage/list.jhtml')"><spring:message code="admin.leavelmessage.menu.title"/></a></li>
				             <li class="active"><a href="javascript:;" title="">${menu}</a></li>
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
				  
				<div class="widget">
	                <div id="scrollspy-data" class="navbar navbar-static">
	                    <div class="navbar-inner">
	                        <div class="container">
	                            <h6><spring:message code="admin.leavelmessage.title"/>：${article.title}</h6>
	                            <ul class="nav pull-right">
	                                <li ><a href="javascript:;"><spring:message code="admin.leavelmessage.checked"/>：<c:choose><c:when test="${article.checked==0}"><spring:message code="admin.leavelmessage.no.checked"/></c:when><c:otherwise> <spring:message code="admin.leavelmessage.checked"/> </c:otherwise></c:choose></a></li>
	                                <li ><a href="javascript:;"><spring:message code="admin.leavelmessage.recommend"/> ：<c:choose><c:when test="${article.recommend==0}"><spring:message code="admin.leavelmessage.no.recommend"/></c:when><c:otherwise> <spring:message code="admin.leavelmessage.recommend"/>  </c:otherwise></c:choose></a></li>
	                                <li ><a href="javascript:;"><spring:message code="admin.leavelmessage.type"/><c:choose><c:when test="${article.leaveMessageType==0}"><spring:message code="admin.leavelmessage.type.one"/></c:when><c:otherwise> <spring:message code="admin.leavelmessage.type.two"/> </c:otherwise></c:choose></a></li>
	                                <li ><a href="javascript:;"><spring:message code="admin.leavelmessage.time"/>：<fmt:formatDate value="${article.createDate}" type="both"  pattern="yyyy-MM-dd HH:mm"/></a></li>
	                            </ul>
	                        </div>
	                    </div>
	                </div>
	                <div class="well body">
                        
                        <!-- Lists -->
                    	<div class="row-fluid">
                        
                        	<!-- Column -->
                        	<div class="span3">
                        		<div class="widget">
	                            	<!-- Unordered list -->
	                            	<strong class="subtitle"><spring:message code="admin.leavelmessage.email"/></strong>
	                                <div class="well-white body">
	                                    <div class="list">
	                                        <ul>
	                                            <li>${article.email}</li>
	                                        </ul>
	                                    </div>
	                                </div>
	                                <!-- /unordered list -->
	                            </div>
                            </div>
                            <!-- /column -->
                            
                            
                              
                            <!-- Column -->
                            <div class="span3">
                            	<div class="widget">
	                            	<!-- Ordered list -->
	                                <div class="semi-widget">
	                                	<strong class="subtitle"><spring:message code="admin.leavelmessage.qq"/></strong>
	                                    <div class="well-white body">
	                                    	<div class="list-font">
	                                            <ol>
	                                                <li>${article.qq}</li>
	                                            </ol>
	                                        </div>
	                                    </div>
	                                </div>
	                                <!-- /ordered-list -->
	                            </div>
                            </div>
                            <!-- /column -->
                            
                            
                            
                            <div class="span3">
                            	<div class="widget">
	                                <!-- Check list -->
	                                <div class="semi-widget">
	                                	<strong class="subtitle"><spring:message code="admin.leavelmessage.phone"/></strong>
	                                    <div class="well-white body">
	                                        <ul class="check-list">
	                                            <li>${article.phone}</li>
	                                        </ul>
	                                    </div>
	                                </div>
	                                <!-- /check list -->
	                            </div>
                            </div>
                        </div>
                        <!-- /lists -->
                             
                                <!-- Description list -->
                        <div class="row-fluid">
                        
                        	<!-- Column -->
                        	<div class="span6">

                                <div class="semi-widget">
                                	<strong class="subtitle"><spring:message code="admin.leavelmessage.content"/>：</strong>
                                    <div class="well-white body">
                                        <dl>
                                            <dd>${article.content}</dd>
                                        </dl>
                                    </div>
                                </div>
                            </div>
                            <!-- /column -->
                            
                            <!-- Column -->
                            <div class="span6">

                                <div class="semi-widget">
                                	<strong class="subtitle"><spring:message code="admin.leavelmessage.reply"/></strong>
                                    <div class="well-white body">
                                        <dl >
                                        <dd>${article.reply}</dd>
                                        </dl>
                                    </div>
                                </div>
                            </div>
                            <!-- /column -->
                        </div>
                        <!-- /description list -->
                             
	            </div>
                	
                </div>

<script type="text/javascript">
	$(document).ready(function(){
		initCheckBoxSelectAll("checkAllRow","checkRow");
	});
	
</script>