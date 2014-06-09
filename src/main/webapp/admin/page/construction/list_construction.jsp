<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ include file="../common/header.jsp"%>
<base href="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/">
<script src="admin/js/jquery.min.js" type="text/javascript"></script>
<script type="text/javascript" src="admin/js/construction.js"></script>
<form  method="post" action="admin/siteConstruction/edit_construction.jhtml">
<div　id="con" >
<input type="hidden" name="id" value = "${siteConstruction.id}">
 <input type="hidden" name="itemFirstImage" value = "${siteConstruction.itemFirstImage}">
  <input type="hidden" name="itemSecondImage" value = "${siteConstruction.itemSecondImage}">
   <input type="hidden" name="itemThirdImage" value = "${siteConstruction.itemThirdImage}">
    
<table width="100%" border="0" cellspacing="0" cellpadding="0" >
  <tr>
    <td><table id="subtree1" style="DISPLAY: " width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
          	 
              <tr>
                <td height="40" class="font42">
              <table width="99%" border="0" cellpadding="4" cellspacing="1" bgcolor="#464646" class="newfont03">
            <tr class="CTitle" >
                    	<td height="22" colspan="7" align="center" style="font-size:16px">网站营销详细列表</td>
                  </tr>
					  <tr bgcolor="#EEEEEE" >
					    <th nowrap align="left" width="13%">网站建设标题:</th>
					     <th nowrap align="left">网站建设内容:</th>
					      <th nowrap align="left">网站建设方向:</th>
					    </tr>
					<tr bgcolor="#EEEEEE">
					    
					    <td width="43%">
					    <textarea name="itemFirstTitle" id="itemFirstTitle" rows="5" cols="50">${siteConstruction.itemFirstTitle }</textarea>
					    <div class="prompt1" id="prompt1"></div>
					     </td>
					    <td>
					    	<textarea name="itemFirstContent" id="itemFirstContent" rows="10" cols="50">${siteConstruction.itemFirstContent }</textarea>
						    <div class="prompt2" id="prompt2"></div>
					    </td>
					    <td width="43%">
					    <textarea name="itemFirstTag" id="itemFirstTag" rows="5" cols="50">${siteConstruction.itemFirstTag }</textarea>
					    <div class="prompt3" id="prompt3"></div>
					     </td>
					    </tr>
					    
					   <tr bgcolor="#EEEEEE">
					    
					    <td width="43%">
					    <textarea name="itemSecondTitle" id="itemSecondTitle" rows="5" cols="50">${siteConstruction.itemSecondTitle }</textarea>
					    <div class="prompt4" id="prompt4"></div>
					     </td>
					    
					    <td>
					    	<textarea name="itemSecondContent" id="itemSecondContent" rows="10" cols="50">${siteConstruction.itemSecondContent }</textarea>
					    	 <div class="prompt5" id="prompt5"></div>
					    </td>
					    
					    <td width="43%">
					    <textarea name="itemSecondTag" id="itemSecondTag" rows="5" cols="50">${siteConstruction.itemSecondTag }</textarea>\
					    <div class="prompt6" id="prompt6"></div>
					     </td>
					    </tr>
					    <tr bgcolor="#EEEEEE">
					    
					    <td width="43%">
					    <textarea name="itemThirdTitle" id="itemThirdTitle" rows="5" cols="50">${siteConstruction.itemThirdTitle }</textarea>
					     <div class="prompt7" id="prompt7"></div>
					     </td>
					    
					    <td>
					    	<textarea name="itemThirdContent" id="itemThirdContent" rows="10" cols="50">${siteConstruction.itemThirdContent }</textarea>
					    	 <div class="prompt8" id="prompt8"></div>
					    </td>
					    
					    <td width="43%">
					    <textarea name="itemThirdTag" id="itemThirdTag" rows="5" cols="50">${siteConstruction.itemThirdTag }</textarea>
					     <div class="prompt9" id="prompt9"></div>
					     </td>
					    </tr>
					   
					<tr bgcolor="#EEEEEE">
						<td colspan="3" align="center" height="50px">
						<input type="submit" id="submit" value="保存" class="button"/>　
			       </td>
					</tr>
				 </table>
            </td>
        </tr>
      </table>
     
</table></table></div>
</form>


















<%@ include file="../common/footer.jsp"%>