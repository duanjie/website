<%@ include file="../common/header.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<base href="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
<script type="text/javascript" src="admin/js/uploadPreview.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/js/test.js"></script>
<style type="text/css">
<!--
.atten {
	font-size: 12px;
	font-weight: normal;
	color: #F00;
}
-->
</style>
  <%-- <form action="admin/siteInfomation/edit.jhtml" method="post">
  <input type="hidden" name="id" value = "${siteInformation.id}"> --%>
<div class="MainDiv">
<table width="99%" border="0" cellpadding="0" cellspacing="0" class="CContent">
  <tr>
      <th class="tablestyle_title" >关于我们页面</th>
  </tr>
  <tr>
    <td class="CPanel">
		
		<table border="0" cellpadding="0" cellspacing="0" style="width:100%">

		<TR >
			<TD width="100%" >
				<fieldset style="height:100%;">
				<legend>关于我们信息</legend>
					  <table border="0" cellpadding="2" cellspacing="1" style="width:100%">
					  <tr >
					    <td nowrap align="right" width="13%" style="font-size:16px;">图片：</td>
					    <td width="43%">
					    <img alt="" src="${about.image} ">
					   <%--      <img id="logoUrl" alt="" src="${siteInformation.logoUrl}"/> <input type="file" onchange="onchangeLogo(this)"/> --%>
					     	  <%-- <div><img id="ImgPr"  width="136" height="40" src="${siteInformation.logoUrl}"/></div>
                             <input type="file" id="up" /> 
                            <input type="hidden" value="${siteInformation.logoUrl}" name="logoUrl"/>  --%>
					     </td>
					    </tr>
					  <%-- <tr>
					    <td nowrap align="right">图片：</td>
					    <td><img alt="" src="${about.image} ">	</td>
					  </tr> --%>
					   <tr>
					    <td nowrap align="right" style="font-size:16px;">内容：</td>
						 <td style="font-size:14px;">${about.content }</td>
					  </tr>
					 <%--   <tr>
					    <td nowrap align="right">邮箱地址：</td>
						 <td>${about.emailAddress}</td>
					  </tr>
					  <tr>
					   		    <td nowrap align="right">联系电话：</td>
						 <td>${about.phone}</td>
					    </tr> --%>
					  </table>
			 <br />
				</fieldset>			</TD>
		</TR>
		
		</TABLE>
	
	
	 </td>
  </tr>
		<!-- <TR>
			<TD colspan="2" align="center" height="50px">
			<input type="submit" value="保存" class="button"/>　
			
			<input type="button" value="返回" class="button" onclick="window.history.go(-1);"/></TD>
		</TR> -->
		</TABLE>
	
	
	 </td>
  </tr>
  </table>

</div>
<!-- </form> -->
<%@ include file="../common/footer.jsp"%>
<script type="text/javascript">
$(function () {
    $("#up").uploadPreview({ Img: "ImgPr", Width: 136, Height: 40 });
});
</script>