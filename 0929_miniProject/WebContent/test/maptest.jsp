<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>
	<span style="font-weight: bolder; font: 14px;">시/도 선택</span>
	<br style="line-height: 1.5;">
	<form action="map">
	<select id="sido" style="margin-left: 5px;" title="시도 선택" name="city"><option
			value="">전체</option>
		<option value="강원">강원도</option>
		<option value="경기">경기도</option>
		<option value="경상남">경상남도</option>
		<option value="경상북">경상북도</option>
		<option value="광주">광주광역시</option>
		<option value="대구">대구광역시</option>
		<option value="대전">대전광역시</option>
		<option value="부산">부산광역시</option>
		<option value="서울">서울특별시</option>
		<option value="울산">울산광역시</option>
		<option value="인천">인천광역시</option>
		<option value="전라남">전라남도</option>
		<option value="전라북">전라북도</option>
		<option value="제주">제주도</option>
		<option value="충청남">충청남도</option>
		<option value="충청북">충청북도</option></select>
	<button id="sidoBtn" type="submit" >조회</button>
	</form>

</body>
</html>
