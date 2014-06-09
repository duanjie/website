<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<base href="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/">
<script src="admin/js/market.js" type="text/javascript"></script>

<form  method="post" action="admin/siteMarket/edit_market.jhtml">
<div class="mainDiv" id="mainDiv">
 <input type="hidden" name="id" value = "${market.id}">
  <input type="hidden" name="itemFirstImage" value = "${market.itemFirstImage}">
   <input type="hidden" name="itemSecondImage" value = "${market.itemSecondImage}">
    <input type="hidden" name="banner" value = "${market.banner}">
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
					    <th nowrap align="left" width="13%">标题:</th>
					     <th nowrap align="left">内容:</th>
					    </tr>
					<tr bgcolor="#EEEEEE">
					    
					    <td width="43%">
					    <textarea name="itemFirstTitle" id="itemFirstTitle"  rows="10" cols="50">${market.itemFirstTitle }</textarea>
					     <div class="prompt1" id="prompt1"></div>
					     </td>
					    
					    <td>
					    	<textarea name="itemFirstContent" id="itemFirstContent" rows="10" cols="50">${market.itemFirstContent}</textarea>
					    	 <div class="prompt2" id="prompt2"></div>
					    </td>
					    </tr>
					   <tr bgcolor="#EEEEEE">
					    
					    <td width="43%">
					    <textarea name="itemSecondTitle" id="itemSecondTitle"  rows="10" cols="50">${market.itemSecondTitle }</textarea>
					    <div class="prompt3" id="prompt3"></div>
					     </td>
					    
					    <td>
					    	<textarea name="itemSecondContent" id="itemSecondContent"  rows="10" cols="50">${market.itemSecondContent }</textarea>
					    	 <div class="prompt4" id="prompt4"></div>
					    </td>
					    </tr>
					<tr bgcolor="#EEEEEE">
						<td colspan="2" align="center" height="50px">
						<input type="submit" id="submit" value="保存" class="button"/>　
			
			       </td>
					</tr>
				 </table>
            
            </td>
        </tr>
        
      </table>
      </td>
     </tr>
</table></table> </div>
</form>





















<%@ include file="../common/footer.jsp"%>