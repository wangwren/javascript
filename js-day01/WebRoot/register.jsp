<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>POST方式异步判读用户名是否存在</title>
	<script type="text/javascript" src="js/ajax.js"></script>
	<script type="text/javascript">
		function checkName(){
			var username = document.getElementById("username").value;
			var ajax = createAJAX();
			var method = "POST";
			var url = "${pageContext.request.contextPath}/UserServlet?time=" + new Date().getTime();
			ajax.open(method, url);
			//post方式请求，需要设置请求头，以完成参数转成UTF-8转码
			ajax.setRequestHeader("content-type", "application/x-www-form-urlencoded");
			//以post方式请求，参数在请求体中
			ajax.send("username=" + username);
			
			ajax.onreadystatechange = function(){
				if(ajax.readyState == 4){
					if(ajax.status == 200){
						var msg = ajax.responseText;
						var spanID = document.getElementById("spanID");
						if(msg == "no"){
							spanID.innerHTML = "<img src='image/MsgError.gif' width='12px' height='12px' >";
						}else{
							spanID.innerHTML = "<img src='image/MsgSent.gif' width='12px' height='12px' >";
						}
					}
				}
			}
		}
	</script>
  </head>
  
  <body>
	用户名：<input type="text" id="username" name="username" onblur="checkName()">
	<span id="spanID"></span>
  </body>
</html>
