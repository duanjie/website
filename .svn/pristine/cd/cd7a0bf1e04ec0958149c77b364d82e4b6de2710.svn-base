<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

 <!-- Content wrapper -->
		    
		     <div class="wrapper">
		           <!-- Breadcrumbs line -->
				  <div class="crumbs">
				         <ul id="breadcrumbs" class="breadcrumb"> 
				             <li><a href="javascript:loadContent('admin/log/list.jhtml')"><spring:message code="admin.article.manager"/></a></li>
				             <li class="active"><a href="javascript:;" title=""><spring:message code="admin.list"/> </a></li>
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
		     
		     	<!-- 搜索 -->
		     
			     <form name="loginForm" class="search widget" action="admin/log/login/list.jhtml" method="post" >
			    		<div class="autocomplete-append">
				    		<input type="text" placeholder="搜索:帐号..." id="autocomplete" name="searchValue" >
				    		<input type="hidden" name="searchProperty" value="username"/>
				    		<input type="submit" class="btn btn-info" value="搜索">
				    	</div>
			    	</form>
		     
		     
                	<ul class="toolbar">
                        <li><a href="javascript:onDeleteAll('admin/loginLog/log/delete.jhtml','admin/loginLog/log/list.jhtml')"><i class="ico-remove"></i><span>清除日志</span></a></li>
                    </ul>
                    <div class="table-overflow">
                        <table  class="table table-striped table-bordered table-checks media-table">
                            <thead>
                                <tr>
                                    <th>日志 ID</th>
                                    <th>登陆帐号</th>
                                    <th>登陆IP</th>
                                    <th>登陆浏览器</th>
                                    <th>登陆时间</th>
                                     <th>登陆状态</th>
                                </tr>
                            </thead>
                            <tbody   class="table table-striped table-bordered table-checks media-table">
                              <c:forEach items="${page.content}" var="loginLog" varStatus="status">
	                               <tr id="cls" <c:if test="${status.index % 2 != 0}">class="info" </c:if>>
	                                   <td>${loginLog.id}</td>
	                                   <td>${loginLog.username}</td>
	                                   <td>${loginLog.ip}</td>
	                                   <td>${loginLog.browser}</td>
	                                   <td><fmt:formatDate value="${loginLog.createDate}" type="both"  pattern="yyyy-MM-dd HH:mm"/></td>
	                                   <td>
	                                   	<c:choose>
									       <c:when test="${loginLog.status == 1}">
									            	成功
									       </c:when>
									       <c:otherwise>
									              	失败
									       </c:otherwise>
										</c:choose>
	                                   </td>
	                               </tr>
                              </c:forEach>
                            </tbody>
                        </table>
                    </div>
                    <!-- 分页 -->
                    <div class="table-footer">
                        <div class="pagination">
                            <ul>
                                <li><a href="javascript:loadContent('admin/loginLog/log/list.jhtml?pageNumber=${page.pageNumber-1}')"><spring:message code="admin.pageup"/></a></li>
                               	<c:forEach var="pageNumber" begin="1" end="${page.totalPages}" step="1"> 
	                                <li <c:if test="${pageNumber == page.pageNumber}">class="active"</c:if> >
	                               	 <a href="javascript:loadContent('admin/loginLog/log/list.jhtml?pageNumber=${pageNumber}')">${pageNumber}</a>
	                                </li>
                               </c:forEach>
                                <li><a href="javascript:loadContent('admin/loginLog/log/list.jhtml?pageNumber=${page.pageNumber+1}')"><spring:message code="admin.pagedown"/></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
		    <!-- /content wrapper -->

<script type="text/javascript">
	$(document).ready(function(){
		initSearchForm("loginForm");
	});
	
</script>