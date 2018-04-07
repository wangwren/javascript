<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>使用Struts2+json实现省市区三级联动</title>
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/ajax.js"></script>
	<script type="text/javascript">
		//选择城市
		function chooseCity(){
			var provinceID = document.getElementById("provinceID");
			var cityID = document.getElementById("cityID");
			//清除城市
			cityID.options.length = 1;
			var areaID = document.getElementById("areaID");
			//清除区域
			areaID.options.length = 1;
			var province = provinceID.value;
			if("请选择省份" != province){
				var ajax = createAJAX();
				ajax.open("POST", "${pageContext.request.contextPath}/findCityByProvince.action?time=" + new Date().getTime());
				ajax.setRequestHeader("content-type", "application/x-www-form-urlencoded");
				ajax.send("bean.province=" + province);
				ajax.onreadystatechange = function(){
					if(ajax.readyState == 4){
						if(ajax.status == 200){
							//获取到Java格式的json文本，需要转换成js格式的json文本
							var jsonJAVA = ajax.responseText;
							//转换成js格式的json文本，写法固定
							var jsonJS = eval("("+jsonJAVA+")");
							var cityArr = jsonJS.cityList;//得到cityList中数据的数组
							var size = cityArr.length;
							for(var i = 0;i < size;i++){
								var option = document.createElement("option");
								var city = cityArr[i];
								option.innerHTML = city;
								cityID.appendChild(option);
							}
						}
					}
				}
			}
		}
	</script>
	
	<script type="text/javascript">
		//选择区域
		function chooseArea(){
			var cityID = document.getElementById("cityID");
			var areaID = document.getElementById("areaID");
			areaID.options.length = 1;
			var city = cityID.value;
			if("请选择城市" != city){
				var ajax = createAJAX();
				ajax.open("POST", "${pageContext.request.contextPath}/findAreaByCity.action?time=" + new Date().getTime());
				ajax.setRequestHeader("content-type", "application/x-www-form-urlencoded");
				ajax.send("bean.city=" + city);
				ajax.onreadystatechange = function(){
					if(ajax.readyState == 4){
						if(ajax.status == 200){
							//获取到Java格式的json文本，需要转换成js格式的json文本
							var jsonJAVA = ajax.responseText;
							//转换成js格式的json文本，写法固定
							var jsonJS = eval("("+jsonJAVA+")");
							var areaArr = jsonJS.areaList;//得到cityList中数据的数组
							var size = areaArr.length;
							for(var i = 0;i < size;i++){
								var option = document.createElement("option");
								var area = areaArr[i];
								option.innerHTML = area;
								areaID.appendChild(option);
							}
						}
					}
				}
			}
		}
	</script>
  </head>
  
  <body>
	<select id="provinceID" onchange="chooseCity()">
		<option>请选择省份</option>
		<option>辽宁</option>
		<option>吉林</option>
		<option>黑龙江</option>
	</select>
	
	<select id="cityID" onchange="chooseArea()">
		<option>请选择城市</option>
	</select>
	
	<select id="areaID">
		<option>请选择区域</option>
	</select>
  </body>
</html>
