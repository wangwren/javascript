//创建AJAX对象
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