<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript">
function loadContent(url){
	$.get(url, function(result){
	    $(".content").html(result);
	  });
}
</script>
<!-- Content container -->
	<div id="container">
		<!-- Sidebar -->
		<div id="sidebar">
			<div class="sidebar-tabs">
		        <ul class="tabs-nav two-items">
		            <li><a href="#general" title=""><i class="icon-reorder"></i></a></li>
		            <li><a href="#stuff" title=""><i class="icon-cogs"></i></a></li>
		        </ul>
		        <div id="general">
		           <div id="general">
		           		<ul class="navigation widget">
		           			 <li class="active"><a href="index.html" title=""><i class="icon-home"></i>主面板</a></li>
		           		    <c:forEach  items ="${menuList}" var ="menu" varStatus="parent" >
					            <li>
					            <a href="javascript:;" title="${menu.name}" class="expand"><i class="icon-reorder"></i>${menu.name}<strong>4</strong></a>
				               	   <ul>
					               	   <c:forEach items ="${menu.childMenus}" var="child"> 
							                    <li><a href="javascript:loadContent('${child.url}')"  title="${child.name}">${child.name}</a></li>
						                </c:forEach>
					                </ul>
					            </li>
				            </c:forEach>
		           		</ul>
		           </div>
		        </div>
		        <div id="stuff">
                    <!-- Datepicker -->
		        	<div class="widget">
		        		<h6 class="widget-name"><i class="icon-calendar"></i>日历</h6>
		                <div class="inlinepicker datepicker-liquid"></div>
		            </div>
		            <!-- /datepicker -->
		        </div>
		    </div>
		</div>
		<!-- /sidebar -->