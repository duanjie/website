/**
 * 关于我们js类 
 * 
 * 
 */

$(function(){
		$("#mainDiv").edit();
	});



	jQuery.fn.extend({
		edit : function() {
			/*var image = document.getElementById("image");*/
			var contents = document.getElementById("content");
		
		
			content.onblur=function(){
			if (content.value.length<3) {
				$("#prompt").html("<span style='color:red'>&nbsp;&nbsp;&nbsp;内容不能为空！</span>");
				$("#prompt").className="prompt";
				return;
			} else {
				$("#prompt").html("");
			}
		};
		function alert2(){
			/*$.messager.show({
				title:'消息',
				msg:'修改失败 5秒后消失.',
				timeout:5000,
				showType:'show'
			});*/
			$.messager.alert('消息','修改成功 5秒后消失!','info');

		}
			
			this.find("#submit").click(function() {
				if(contents.value.length<=0||contents.value==null||contents.value.trim()==null) {
					$("#prompt").html("<span style='color:red'>&nbsp;&nbsp;&nbsp;内容不能为空！</span>");
					$("#prompt").className="prompt";
					alert2();
					return false;
				} else {
					$("#prompt").html("");
					return true;
				}
			});
			
			
			
		}
	});