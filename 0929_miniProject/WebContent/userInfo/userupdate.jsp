<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>	
		id:<input id='id' type="hidden" value="${sessionScope.vo.userid}">${sessionScope.vo.userid}<br> 
		pw:<input id='password'	type="password" value="${sessionScope.vo.passwd}"><br> 
		name:<input	type="text" id="mname" value="${sessionScope.vo.mname}"><br> 
		tel:<input type="tel"	placeholder="00*-000*-0000"	value="${sessionScope.vo.tel}"	pattern="[0-9]{2,3}-[0-9]{3,4}-[0-9]{3,4}" id="tel"><br>
		email:<input type="email" id="mail"	value="1@1.1" value="${sessionScope.vo.email}">
		<button onclick="userview(this.value)" value='update'>수정</button>
</body>


</html>