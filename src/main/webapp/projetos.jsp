	<%@ include file="public/header.jsp"%>
	<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<base href="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/">
	<section class="main">

		<!-- <section class="title-page">
			<h1>项目</h1>
			<h4>我们最近完成的一种选择</h4>
		</section>
 	-->
 <%@ include file="public/index_projetos_body.jsp"%>
	</section>

	<%@ include file="public/footer2.jsp" %>