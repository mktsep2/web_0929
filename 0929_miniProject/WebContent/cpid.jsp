<%@page import="dto.CPVo"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%ArrayList<CPVo> cpVo = (ArrayList<CPVo>) request.getAttribute("cpVo");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<table border="1" style="border-collapse: collapse" bordercolor="#ccc"
	width="100%" bgcolor = "white">
		<tr>
			<td>충전기 명칭</td>
			<td>충전 방식</td>
			<td>사용자 ID</td>
		</tr>
		<% for(int i = 0; i < cpVo.size(); i++) { %>
			<tr>
				<td><%=cpVo.get(i).getCpnm()%></td>
				<td><%=cpVo.get(i).getCptp()%></td>
				<td><%=cpVo.get(i).getUserId()%></td>
			</tr>
		<% } %>
	</table>
</body>
</html>