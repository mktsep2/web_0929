<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="info" method='Post'>
	<input type="hidden" name="command" value="login">
  <div class="container">
    <label><b>Username</b></label>
    <input type="text" placeholder="Enter Username" name="id" required>

    <label><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="password" required>

    <button type="submit">Login</button>
    <button onclick="location.href='join.jsp'">signup</button>
    <button type="button" class="cancelbtn">Cancel</button>
</form>
	
</body>
</html>