<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>异步加载时间</title>

  </head>
  
  <body>
	当前时间：<span id="timeSpan"></span><br/>
	<input type="button" id="btn" value="提交"><br/>
	
	<!-- 创建AJAX对象 -->
	<script type="text/javascript">
		function createAJAX(){
			var ajax = null;
			try{
				//IE5-11
				ajax = new ActiveXObject("microsoft.xmlhttp");
			}catch(e1){
				//非IE
				ajax = new XMLHttpRequest();
			}
			return ajax;
		}
	</script>
	
	<!-- 异步请求时间 -->
	<script type="text/javascript">
		document.getElementById("btn").onclick = function(){
			//获取ajax对象（每个浏览器内置的，无需第三方jar包）
			var ajax = createAJAX();
			
			//ajax异步对象准备发送请求
			//在IE浏览器中，IE自作聪明，再次点击提交按钮，发现url地址相同，则取出缓存，所以时间不发生变化
			//可以在url链接后加上时间，就会是不同的链接
			ajax.open("GET", "${pageContext.request.contextPath}/AjaxTimeServlet?time=" + new Date().getTime());
			
			//AJAX异步对象真正发送 请求体 的数据到服务器，如果请求体无数据的话，用null表示
			//用get方式提交的请求，参数在请求行中
			ajax.send(null);
			
			//-------------------等待
			
			//AJAX异步对象不断监听服务端状态的变化，只有状态码变化了，方可触发函数
			//0-1-2-3-4,这些是可以触发函数的
			//4-4-4-4-4，这些是不可以触发函数的
			//以下这个函数是服务器来触发的，不是程序员触发的，这和onclick是不一样的
			ajax.onreadystatechange = function(){
				//如果AJAX状态码为4
				if(ajax.readyState == 4){
					//如果服务器响应码是200
					if(ajax.status == 200){
						//从AJAX异步对象中获取服务器响应的结果
						var nowTime = ajax.responseText;
						//按照DOM规则，将结果动态添加到web页面指向的标签中
						document.getElementById("timeSpan").innerHTML = nowTime;
					}
				}
			}
		}
	</script>
	
	
	
	静态文字静态文字静态文字静态文字静态文字静态文字静态文字静态文字静态文字静态文字<br/>
	静态文字静态文字静态文字静态文字静态文字静态文字静态文字静态文字静态文字静态文字<br/>
	静态文字静态文字静态文字静态文字静态文字静态文字静态文字静态文字静态文字静态文字<br/>
	静态文字静态文字静态文字静态文字静态文字静态文字静态文字静态文字静态文字静态文字<br/>
	静态文字静态文字静态文字静态文字静态文字静态文字静态文字静态文字静态文字静态文字<br/>
	静态文字静态文字静态文字静态文字静态文字静态文字静态文字静态文字静态文字静态文字<br/>
	静态文字静态文字静态文字静态文字静态文字静态文字静态文字静态文字静态文字静态文字<br/>
	静态文字静态文字静态文字静态文字静态文字静态文字静态文字静态文字静态文字静态文字<br/>
	静态文字静态文字静态文字静态文字静态文字静态文字静态文字静态文字静态文字静态文字<br/>
  </body>
</html>
