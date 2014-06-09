<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

		    
		       <!-- Content wrapper -->
		    <div class="wrapper">

			    <!-- Breadcrumbs line -->
			    <div class="crumbs">
		            <ul id="breadcrumbs" class="breadcrumb"> 
		                <li><a href="index.html">相册管理</a></li>
		                <li class="active"><a href="javascript:;" title="">列表</a></li>
		            </ul>
			    </div>
			    <!-- /breadcrumbs line -->

		    	<h5 class="widget-name"><i class="icon-th"></i>相册列表</h5>
				
				<ul class="toolbar">
                        <li><a href="javascript:loadContent('admin/album/showAdd.jhtml')" title=""><i class="icon-plus"></i><span>添加</span></a></li>
                </ul>
				
                <!-- With titles -->
                <body>
				<div class="media row-fluid">
				
				<!-- Album List -->
				<c:forEach var="album" items="${page.content}">
					<div class="span3">
						<div class="widget">
						    <div class="well">
						    	<div class="view">
									<a href="img/demo/big.jpg" class="view-back lightbox"></a>
									<c:choose> 
											<c:when test="${fn:length(album.description) > 85}"> 
												<img src="http://placehold.it/580x580" alt="" />
											</c:when> 
											<c:otherwise> 
												<img src="http://placehold.it/580x380" alt="" />
											</c:otherwise> 
										</c:choose>
							    </div>
						    	<div class="item-info">
						    		<a href="#" title="" class="item-title">${album.title}</a>
						    		<p style="height:50px">&nbsp;&nbsp;&nbsp;&nbsp;
										<c:choose> 
											<c:when test="${fn:length(album.description) > 85}"> 
												<c:out value="${fn:substring(album.description, 0, 85)}......" /> 
											</c:when> 
											<c:otherwise> 
												<c:out value="${album.description}" /> 
											</c:otherwise> 
										</c:choose>
						    		</p>
						    		<p class="item-buttons">
						    			<a href="#" class="btn btn-info tip" title="Edit"><i class="icon-pencil"></i></a>
						    			<a href="#" class="btn btn-danger tip" title="Move to trash"><i class="icon-trash"></i></a>
						    		</p>
						    	</div>
						    </div>
						</div>
					</div>
				</c:forEach>
				</div>
                <!-- /with titles -->

            </div>
            </body>
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