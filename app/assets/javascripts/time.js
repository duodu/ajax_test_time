var xmlRequest;
function CreateRequest(){
	if (window.ActiveXObject)
	{
		return new ActiveXObject("Microsoft.XMLHTTP");
	}
	else if (window.XMLHttpRequest)
	{
		return new XMLHttpRequest();
	}
}

function ResponseHandler(){
	if (xmlRequest.readyState == 4 && xmlRequest.status == 200)
	{
		var reqContent = xmlRequest.responseText;
		document.getElementById("now").innerHTML = reqContent;
	}
}

function AjaxAccess(){
	xmlRequest = CreateRequest();
	xmlRequest.onreadystatechange = ResponseHandler;
	xmlRequest.open("GET","http://localhost:3000/ajaxes/now");
	xmlRequest.send(null);
}

window.onload = function(){
	AjaxAccess();
}
