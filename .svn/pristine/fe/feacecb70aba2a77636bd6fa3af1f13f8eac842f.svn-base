<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
		    
<style>  
.cdiv {  
width: 1400px;  
margin-left: 10px;  
margin-right: 50px; 
 

}  
</style> 
		     <!-- Content wrapper -->
		   <fieldset>
			    <!-- Breadcrumbs line -->
			    <div class="crumbs">
		            <ul id="breadcrumbs" class="breadcrumb"> 
		                <li><a href="javascript:loadContent('admin/album/list.jhtml')"><spring:message code="admin.album"/></a></li>
		                <li class="active"><a href="javascript:;" title=""><spring:message code="admin.list"/></a></li>
		            </ul>
		         
                 </div>  
                   
                   
                        
                              
                     <div class="widget">
	                <div id="scrollspy-data" class="navbar navbar-static">
	                    <div class="navbar-inner">
	                        <div class="container">
			
					<h6><spring:message code="admin.album.title"/>：<c:out value="${album.title}"/></h6>
					
					<ul class="nav pull-center">
			
					<li><a href="javascript:;" title=""><spring:message code="admin.album.count"/>：${count}<spring:message code="admin.piece"/></a></li>
					<li ><a href="javascript:;" title=""><spring:message code="admin.album.author"/>：<c:out value="${album.author}"/></a></li>
					<li ><a href="javascript:;" title=""><spring:message code="admin.article.level"/>：<c:out value="${album.topLevel}"/></a></li>
				 	 <li ><a href="javascript:;"><spring:message code="admin.notice.create.time"/>：<fmt:formatDate value="${album.createDate}" type="both"  pattern="yyyy-MM-dd"/></a></li>
                </ul>
						
					
					
				<ul class="nav pull-right">
				
				
				
                       
                </ul>
                </div></div></div></div> 	
                  <img src="${imageCover.address}" alt="" style="width: 100px;height: 100px"/>
                          
                   
                    <div class="span3">
                        		<div class="widget">
	                            	<!-- Unordered list -->
	                            	<strong class="subtitle"></strong>
	                                <div class="well-white body">
	                                        <spring:message code="admin.album.description"/>：
	                                        <ul>
	                                   
	                                            <c:out value="${album.description}"/>
	                                        </ul>
	                                    
	                                </div>
	                            </div>
                            </div>
                    
                           
               
      			<ul class="toolbar">
				<li>
					
					<li>
					<a href="javascript:loadContent('admin/image/showAdd.jhtml?albumId=${album.id}')" ><spring:message code="admin.image.add"/></a>	</li>
                </ul>
		    	
		    	<div class="widget">
	                <div id="scrollspy-data" class="navbar navbar-static">
	                    <div class="navbar-inner">
	                        <div class="container">
			
					<h6><a href="javascript:;" title=""><i class="ico-eye-open"></i><spring:message code="admin.image.list"/></a></h6>
				<ul class="nav pull-right">
				
				
				 
				
                       
                </ul>
                </div></div></div></div>
                <!-- With titles -->
               <div class="cdiv">
               <div class="media row-fluid" >
              
				
				<br>
				<c:forEach var="image" items="${page.content}" varStatus="status" >
				<div class="span3">
						<div class="widget">
						    <div class="well">
						    	<div class="view">
									<a href="${image.address}" class="view-back lightbox"></a>
									<img src="${image.address}" style="width: 370px;height:240px;" alt="" />
							    </div>
						    	<div class="item-info">
						    		<a href="javascript:;" title="" class="item-title">${image.title}</a>
						    		<p style="height:50px;overflow: hidden;">&nbsp;&nbsp;&nbsp;&nbsp;
										<c:choose> 
											<c:when test="${fn:length(image.description) > 35}"> 
												<c:out value="${fn:substring(image.description, 0, 35)}......" /> 
											</c:when> 
											<c:otherwise> 
												<c:out value="${image.description}" /> 
											</c:otherwise> 
										</c:choose>
						    		</p>
						    		<p class="item-buttons">
						    			<a href="javascript:loadContent('admin/image/showEdit.jhtml?id=${image.id}')" class="btn btn-info tip" title="Edit"><i class="icon-pencil"></i></a>
						    			<a href="javascript:onDeleteById('admin/image/delete.jhtml','admin/image/list.jhtml?albumId=${album.id}',${image.id})" class="btn btn-danger tip" title="Move to trash"><i class="icon-trash"></i></a>
						    		</p>
						    	</div>
						    	</div>
						    </div>
						</div>
					</c:forEach>
				</div>
			
				</div>
				</fieldset>
				
				
				
                <!-- /with titles -->
            <div class="table-footer">
                        <div class="pagination">
                            <ul>
                                <li><a href="javascript:loadContent('admin/image/list.jhtml?pageNumber=${page.pageNumber-1}')"><spring:message code="admin.article.pageup"/></a></li>
                               	<c:forEach var="pageNumber" begin="1" end="${page.totalPages}" step="1"> 
	                                <li <c:if test="${pageNumber == page.pageNumber}">class="active"</c:if> >
	                               	 <a href="javascript:loadContent('admin/image/list.jhtml?pageNumber=${pageNumber}')">${pageNumber}</a>
	                                </li>
                               </c:forEach>
                                <li><a href="javascript:loadContent('admin/image/list.jhtml?pageNumber=${page.pageNumber+1}')"><spring:message code="admin.article.pagedown"/></a></li>
                            </ul>
                        </div>
                    </div>
                    
               
            <!-- /content wrapper -->



<script type="text/javascript">
	$(document).ready(function(){
		initCheckBoxSelectAll("checkAllRow","checkRow");
		$('.view').hover(function(){
		    $(this).children(".view-back").fadeIn(200);
		},function(){
		    $(this).children(".view-back").fadeOut(200);
		});
	});
	
</script>

	