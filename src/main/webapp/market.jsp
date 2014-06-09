 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding= "UTF-8"%>
 <%@ include file="public/header.jsp"%> 
 <base href="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/">
	<section class="main-events">
		<section class="events">
		   <%--  <div style="width: 1002px;height: 270px;">
		    	<img alt="" src="market\image\banner9.jpg">
		    </div>
			<div class="item-event">
				<figure class="img-event">
					<img width="141" height="170" src="${market.itemFirstImage }"
						class="attachment-thumbnail wp-post-image" alt="asm">
				</figure>

				<h1 class="title-event" id="itemFirstTitle">${market.itemFirstTitle }</h1>
				<div class="text-event">
					<p> &nbsp;&nbsp;&nbsp;&nbsp;${market.itemFirstContent}</p>
				</div>
			</div>
			<div class="item-event">
				<figure class="img-event">
					<img width="141" height="170" src="${market.itemSecondImage }"
						class="attachment-thumbnail wp-post-image" alt="add">
				</figure>
				<h1 class="title-event">${market.itemSecondTitle }</h1>
				<div class="text-event">
					<p>
                      &nbsp;&nbsp;&nbsp;&nbsp;${market.itemSecondContent }</p>
				</div>
			</div> --%>
			 ${article.content }
		</section>
	</section>
<%@ include file="public/footer.jsp" %> 
	
	
	
	