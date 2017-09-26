var httpRequest = null;
//요청 객체 새성 함수
//function getXMLHttpRequest() { // 익스플로러 구버전을 위한 함수
//	if (window.ActiveXObject) {
//		try {
//			return new ActiveXObject("Msxml2.XMLHTTP");
//		} catch(e) {
//			try {
//				return new ActiveXObject("Microsoft.XMLHTTP");
//			} catch(e1) { return null; }
//		}
//	} else if (window.XMLHttpRequest) {// 익스플로러 이외의 브라우저를 위한 함수
//		return new XMLHttpRequest();
//	} else {
//		return null;
//	}
//}

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



