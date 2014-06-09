/**
 * page文件夹下的test文件夹下的页面js
 */
/*info_test.jsp  list_test.jsp页面*/
function sousuo(){
	window.open("gaojisousuo.htm","","depended=0,alwaysRaised=1,width=800,height=510,location=0,menubar=0,resizable=0,scrollbars=0,status=0,toolbar=0");
}
function selectAll(){
	var obj = document.fom.elements;
	for (var i=0;i<obj.length;i++){
		if (obj[i].name == "delid"){
			obj[i].checked = true;
		}
	}
}

function unselectAll(){
	var obj = document.fom.elements;
	for (var i=0;i<obj.length;i++){
		if (obj[i].name == "delid"){
			if (obj[i].checked==true) obj[i].checked = false;
			else obj[i].checked = true;
		}
	}
}

function link(){
    document.getElementById("fom").action="add_test.jsp";
   document.getElementById("fom").submit();
}


/*add_test.jsp*/
function tishi() {
	var a = confirm('数据库中保存有该人员基本信息，您可以修改或保留该信息。');
	if (a != true)
		return false;
	window.open(
		"冲突页.htm",
		"",
		"depended=0,alwaysRaised=1,width=800,height=400,location=0,menubar=0,resizable=0,scrollbars=0,status=0,toolbar=0");
}
function check() {
	document.getElementById("aa").style.display = "";
}

function linkAdd() {
	alert('保存成功！');
	document.getElementById("fom").action = "list_test.jsp";
	document.getElementById("fom").submit();
}

function linkEdit() {
	alert('保存成功！');
	document.getElementById("fom").action = "list_test.jsp";
	document.getElementById("fom").submit();
}









