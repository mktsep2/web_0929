<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
#map {
	height: 400px;
	width: 100%;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="script/httpRequest.js"></script>
</head>
<body>
	<table>
		<c:forEach items="${requestScope.list}" var='a'>
			<tr>
				<td><button onclick="change('${a.lat}','${a.longi}')">${a.csnm}</button></td>
			</tr>
		</c:forEach>
	</table>
	<div id='map'></div>
	
	<script type="text/javascript">
		var myCenter;
		function change(a, b) {
			this.myCenter = new google.maps.LatLng(a, b);
			initMap();
		}
	
		function initMap() {
			var uluru = this.myCenter;
			var map = new google.maps.Map(document.getElementById('map'), {
				zoom : 16,
				center : uluru
			});
			var marker = new google.maps.Marker({
				position : uluru,
				map : map
			});
		}
	</script>
	<script async defer
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB2fhEriY8ubcfcgm6SMqJhw8FgSzGlYW4">
    </script>
</body>
</html>