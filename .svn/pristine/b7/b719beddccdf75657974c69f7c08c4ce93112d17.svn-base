/**
 * 首页 js类
 */

$(function(){
		$("#mainDiv").edit();
	});
	jQuery.fn.extend({
		edit : function() {
			var title = document.getElementById("title");
			var companyAddress = document.getElementById("companyAddress");
			var emailAddress = document.getElementById("emailAddress");
			var phone = document.getElementById("phone");
		
		
			title.onblur=function(){
			if (title.value.length<=0) {
				$("#prompt1").html("<span style='color:red'>&nbsp;&nbsp;&nbsp;内容不能为空！</span>");
				$("#prompt1").className="prompt1";
				return;
			} else {
				$("#prompt1").html("");
			}
		};
		companyAddress.onblur=function(){
			if (companyAddress.value.length<=0) {
				$("#prompt2").html("<span style='color:red'>&nbsp;&nbsp;&nbsp;内容不能为空！</span>");
				$("#prompt2").className="prompt2";
				return;
			} else {
				$("#prompt2").html("");
			}
		};
		emailAddress.onblur=function(){
			if (emailAddress.value.length<=0) {
				$("#prompt3").html("<span style='color:red'>&nbsp;&nbsp;&nbsp;内容不能为空！</span>");
				$("#prompt3").className="prompt3";
				return;
			} else {
				$("#prompt3").html("");
			}
		};
		phone.onblur=function(){
			if (phone.value.length<=0) {
				$("#prompt4").html("<span style='color:red'>&nbsp;&nbsp;&nbsp;内容不能为空！</span>");
				$("#prompt4").className="prompt4";
				return;
			} else {
				$("#prompt4").html("");
			}
		};
		
		function isEmail(str){
		       var reg = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+/;
		       return reg.test(str);
		   }
			
			this.find("#submit").click(function() {
				if(title.value.length<=0||title.value==null||title.value.trim()==null) {
					document. getElementById("title").focus();
					$("#prompt1").html("<span style='color:red'>&nbsp;&nbsp;&nbsp;内容不能为空！</span>");
					$("#prompt1").className="prompt1";
					return false;
				} else if(companyAddress.value.length<=0||companyAddress.value==null||companyAddress.value.trim()==null){
					document. getElementById("companyAddress").focus();
					$("#prompt2").html("<span style='color:red'>&nbsp;&nbsp;&nbsp;内容不能为空！</span>");
					$("#prompt2").className="prompt2";
					return false;
				} else if(emailAddress.value.length<=0||emailAddress.value==null||emailAddress.value.trim()==null){
					document. getElementById("emailAddress").focus();
					$("#prompt3").html("<span style='color:red'>&nbsp;&nbsp;&nbsp;内容不能为空！</span>");
					$("#prompt3").className="prompt3";
					return false;
				}else if(!isEmail(emailAddress.value)){
					document. getElementById("emailAddress").focus();
					$("#prompt3").html("<span style='color:red'>&nbsp;&nbsp;&nbsp;邮箱格式不正确！请重新输入！</span>");
					$("#prompt3").className="prompt3";
					return false;
				} else if(phone.value.length<=0||phone.value==null||phone.value.trim()==null){
					document. getElementById("phone").focus();
					$("#prompt4").html("<span style='color:red'>&nbsp;&nbsp;&nbsp;手机号码不能为空！</span>");
					$("#prompt4").className="prompt4";
					return false;
				} else if(!(/^1[3|4|5|8][0-9]\d{4,8}$/.test(phone.value))){
					document. getElementById("phone").focus();
					$("#prompt4").html("<span style='color:red'>&nbsp;&nbsp;&nbsp;手机号码不正确！</span>");
					$("#prompt4").className="prompt4";
					return false;
				}
			});
		}
	});