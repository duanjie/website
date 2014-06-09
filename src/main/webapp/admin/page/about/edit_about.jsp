<%@ include file="../common/header.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<base href="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/">
<script src="admin/js/jquery.min.js" type="text/javascript"></script>
<script type="text/javascript" src="admin/js/uploadPreview.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/js/test.js"></script>
<link rel="stylesheet" type="text/css" href="jquery-easyui-1.2.3/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="jquery-easyui-1.2.3/themes/icon.css">
<script type="text/javascript" src="jquery-easyui-1.2.3/jquery-1.4.4.min.js"></script>
<script type="text/javascript" src="jquery-easyui-1.2.3/jquery.easyui.min.js"></script>
<style type="text/css">
<!--
.atten {
	font-size: 12px;
	font-weight: normal;
	color: #F00;
}
-->
</style>
<script type="text/javascript" src="admin/js/about.js"></script>
  <form action="admin/aboutUs/edit_about.jhtml" method="post">
<div class="MainDiv" id="mainDiv">
  <input type="hidden" name="id" value = "${about.id}">
<table width="99%" border="0" cellpadding="0" cellspacing="0" class="CContent">
  <tr>
      <th class="tablestyle_title" >关于我们页面</th>
  </tr>
  <tr>
    <td class="CPanel">
		
		<table border="0" cellpadding="0" cellspacing="0" style="width:100%">

		<TR>
			<TD width="100%">
				<fieldset style="height:100%;">
				<legend>修改关于我们信息</legend>
					  <table border="0" cellpadding="2" cellspacing="1" style="width:100%">
					  <tr>
					    <td nowrap align="right" width="13%">图片:</td>
					    <td width="43%">
					    <input type="hidden" name="image" value = "${about.image}" id="image"/>
					    <img id="logoUrl" alt="" src="${about.image}"/>
					   <%--      <img id="logoUrl" alt="" src="${siteInformation.logoUrl}"/> <input type="file" onchange="onchangeLogo(this)"/> --%>
					     	  <%-- <div><img id="ImgPr"  width="136" height="40" src="${siteInformation.logoUrl}"/></div>
                             <input type="file" id="up" /> 
                            <input type="hidden" value="${siteInformation.logoUrl}" name="logoUrl"/>  --%>
					     </td>
					     <td nowrap align="right">内容:</td>
					    <td>
					    	<textarea name="content" rows="30" cols="50" id="content">${about.content}</textarea>
					    	<div class="prompt" id="prompt"></div>
					    </td>
					    </tr>
					  <tr>
					  </tr>
					  
					  </table>
			 <br />
				</fieldset>			</TD>
		</TR>
		
		</TABLE>
	
	
	 </td>
  </tr>
		<TR>
			<TD colspan="2" align="center" height="50px">
			<input type="submit" id="submit"value="保存" class="button"  />　
			
			<input type="button" value="返回" class="button" onclick="window.history.go(-1);"/></TD>
		</TR>
		</TABLE>
	
	
	 </td>
  </tr>
  </table>

</div>
</form>
<%@ include file="../common/footer.jsp"%>
<!-- <script type="text/javascript">
$(function () {
    $("#up").uploadPreview({ Img: "ImgPr", Width: 136, Height: 40 });
});
</script> -->
