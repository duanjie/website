<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

 <!-- Content wrapper -->
 
		    <!-- /content wrapper -->
		    
		    
		     <div class="wrapper">
		     
		           <!-- Breadcrumbs line -->
				  <div class="crumbs">
				         <ul id="breadcrumbs" class="breadcrumb"> 
				             <li><a href="index.html">Dashboard</a></li>
				             <li class="active"><a href="calendar.html" title="">Calendar</a></li>
				         </ul>
				         <ul class="alt-buttons">
				             <li><a href="#" title=""><i class="icon-signal"></i><span>统计</span></a></li>
				             <li><a href="#" title=""><i class="icon-comments"></i><span>消息</span></a></li>
				             <li class="dropdown"><a href="#" title="" data-toggle="dropdown"><i class="icon-tasks"></i><span>任务</span> <strong>(+16)</strong></a>
				             	<ul class="dropdown-menu pull-right">
				                     <li><a href="#" title=""><i class="icon-plus"></i>添加新任务</a></li>
				                     <li><a href="#" title=""><i class="icon-cog"></i>设置</a></li>
				             	</ul>
				             </li>
				         </ul>
				  </div>
				  
			    	<h5 class="widget-name"><i class="icon-th"></i>Media table</h5>
		     
		     
		     
                	<ul class="toolbar">
                        <li><a href="#" title=""><i class="icon-heart"></i><span>修改</span></a></li>
                        <li><a href="#" title=""><i class="icon-plus"></i><span>添加</span></a></li>
                        <li><a href="#" title=""><i class="icon-cog"></i><span>设置</span></a></li>
                    </ul>
                    <div class="table-overflow">
                        <table  class="table table-striped table-bordered table-checks media-table">
                            <thead>
                                <tr>
                                    <th width="10%"><div class="checker" id="uniform-undefined"><span><input type="checkbox"  name="checkAllRow" class="styled" style="opacity: 0;" ></span></div></th>
                                    <th width="20%">菜单id</th>
                                    <th width="20%">标题</th>
                                    <th width="20%">作者</th>
                                    <th width="30%">内容</th>
                                </tr>
                            </thead>
                            <tbody   class="table table-striped table-bordered table-checks media-table">
                              <c:forEach items="${page.content}" var="article" varStatus="status">
	                               <tr id="cls" <c:if test="${status.index % 2 != 0}">class="info" </c:if>>
	                                   <td><div class="checker" id="uniform-undefined"><span ><input type="checkbox" name="checkRow"  class="styled" style="opacity: 0;"/></span></div></td>
	                                   <td id="ids" ><c:out value="${article.menuId}"/></td>
	                                   <td><c:out value="${article.briefTitle}"/></td>
	                                   <td><c:out value="${article.author}"/></td>
	                                   <td><c:out value="${article.content}"/></td>
	                               </tr>
                              </c:forEach>
                            </tbody>
                        </table>
                    </div>
                    <!-- 分页 -->
                    <div class="table-footer">
                        <div class="pagination">
                            <ul>
                               	<c:forEach var="user" items="${list}"> 
	                                <li>
	                               	 <c:out value="${user.name }" />
	                                </li>
                               </c:forEach>
                            </ul>
                        </div>
                    </div>
                </div>

<script type="text/javascript">
	$(document).ready(function(){
		initCheckBoxSelectAll("checkAllRow","checkRow");
	});
</script>