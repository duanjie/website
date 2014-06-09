<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>upload image</title>
<link href="../resources/css/common.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../admin/js/jquery.min.js"></script>
<script type="text/javascript" src="../resources/js/common.js"></script>

<script type="text/javascript">
$().ready(function() {
	var $browserButton = $("#browserButton");
	$browserButton.browser();
});
</script>
</head>
<body>
<form>
<!-- <div class="fileinput fileinput-new" data-provides="fileinput">
  <div class="fileinput-preview thumbnail" data-trigger="fileinput" style="width: 200px; height: 150px;"></div>
  <div>
    <span class="btn btn-default btn-file">
    <span class="fileinput-new">Select image</span>
    <span class="fileinput-exists">Change</span>
    <input type="file" name="..."></span>
    <a href="#" class="btn btn-default fileinput-exists" data-dismiss="fileinput">Remove</a>
  </div>
</div> -->
<br/><br/><br/><br/>
	<span class="fieldSet">
						<input type="text" name="image" class="text" maxlength="200"/>
						<input type="button" id="browserButton" class="button" value="选择文件" />
   </span>
</form>
</body>
</html>