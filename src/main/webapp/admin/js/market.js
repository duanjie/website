/**
 * 网站营销js类
 * 
 */

$(function(){
		$("#mainDiv").edit();
	});
	jQuery.fn.extend({
		edit : function() {
			var itemFirstTitle = document.getElementById("itemFirstTitle");
			var itemFirstContent = document.getElementById("itemFirstContent");
			var itemSecondTitle = document.getElementById("itemSecondTitle");
			var itemSecondContent = document.getElementById("itemSecondContent");
			
		
			itemFirstTitle.onblur=function(){
			if (itemFirstTitle.value.length<=0) {
				$("#prompt1").html("<span style='color:red'>&nbsp;&nbsp;&nbsp;内容不能为空！</span>");
				$("#prompt1").className="prompt1";
				return;
			} else {
				$("#prompt1").html("");
			}
		};
		itemFirstContent.onblur=function(){
			if (itemFirstContent.value.length<=0) {
				$("#prompt2").html("<span style='color:red'>&nbsp;&nbsp;&nbsp;内容不能为空！</span>");
				$("#prompt2").className="prompt2";
				return;
			} else {
				$("#prompt2").html("");
			}
		};
		itemSecondTitle.onblur=function(){
			if (itemSecondTitle.value.length<=0) {
				$("#prompt3").html("<span style='color:red'>&nbsp;&nbsp;&nbsp;内容不能为空！</span>");
				$("#prompt3").className="prompt3";
				return;
			} else {
				$("#prompt3").html("");
			}
		};
		itemSecondContent.onblur=function(){
			if (itemSecondContent.value.length<=0) {
				$("#prompt4").html("<span style='color:red'>&nbsp;&nbsp;&nbsp;内容不能为空！</span>");
				$("#prompt4").className="prompt4";
				return;
			} else {
				$("#prompt4").html("");
			}
		};
			
			this.find("#submit").click(function() {
				if(itemFirstTitle.value.length<=0||itemFirstTitle.value==null||itemFirstTitle.value.trim()==null) {
					$("#prompt1").html("<span style='color:red'>&nbsp;&nbsp;&nbsp;内容不能为空！</span>");
					$("#prompt1").className="prompt1";
					return false;
				} else if(itemFirstContent.value.length<=0||itemFirstContent.value==null||itemFirstContent.value.trim()==null){
					$("#prompt2").html("<span style='color:red'>&nbsp;&nbsp;&nbsp;内容不能为空！</span>");
					$("#prompt2").className="prompt2";
					return false;
				} else if(itemSecondTitle.value.length<=0||itemSecondTitle.value==null||itemSecondTitle.value.trim()==null){
					$("#prompt3").html("<span style='color:red'>&nbsp;&nbsp;&nbsp;内容不能为空！</span>");
					$("#prompt3").className="prompt3";
					return false;
				} else if(itemSecondContent.value.length<=0||itemSecondContent.value==null||itemSecondContent.value.trim()==null){
					$("#prompt4").html("<span style='color:red'>&nbsp;&nbsp;&nbsp;内容不能为空！</span>");
					$("#prompt4").className="prompt4";
					return false;
				}
			});
		}
	});