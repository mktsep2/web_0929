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
		<input type="hidden"  name='command' value="update">
		id:<input type="text" autofocus name="id" value="${sessionScope.vo.userid}"><br>
		pw:<input type="password" name="password" value="${sessionScope.vo.passwd}"><br>
		name:<input type="text" name="name" value="${sessionScope.vo.mname}"><br>
		tel:<input type="tel" placeholder="00*-000*-0000" pattern="[0-9]{2,3}-[0-9]{3,4}-[0-9]{3,4}" name="tel" value="${sessionScope.vo.tel}"><br>
		email:<input type="email" name="mail" value="${sessionScope.vo.email}">
		<input type="submit" value="수정완료">  	
		<input type="reset"	value="취소">
	</form>
</body>
</html>