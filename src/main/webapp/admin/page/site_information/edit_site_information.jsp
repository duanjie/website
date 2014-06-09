<%@ include file="../common/header.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<base href="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/">
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/js/test.js"></script>
<script type="text/javascript" src="admin/js/uploadPreview.min.js"></script>
<script type="text/javascript" src="admin/js/index.js"></script>
<style type="text/css">
<!--
.atten {
	font-size: 12px;
	font-weight: normal;
	color: #F00;
}
-->
</style>
  <form action="admin/siteInfomation/edit.jhtml" method="post">
<div class="MainDiv" id="mainDiv">
  <input type="hidden" name="id" value = "${siteInformation.id}">
<table width="99%" border="0" cellpadding="0" cellspacing="0" class="CContent">
  <tr>
      <th class="tablestyle_title" >公司简介页面</th>
  </tr>
  <tr>
    <td class="CPanel">
		
		<table border="0" cellpadding="0" cellspacing="0" style="width:100%">

		<TR>
			<TD width="100%">
				<fieldset style="height:100%;">
				<legend>修改公司基本信息</legend>
					  <table border="0" cellpadding="2" cellspacing="1" style="width:100%">
					  <tr>
					    <td nowrap align="right" width="13%">公司Logo:</td>
					    <td width="43%">
					    <img id="logoUrl" alt="" src="${siteInformation.logoUrl}"/>
					   <%--      <img id="logoUrl" alt="" src="${siteInformation.logoUrl}"/> <input type="file" onchange="onchangeLogo(this)"/> --%>
					     	  <%-- <div><img id="ImgPr"  width="136" height="40" src="${siteInformation.logoUrl}"/></div>
                             <input type="file" id="up" /> 
                            <input type="hidden" value="${siteInformation.logoUrl}" name="logoUrl"/>  --%>
                            <input type="hidden" value="${siteInformation.logoUrl}" name="logoUrl"/>
					     </td>
					    </tr>
					  <tr>
					    <td nowrap align="right">标题:</td>
					    <td><input name="title" class="text" style="width:220px" id="title"  value="${siteInformation.title}"/><div class="prompt1" id="prompt1"></div></td>
					  </tr>
					   <tr>
					    <td nowrap align="right">公司地址</td>
						 <td><input name="companyAddress" class="text" style="width:220px"  id="companyAddress" value="${siteInformation.companyAddress}"/><div class="prompt2" id="prompt2"></div></td>
					  </tr>
					   <tr>
					    <td nowrap align="right">邮箱地址</td>
						 <td><input name="emailAddress" class="text" style="width:220px" id="emailAddress" value="${siteInformation.emailAddress}"/> <div class="prompt3" id="prompt3"></div></td>
					  </tr>
					  <tr>
					   		    <td nowrap align="right">联系电话</td>
						 <td><input name="phone" class="text" style="width:220px" id="phone" value="${siteInformation.phone}"/><div class="prompt4" id="prompt4"></div></td>
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
			<input type="submit" id="submit" value="保存" class="button"/>　
			
			<input type="button" value="返回" class="button" onclick="window.history.go(-1);"/></TD>
		</TR>
		</TABLE>
	
	
	 </td>
  </tr>
  </table>

</div>
</form>
<%@ include file="../common/footer.jsp"%>
<script type="text/javascript">
$(function () {
    $("#up").uploadPreview({ Img: "ImgPr", Width: 136, Height: 40 });
});
</script>
