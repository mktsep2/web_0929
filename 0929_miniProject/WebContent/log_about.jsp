<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Electric Motor Vehicle</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Josefin+Slab:100,300,400,600,700,100italic,300italic,400italic,600italic,700italic" rel="stylesheet" type="text/css">

    <!-- Custom styles for this template -->
    <link href="css/business-casual.css" rel="stylesheet">

	<link rel="stylesheet" type="text/css" href="portal/_css/reset.css" />
<link rel="stylesheet" type="text/css" href="portal/_css/common.css" />
<link rel="stylesheet" type="text/css" href="portal/_css/sub.css" />
<style>
table, th, td {
    border: 1px solid #bbb;
    width : 1092px;
	text-align : center;
}
</style>
  </head>

  <body algin = "center">
<%@ include file = "layout/logtap.jsp" %>

    <div class="container">

      <div class="bg-faded p-4 my-4">
        <hr class="divider">
        <h2 class="text-center text-lg text-uppercase my-0">About
          <strong>전기차 충전기 종류</strong>
        </h2>
        <hr class="divider">
        <div class="row">
          <div id="cont_body">
	<div class="tab_area" src = "https://ev.or.kr/portal/chargerkind?pMENUMST_ID=21629">
		<ul>
			<h5><li class="on"><a href="#">전기차 충전기 종류</a></li></h5>
			<h5><li><a href="log_about2.jsp">전기차 충전요금</a></li></h5>
		</ul>
	</div><br>
	
	<h3>충전속도에 따른 분류</h3>
	<table border = "0">
		<tr>
			<td>
				<dl class="dl02_blit">
					<dt>급속 충전기</dt>
					<dd>- 완전방전상태에서 80%충전까지 30분이 소요됨</dd>
					<dd>- 주로 고속도로 휴게소, 공공기관 등 외부장소에 설치 됨</dd>
					<dd>- 충전기는 고용량의 전력을 공급하여야 하므로 50kW급이 주로 설치됨</dd>
					<dd>- 사용요금은 100km 당 2,700원 정도임</dd>
				</dl>
			</td>
			<td>
				<dl class="dl02_blit">
					<dt>완속 충전기(개인용완속충전기 기준)</dt>
					<dd>- 완전방전에서 완전충전까지 4~5시간이 소요됨</dd>
					<dd>- 주로 주택이나 아파트에 설치됨</dd>
					<dd>- 배터리 용량은 약 6~7kW 전력용량을 가진 충전기가 주로 설치됨</dd>
					<dd>- 전기요금은 100km당, 1,100원 정도임</dd>
				</dl>
			</td>
		</tr>
	</table>
	
    		<!-- <caption>급/완속충전기 공급용량 및 충전시간 비교</caption> -->
    		<colgroup>
    			<col style="width: 30%;">
    			<col style="width: 35%;">
    			<col style="width: 35%;">
    		</colgroup>
    		<thead>
    		<table bgcolor = "">
    			<tr>
    				<th>구분</th>
    				<th>급속 충전기</th>
    				<th>완속 충전기</th>
    			</tr>
    		</thead>
    		<tbody>
    			<tr>
    				<td>공급용량</td>
    				<td>50kW</td>
    				<td>3~7kW</td>
    			</tr>
    			<tr>
    				<td>충전시간</td>
    				<td>15~30분</td>
    				<td>4~5시간</td>
    			</tr>
    		</tbody>
    	</table><br><br><br>
    	<h3 class="mt40">설치유형에 따른 분류</h3>
    	<table class="table_02_3 mt10" summary="설치유형에 따른 분류 표입니다" bgcolor = "white">
    		<!-- <caption>설치유형에 따른 분류 표</caption> -->
    		<colgroup>
    			<col style="width: 20%">
    			<col style="width: 30%">
    			<col style="width: 20%">
    			<col style="width: 30%">
    		</colgroup>
    		<thead>
    			<tr>
    				<th>구분</th>
    				<th>벽부형 충전기</th>
    				<th>스탠드형 충전기</th>
    				<th>이동형 충전기</th>
    			</tr>
    		</thead>
    		<tbody>
    			<tr>
    				<td>용량</td>
    				<td>3~7kW</td>
    				<td>3~7kW</td>
    				<td>3kW(Max)</td>
    			</tr>
    			<tr>
    				<td>충전시간</td>
    				<td>4~6시간</td>
    				<td>4~6시간</td>
    				<td>6~9시간</td>
    			</tr>
    			<tr>
    				<td>특징</td>
    				<td colspan="2">
    					<dl style="text-align:left;">
    						<dd>- 분전함, 기초패드 설치</dd>
    						<dd>- U형볼라드, 차량스토퍼, 차선도색(설치 또는 미설치)</dd>
    						<dd>- 충전기 위치가 외부에 설치되어 눈, 비에 노출될 경우만 케노피 설치</dd>
    					</dl>
    				</td>
    				<td>
    					<dl style="text-align:left;">
    						<dd>- 220V 콘센트에 간단한 식별장치(RFID태그)<br>&nbsp;&nbsp;부착하여 충전</dd>
    						<dd>- 태그가 부착된 다른 건물에서도 충전 가능</dd>
    					</dl>
    				</td>
    			</tr>
    			<tr>
    				<td>사진</td>
    				<td><img alt="벽부형 충전기 이미지" src="portal/_images/sub/chargerkd_01.jpg" width="100px"/></td>
    				<td><img alt="스탠드형 충전기 이미지" src="portal/_images/sub/chargerkd_02.jpg" width="150px"/></td>
    				<td><img alt="이동형 충전기 이미지1" src="portal/_images/sub/chargerkd_03.jpg" width="120px"/>
    					<img alt="이동형 충전기 이미지2" src="portal/_images/sub/chargerkd_04.jpg" width="120px"/>
    				</td>
    			</tr>
    		</tbody>
    	</table><br><br>
    	<h3 class="mt40">전기차 충전기커넥터 및 차량측 소켓</h3>
    	<table class="table_02_3 mt10" summary="전기차 충전커넥터, 차량용소켓 표 입니다."  bgcolor = "white">
    		<!-- <caption>전기차 충전기커넥터, 차량용소켓 표</caption> -->
    		<colgroup>
    			<col style="width:12%">
    			<col style="width:22%">
    			<col style="width:22%">
    			<col style="width:22%">
    			<col style="width:22%">
    		</colgroup>
    		<tbody>
    			<tr>
    				<th >구분</th>
    				<th >AC단상 5핀(완속)</th>
    				<th >AC3상 7핀(급속/완속)</th>
    				<th >DC차데모 10핀(급속)</th>
    				<th >DC콤보 7핀(급속)</th>
    			</tr>
    			<tr>
    				<td>충전기커넥터</td>
    				<td>
    				  <img alt="AC(5pin) 충전기커넥터" src="portal/_images/sub/ac5con.jpg" width="100%">
    				</td>
    				<td>
    				  <img alt="AC(7pin) 충전기커넥터" src="portal/_images/sub/ac7con.jpg" width="100%">
    				</td>
    				<td>
    				  <img alt="DC(10pin) 충전기커넥터" src="portal/_images/sub/dc10con.jpg" width="100%">
    				</td>
    				<td>
    				  <img alt="DC(7pin) 충전기커넥터" src="portal/_images/sub/dc7con.jpg" width="100%">
    				</td>
    			</tr>
    			<tr>
    			    <td>차량측 소켓</td>
    				<td>
    				  <img alt="AC(5pin) 차량소켓" src="portal/_images/sub/ac5car.jpg" width="100%">
    				</td>
    				<td>
    				  <img alt="AC(7pin) 차량소켓" src="portal/_images/sub/ac7car.jpg" width="100%">
    				</td>
    				<td>
    				  <img alt="DC(10pin) 차량소켓" src="portal/_images/sub/dc10car.jpg" width="100%">
    				</td>
    				<td>
    				  <img alt="DC(7pin) 차량소켓" src="portal/_images/sub/dc7car.jpg" width="100%">
    				</td>
    			</tr>
    			<tr>
    				<td>가능차종</td>
    				<td>블루온, 레이, 쏘울, 아이오닉,<br /> 스파크, i3, Leaf, 볼트</td>
    				<td>SM3</td>
    				<td>블루온, 레이, 쏘울, <br /> 아이오닉,Leaf</td>
    				<td>스파크, 볼트, 아이오닉, i3</td>
    			</tr>

    		</tbody>
    	</table><br><br>
    	<h3 class="mt40">전기차 차종별 충전방식</h3>
    	<table class="table_02_3 mt10" summary="전기차 차종별 충전방식 표 입니다."  bgcolor = "white">
    		<!-- <caption>전기차 차종별 충전방식 표</caption> -->
    		<colgroup>
    			<col style="width:25%">
    			<col style="width:25%">
    			<col style="width:25%">
    			<col style="width:25%">
    		</colgroup>
    		<tbody>
    			<tr>
    				<th rowspan="2">구분</th>
    				<th rowspan="2">차종</th>
    				<th colspan="2">충전방식</th>
    			</tr>
    			<tr>
    				<td style="height:25px; background:#fafafa; font-size:16px;">급속</td>
    				<td style="height:25px; background:#fafafa; font-size:16px;">완속</td>
    			</tr>
    			<tr>
    				<td rowspan='2'>현대기아차</td>
    				<td>블루온/레이/쏘울/아이오닉</td>
    				<td>DC차데모(10pin)</td>
    				<td rowspan='2'>AC 단상(5pin)</td>
    			</tr>
    			<tr>
    				<td>아이오닉</td>
    				<td>DC콤보 7핀(급속)</td>
    			</tr>
    			<tr>
    				<td>르노삼성</td>
    				<td>SM3 ZE</td>
    				<td>AC3상(7pin)</td>
    				<td>AC 단상(7pin)</td>
    			</tr>
    			<tr>
    				<td>한국GM</td>
    				<td>스파크/볼트</td>
    				<td>DC콤보(7pin)</td>
    				<td>AC 단상(5pin)</td>
    			</tr>
    			<tr>
    				<td>BMW</td>
    				<td>i3</td>
    				<td>DC콤보(7pin)</td>
    				<td>AC 단상(5pin)</td>
    			</tr>
    			<tr>
    				<td>닛산</td>
    				<td>Leaf</td>
    				<td>DC차데모(10pin)</td>
    				<td>AC 단상(5pin)</td>
    			</tr>
    		</tbody>
    	</table>
  	
    	
    	<!-- 
    	<dl>
    		<dt><img alt="AC(5pin)/AC(7pin)/DC차데모(10pin)/DC콤보(7pin) 전기차 충전기 이미지" src="/portal/_images/sub/chargersys.jpg" width="100%"></dt>
    	</dl>
    	-->

	</div>
</div>
	            
            
        </div>
    </div>  
        </div>


    <!-- /.container -->

    <footer class="bg-faded text-center py-5">
      <div class="container">
        <p class="m-0">Copyright &copy; Your Website 2017</p>
      </div>
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/popper/popper.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

  </body>
</html>
