<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="info" method="post">
		<input type="hidden"  name='command' value="join">
		id:<input id='id' type="text" autofocus name="id">
		pw:<input type="password" name="password"><br>
		name:<input type="text" name="name"><br>
		tel:<input type="tel" placeholder="00*-000*-0000" pattern="[0-9]{2,3}-[0-9]{3,4}-[0-9]{3,4}" name="tel"><br>
		email:<input type="email" name="mail" value="1@1.1">
		<input type="submit" value="회원등록">  	
	</form>
</body>
</html>