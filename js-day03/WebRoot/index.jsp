<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  	<title>交税</title>
    <script type="text/javascript" src="${pageContext.request.contextPath }/jquery/jquery.js"></script>
    
  </head>
  
  <body>
  	<form action="" method="post">
  		税前工资:<input id="salText" type="text" name="sal">&nbsp;&nbsp;
  		<input id="btn" type="button" value="计算">
  		<br/>
  		交税:<span id="taxeSpan"></span>
  		
  	</form>
  	
  	
  	<script type="text/javascript">
    	$("#btn").click(function(){
    		var salText = $("#salText").val();
    		salText = $.trim(salText);
    		if(salText.length == 0){
    			alert("请输入您的工资！！！");
    		}else{
	    		var url = "${pageContext.request.contextPath }/PayTaxesServlet?time=" + new Date().getTime();
	    		var data = {
	    			'salText' : salText
	    		};
	    		$.post(url,data,function(backData){
	    			$("#taxeSpan").text(backData);
	    		});
    		}
    	});
    </script>
  </body>
</html>
