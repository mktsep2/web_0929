<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h3>�����ϼ̽��ϴ�^^</h3>
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
	</table>
	<button onclick="location.href='update.jsp'">����</button>
	<span><button onclick="checkLogin()">Ȯ��</button></span>
<script type="text/javascript">

	function checkLogin(){
		alert("���ϵ帳�ϴ�.ȸ�������� �Ϸ�Ǿ����ϴ�.");
		location.href='login.jsp';
	}

</script>


</body>
</html>