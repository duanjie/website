<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
<base href="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/">
<title><spring:message code="admin.login.title"/></title>
<link href="admin/resources/css/main.css" rel="stylesheet" type="text/css" />
<!--[if IE 8]><link href="admin/resources/css/ie8.css" rel="stylesheet" type="text/css" /><![endif]-->
<!--[if IE 9]><link href="admin/resources/css/ie9.css" rel="stylesheet" type="text/css" /><![endif]-->
<link href='admin/resources/css/family.css' rel='stylesheet' type='admin/text/css'>
<script type="text/javascript" src="admin/resources/js/jquery.min.js"></script>
<script type="text/javascript" src="admin/resources/js/jquery-ui.min.js"></script>
<script type="text/javascript" src="admin/resources/js/plugins/forms/jquery.uniform.min.js"></script>
<script type="text/javascript" src="admin/resources/js/files/bootstrap.min.js"></script>
<script type="text/javascript" src="admin/resources/js/files/login.js"></script>
<link href="admin/resources/css/common.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="admin/resources/js/common.js"></script>
<c:if test="${! empty message}">
  <script>
 	$(function(){
 		$.message("${message.type}", "${message.content}");
 	});
 	</script>
</c:if> 
<script>
	function check(){
		if($.trim($("#username").val()) ==""){
			$.message("error", '<spring:message code="admin.validate.username.blank"/>');
			return false;
		} 
		if($.trim($("#password").val()) ==""){
			$.message("error", '<spring:message code="admin.validate.password.blank"/>');
			return false;
		} 
		return true;
	}
</script>
</head>
<body class="no-background">
	<!-- Fixed top -->
	<div id="top">
		<div class="fixed">
			<a href="index.html" title="" class="logo"><img src="admin/resources/img/logo_88_31.png" alt="" /></a>
		</div>
	</div>
	<!-- /fixed top -->
	
    <!-- Login block -->
    <div class="login">
        <div class="navbar">
            <div class="navbar-inner">
                <h6><i class="icon-user"></i><spring:message code="admin.login.tab.title"/> </h6>
            </div>
        </div>
        <div class="well">
            <form action="admin/login.jhtml" method="post" onsubmit="return check()" class="row-fluid">
                <div class="control-group">
                    <label class="control-label"><spring:message code="admin.login.username"/> </label>
                    <div class="controls"><input class="span12" type="text" name="username" id="username" placeholder="username" /></div>
                </div>
                
                <div class="control-group">
                    <label class="control-label"><spring:message code="admin.login.password"/>:</label>
                    <div class="controls"><input class="span12" type="password" name="password" id="password" placeholder="password" /></div>
                </div>

                <div class="control-group">
                    <div class="controls"><label class="checkbox inline"><input type="checkbox" name="checkbox1" class="styled" value="" checked="checked">记住我</label></div>
                </div>
                <div class="login-btn"><input type="submit" value='<spring:message code="admin.login.submit"/>' class="btn btn-danger btn-block" /></div>
            </form>
        </div>
    </div>
    <!-- /login block -->

	<!-- Footer -->
	<div id="footer">
		<div class="copyrights"><spring:message code="admin.footer.copyrights"/></div>
	</div>
	<!-- /footer -->
</body>
</html>
