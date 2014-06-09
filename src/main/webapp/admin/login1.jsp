<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<base href="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/">  
<title>绵阳联生活网络科技有限公司后台管理网站</title>
<style type="text/css">
</style>
<link href="admin/css/css.css" rel="stylesheet" type="text/css" />
<link href="resources/css/common.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="admin/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="resources/js/common.js"></script>
 <c:if test="${! empty message}">
  <script>
 	$(function(){
 		$.message("${message.type}", "${message.content}");
 	});
 	</script>
</c:if> 
<script>
	function refreshPictureCheckCode(){
		$("#pictureCheckCode").attr("src","pictureCheckCode.jhtml");
	}
	function check(){
		if($.trim($("#username").val()) ==""){
			$.message("error", "用户名不能为空");
			return false;
		} 
		if($.trim($("#password").val()) ==""){
			$.message("error", "密码不能为空");
			return false;
		} 
		if($.trim($("#txtPictureCheckCode").val()) ==""){
			$.message("error", "验证码不能为空");
			return false;
		} 
		return true;
	}
</script>

</head>

<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="147" background="admin/images/top02.gif"><img src="admin/images/top03.gif" width="776" height="147" /></td>
  </tr>
</table>
<table width="562" border="0" align="center" cellpadding="0" cellspacing="0" class="right-table03">
  <tr>
    <td width="221"><table width="95%" border="0" cellpadding="0" cellspacing="0" class="login-text01">
      <tr>
        <td><table width="100%" border="0" cellpadding="0" cellspacing="0" class="login-text01">
          <tr>
            <td align="center"><img src="admin/images/ico13.gif" width="107" height="97" /></td>
          </tr>
          <tr>
            <td height="40" align="center">&nbsp;</td>
          </tr>
          
        </table></td>
        <td><img src="admin/images/line01.gif" width="5" height="292" /></td>
      </tr>
    </table></td>
    <td>
    <form action="admin/login.jhtml" method="post" onsubmit="return check()">
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="31%" height="35" class="login-text02">用户名称：<br /></td>
        <td width="69%"><input name="username" id="username" type="text" size="30" /></td>
      </tr>
      <tr>   
        <td height="35" class="login-text02">密　码：<br /></td>
        <td><input name="password" id="password" type="password" size="30" /></td>
      </tr>
      <tr>
        <td height="35" class="login-text02">验证图片：<br /></td>
        <td><img id="pictureCheckCode" src="pictureCheckCode.jhtml" width="109" height="40" /> <a href="javascript:refreshPictureCheckCode()" class="login-text03">看不清楚，换张图片</a></td>
      </tr>
      <tr>
        <td height="35" class="login-text02">请输入验证码：</td>
        <td><input name="pictureCheckCode" id="txtPictureCheckCode" type="text" size="30" /></td>
      </tr>
      <tr>
        <td height="35">&nbsp;</td>
        <td><input name="Submit2" type="submit" class="right-button01" value="确认登陆" />
          <input name="Submit232" type="submit" class="right-button02" value="重 置" /></td>
      </tr>
    </table>
    </form>
    </td>
  </tr>
</table>
</body>
</html>