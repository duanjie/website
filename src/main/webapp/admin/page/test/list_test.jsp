<%@ include file="../common/header.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<base href="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/">
<link  href="../../css/test.css" rel="stylesheet" type="text/css""/>
<script type="text/javascript" src="../../js/test.js"></script>
<body>
<form name="fom" id="fom" method="post" action="">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  
  <tr>
    <td height="30">      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td height="62" background="../../images/nav04.gif">
            
		   <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
		    <tr>
			  <td width="21"><img src="../../images/ico07.gif" width="20" height="18" /></td>
			  <td width="538">查看内容：按时间：
<input name="textfield" type="text" size="12" readonly="readonly"/>
<span class="newfont06">至</span>
<input name="textfield" type="text" size="12" readonly="readonly"/>
<input name="Submit4" type="button" class="right-button02" value="查 询" /></td>
			   <td width="144" align="left"><a href="#" onclick="sousuo()">
			     <input name="Submit3" type="button" class="right-button07" value="高级搜索" />
			   </a></td>	
		    </tr>
          </table></td>
        </tr>
    </table></td></tr>
  <tr>
    <td><table id="subtree1" style="DISPLAY: " width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td><table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
          	 <tr>
               <td height="20"><span class="newfont07">选择：<a href="#" class="right-font08" onclick="selectAll();">全选</a>-<a href="#" class="right-font08" onclick="unselectAll();">反选</a></span>
	              <input name="Submit" type="button" class="right-button08" value="删除所选任务" />
	              <input name="Submit2" type="button" class="right-button08" value="添加任务" onclick="link();"/></td>
          	 </tr>
              <tr>
                <td height="40" class="font42">
				<table width="100%" border="0" cellpadding="4" cellspacing="1" bgcolor="#464646" class="newfont03">
				 <tr class="CTitle" >
                    	<td height="22" colspan="7" align="center" style="font-size:16px">任务详细列表</td>
                  </tr>
                  <tr bgcolor="#EEEEEE">
				    <td width="4%" align="center" height="30">选择</td>
                    <td width="10%">任务标题</td>
					<td width="10%">创建时间</td>
                    <td width="10%">发送者</td>
					<td width="10%">执行人</td>
					<td width="5%">优先级</td>
					<td width="12%">操作</td>
                  </tr>
                  <tr bgcolor="#FFFFFF">
				    <td height="20"><input type="checkbox" name="delid"/></td>
                    <td ><a href="listmokuaimingxi.htm" onclick=""></a>任务XXX</td>
					<td>2007-11-11</td>
                    <td>XXXXXX</td>
                    <td>XXXXXX</td>
                    <td>急</td>
                    <td><a href="edit_test.jsp">编辑|</a><a href="info_test.jsp">查看|</a>
					<a href="#">删除</a></td>
                  </tr>
				  <tr bgcolor="#FFFFFF">
				    <td height="20"><input type="checkbox" name="delid"/></td>
                    <td ><a href="listmokuaimingxi.htm" onclick=""></a>任务XXX</td>
					<td>2007-11-11</td>
                    <td>XXXXXX</td>
                    <td>XXXXXX</td>
                    <td>急</td>
                    <td><a href="edit_test.jsp">编辑|</a><a href="info_test.jsp">查看|</a>
					<a href="#">删除</a></td>
                  </tr>
				  <tr bgcolor="#FFFFFF">
				    <td height="20"><input type="checkbox" name="delid"/></td>
                    <td ><a href="listmokuaimingxi.htm" onclick=""></a>任务XXX</td>
					<td>2007-11-11</td>
                    <td>XXXXXX</td>
                    <td>XXXXXX</td>
                    <td>急</td>
                    <td><a href="edit_test.jsp">编辑|</a><a href="info_test.jsp">查看|</a>
					<a href="#">删除</a></td>
                  </tr>
				  <tr bgcolor="#FFFFFF">
				    <td height="20"><input type="checkbox" name="delid"/></td>
                    <td ><a href="listmokuaimingxi.htm" onclick=""></a>任务XXX</td>
					<td>2007-11-11</td>
                    <td>XXXXXX</td>
                    <td>XXXXXX</td>
                    <td>急</td>
                    <td><a href="edit_test.jsp">编辑|</a><a href="info_test.jsp">查看|</a>
					<a href="#">删除</a></td>
                  </tr>
				  <tr bgcolor="#FFFFFF">
				    <td height="20"><input type="checkbox" name="delid"/></td>
                    <td ><a href="listmokuaimingxi.htm" onclick=""></a>任务XXX</td>
					<td>2007-11-11</td>
                    <td>XXXXXX</td>
                    <td>XXXXXX</td>
                    <td>急</td>
                    <td><a href="edit_test.jsp">编辑|</a><a href="info_test.jsp">查看|</a>
					<a href="#">删除</a></td>
                  </tr>
            </table></td>
        </tr>
      </table>
      <table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td height="6"><img src="../images/spacer.gif" width="1" height="1" /></td>
        </tr>
        <tr>
          <td height="33"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="right-font08">
              <tr>
                <td width="50%">共 <span class="right-text09">5</span> 页 | 第 <span class="right-text09">1</span> 页</td>
                <td width="49%" align="right">[<a href="#" class="right-font08">首页</a> | <a href="#" class="right-font08">上一页</a> | <a href="#" class="right-font08">下一页</a> | <a href="#" class="right-font08">末页</a>] 转至：</td>
                <td width="1%"><table width="20" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td width="1%"><input name="textfield3" type="text" class="right-textfield03" size="1" /></td>
                      <td width="87%"><input name="Submit23222" type="submit" class="right-button06" value=" " />
                      </td>
                    </tr>
                </table></td>
              </tr>
          </table></td>
        </tr>
      </table></td>
  </tr>
</table>
</form>
<%@ include file="../common/footer.jsp"%>