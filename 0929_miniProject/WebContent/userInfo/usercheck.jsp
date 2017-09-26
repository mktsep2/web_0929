<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
</head>
<body>
	<div id='a'>
	<table>
		<tr>
			<td>id</td>
			<td>${sessionScope.vo.userid}</td>
		</tr>
		<tr>
			<td>password</td>
			<td>${sessionScope.vo.passwd}</td>
		</tr>
		<tr>
			<td>name</td>
			<td>${sessionScope.vo.mname}</td>
		</tr>
		<tr>
			<td>tel</td>
			<td>${sessionScope.vo.tel}</td>
		</tr>
		<tr>
			<td>e_mail</td>
			<td>${sessionScope.vo.email}</td>
		</tr>
		<input type="hidden" id="id" name="id" value="${sessionScope.vo.userid}">
		<input type="hidden" id="password" value="${sessionScope.vo.passwd}">
		<input type="hidden" id="mname" value="${sessionScope.vo.mname}">
		<input type="hidden" id="tel" value="${sessionScope.vo.tel}">
		<input type="hidden" id="mail" value="${sessionScope.vo.email}">
	</table>
	<span><button type="button" class="btn btn-secondary" data-dismiss="modal" onclick="location.href='userlog.jsp'" >수정완료</button></span>
	</div>



</body>
</html>