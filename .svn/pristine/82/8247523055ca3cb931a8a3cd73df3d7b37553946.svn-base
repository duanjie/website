<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
		    
		       <!-- Content wrapper -->
		    <div class="wrapper">

			    <!-- Breadcrumbs line -->
			    <div class="crumbs">
		            <ul id="breadcrumbs" class="breadcrumb"> 
		                <li><a href="javascript:;"><spring:message code="admin.album"/></a></li>
		                <li class="active"><a href="javascript:;" title=""><spring:message code="admin.list"/></a></li>
		            </ul>
			    </div>
			    <!-- /breadcrumbs line -->
				
				
				
		    	
		    	
				
				<ul class="toolbar">
						  
						  <li><a href="javascript:loadContent('admin/album/showAdd.jhtml')" title=""><i class="icon-plus"></i><span><spring:message code="admin.add"/></span></a></li>
                		 <li><a href="javascript:onEdit('admin/album/showEdit.jhtml','checkRow')" title=""><i class="ico-pencil"></i><span><spring:message code="admin.edit"/></span></a></li>
                         <li><a href="javascript:onDelete('admin/album/delete.jhtml','admin/album/list.jhtml','checkRow')" title=""><i class="ico-remove"></i><span><spring:message code="admin.delete"/></span></a></li>
                		
                		
	             
                </ul>
				

                <!-- datatable -->
                <div class="widget">
                    <div class="table-overflow">
                        <table class="table table-striped table-bordered table-checks media-table">
                            <thead>
                                <tr>
                                	<th width="20%"><div class="checker" id="uniform-undefined"><span><input type="checkbox"  name="checkAllRow" class="styled" style="opacity: 0;" ></span></div></th>
                                    <th width="20%"><span><a href="javascript:loadContent('admin/image/list.jhtml')"><spring:message code="admin.cover"/></a></span></th>
                                    <th width="20%"> <spring:message code="admin.leavelmessage.title"/></th>
                                    <th width="20%"><spring:message code="admin.notice.create.time"/></th>
                                </tr>
                            </thead>
                            <tbody>
                           
                              <c:forEach var="album" items="${page.content}" varStatus="status">
                               	 <tr id="cls" <c:if test="${status.index % 2 != 0}">class="info" </c:if>>
	                                   <td><div class="checker" id="uniform-undefined"><span ><input type="checkbox" name="checkRow"  class="styled" style="opacity: 0;" value="${album.id}"/></span></div></td>
				                        <td>
				                        	<a href="javascript:loadContent('admin/image/list.jhtml?albumId=${album.id}')"  class="lightbox">
				                        		<c:forEach items="${album.images}" var="image">
				                        			<c:if test="${image.isCover == 1}">
				                        				<img src="${image.address}" alt="" style="width: 37px;height: 37px"/>
				                        			</c:if>
				                        		</c:forEach>
				                        	</a>
				                        </td>
				                        <td><a href="javascript:loadContent('admin/image/list.jhtml?albumId=${album.id}')" id="titVal" ><c:out value="${album.title}"/></a></td>
				                        <td><fmt:formatDate value="${album.createDate}" type="both"  pattern="yyyy-MM-dd"/></td>
                                </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                    
                    <!-- 分页 -->
                    <div class="table-footer">
                        <div class="pagination">
                            <ul>
                                <li><a href="javascript:loadContent('admin/album/list.jhtml?pageNumber=${page.pageNumber-1}')"><spring:message code="admin.article.pageup"/></a></li>
                               	<c:forEach var="pageNumber" begin="1" end="${page.totalPages}" step="1"> 
	                                <li <c:if test="${pageNumber == page.pageNumber}">class="active"</c:if> >
	                               	 <a href="javascript:loadContent('admin/album/list.jhtml?pageNumber=${pageNumber}')">${pageNumber}</a>
	                                </li>
                               </c:forEach>
                                <li><a href="javascript:loadContent('admin/album/list.jhtml?pageNumber=${page.pageNumber+1}')"><spring:message code="admin.pagedown"/></a></li>
                            </ul>
                        </div>
                    </div>
                    
                </div>
                <!-- datatable -->

            </div>
            <!-- /content wrapper -->
<script type="text/javascript">
	$(document).ready(function(){
		initCheckBoxSelectAll("checkAllRow","checkRow");
		 //===== Media item hover overlay =====//

		$('.view').hover(function(){
		    $(this).children(".view-back").fadeIn(200);
		},function(){
		    $(this).children(".view-back").fadeOut(200);
		});
	});
	
</script>