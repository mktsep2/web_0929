<%@page import="dto.CSVo"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, util.DBUtil"%>

<%!Connection con;
	PreparedStatement pstmt;
	ResultSet rs;
	String sql = "SELECT CSID,CSNM,ADDR,LAT,LONGI FROM CSID WHERE ADDR like ?";%>
<table border="1" style="border-collapse: collapse" bordercolor="#ccc"
	width="100%" bgcolor="white">
	<%
		String str = request.getParameter("str");
		try {
			con = DBUtil.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, str + "%");
			rs = pstmt.executeQuery();
			String val="";
			
			while (rs.next()) {
				val=rs.getString("CSID")+"/"+rs.getString("LAT")+"/"+rs.getString("LONGI");
	%>
	<!--radio버튼-->
	<tr align="center">
		<td><input type="radio" name="r" value=<%=val%>
			onChange="cpidSearch(this.value)"><%=rs.getString("ADDR")%><br></td>
	</tr>
	<%
		} //end while
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBUtil.close(con, pstmt, rs);
		}
	%>
</table>