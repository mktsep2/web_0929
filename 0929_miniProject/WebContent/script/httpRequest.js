var httpRequest = null;

function getXMLHttpRequest() { //익스플로어 7 + 모든 브라우저 가능 함수
	return new XMLHttpRequest();
}
function sendRequest(url, params, callback, method) {
	httpRequest = getXMLHttpRequest();
	var httpMethod = method;	
	if (httpMethod != 'GET' && httpMethod != 'POST') {
		httpMethod = 'GET';
	}		
	var httpParams = (params == null || params == '') ? null : params;
	var httpUrl = url;
	if (httpMethod == 'GET' && httpParams != null) {
		httpUrl = httpUrl + "?" + httpParams;
	}
	console.log(httpMethod);
	console.log(httpUrl);
	httpRequest.open(httpMethod, httpUrl, true);
	httpRequest.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
	
	httpRequest.onreadystatechange = callback;
	
	httpRequest.send(httpMethod == 'POST' ? httpParams : null);
}

