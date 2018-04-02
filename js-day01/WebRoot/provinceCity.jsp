<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>基于XML的省市二级联动的异步</title>
	<script type="text/javascript" src="js/ajax.js"></script>
	<script type="text/javascript">
		function choose(){
			var provinceID = document.getElementById("provinceID");
			var cityID = document.getElementById("cityID");
			//清除城市下拉框中的值，避免append累加
			cityID.options.length = 1;
			var index = provinceID.selectedIndex;//选中索引
			var province = provinceID[index].value;//获取选中的值
			if(province != "请选择省份"){
				var ajax = createAJAX();
				ajax.open("POST", "${pageContext.request.contextPath}/ProvinceCityServlet?time=" + new Date().getTime());
				ajax.setRequestHeader("content-type", "application/x-www-form-urlencoded");
				ajax.send("province=" + province);
				ajax.onreadystatechange = function(){
					if(ajax.readyState == 4){
						if(ajax.status == 200){
							//获取的是xml文档，不能使用ajax.responseText，这是获取html
							var xmlDocumet = ajax.responseXML;
							//现在操作的是xml
							var cityElementArry = xmlDocumet.getElementsByTagName("city");
							var size = cityElementArry.length;
							for(var i = 0;i < size;i++){
								//获取xml文档中city下的值
								var city = cityElementArry[i].firstChild.nodeValue;
								var optionElement = document.createElement("option");
								optionElement.innerHTML = city;	//innerHTML来赋值
								cityID.appendChild(optionElement);
							}
						}
					}
				}
			}			
		}
	</script>
  </head>
  
  <body>
  	<select id="provinceID" style="width: 111px" onchange="choose()">
  		<option>请选择省份</option>
  		<option>辽宁</option>
  		<option>黑龙江</option>
  	</select>
  	
  	<select id="cityID" style="width: 111px">
  		<option>请选择城市</option>
  	</select>
  </body>
</html>
