<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Electric Motor Vehicle</title>

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom fonts for this template -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Josefin+Slab:100,300,400,600,700,100italic,300italic,400italic,600italic,700italic"
	rel="stylesheet" type="text/css">

<!-- Custom styles for this template -->
<link href="css/business-casual.css" rel="stylesheet">

<link rel="stylesheet" type="text/css" href="portal/_css/reset.css" />
<link rel="stylesheet" type="text/css" href="portal/_css/common.css" />
<link rel="stylesheet" type="text/css" href="portal/_css/sub.css" />
<style>
table, th, td {
	border: 1px solid #bbb;
	width: 1092px;
	text-align: center;
}
</style>
</head>

<body algin="center">
	<%@ include file="layout/tap.jsp"%>

	<div class="container">

		<div class="bg-faded p-4 my-4">
			<hr class="divider">
			<h2 class="text-center text-lg text-uppercase my-0">
				About <strong>전기차 충전요금</strong>
			</h2>
			<hr class="divider">
			<div class="row">
				<div id="cont_body">
					<div class="tab_area"
						src="https://ev.or.kr/portal/chargerkind?pMENUMST_ID=21629">
						<ul>
							<h5>
								<li><a href="about.jsp">전기차 충전기 종류</a></li>
							</h5>
							<h5>
								<li class="on"><a href="#">전기차 충전요금</a></li>
							</h5>
						</ul>
					</div>
					<br>

					<div class="intro_cont">
						<h3>내연기관차 유류비와 전기차 충전요금 비교</h3>
						<table class="table_02_3 mt10" summary="내연기관차 유류비와 전기차 충전요금 비교 표"
							bgcolor="white">
							<!-- <caption>내연기관차 유류비와 전기차 충전요금 비교</caption> -->
							<colgroup>
								<col style="width: *;" />
								<col style="width: 15%;" />
								<col style="width: 15%;" />
								<col style="width: 14%;" />
								<col style="width: 14%;" />
								<col style="width: 14%;" />
								<col style="width: 14%;" />
							</colgroup>
							<tbody>
								<tr>
									<th rowspan="3">구분</th>
									<th rowspan="3">휘발유차<br>(아반떼1.6)
									</th>
									<th rowspan="3">경유차<br>(아반떼1.6)
									</th>
									<th colspan="4">전기차(아이오닉)</th>
								</tr>
								<tr>
									<td rowspan="2" style="background: #fafafa; font-size: 16px;">완
										속<br>(개인용)
									</td>
									<td colspan="3"
										style="height: 25px; background: #fafafa; font-size: 16px;">급
										속</td>
								</tr>
								<tr>
									<td style="background: #fafafa; font-size: 16px;">인하 전<br>('16년)
									</td>
									<td style="background: #fafafa; font-size: 16px;">인하 후<br>('17년)
									</td>
									<td style="background: #fafafa; font-size: 16px;">그린카드<br>추가할인
									</td>
								</tr>
								<tr>
									<td style="text-align: center;">연비</td>
									<td style="text-align: center;">13.1km/L</td>
									<td style="text-align: center;">17.7km/L</td>
									<td style="text-align: center;">6.3km/kWh</td>
									<td style="text-align: center;">6.3km/kWh</td>
									<td style="text-align: center;">6.3km/kWh</td>
									<td style="text-align: center;">6.3km/kWh</td>
								</tr>
								<tr>
									<td style="text-align: center;">연료비</td>
									<td style="text-align: center;">1,499.65원/L</td>
									<td style="text-align: center;">1,292.58원/L</td>
									<td style="text-align: center;">71.3원/kWh</td>
									<td style="text-align: center;">313.1원/kWh</td>
									<td style="text-align: center;">173.8원/kWh</td>
									<td style="text-align: center;">86.9원/kWh</td>
								</tr>
								<tr>
									<td style="text-align: center;">100km당 연료비</td>
									<td style="text-align: center;">11,448원</td>
									<td style="text-align: center;">7,302원</td>
									<td style="text-align: center;">1,132원</td>
									<td style="text-align: center;">4,970원</td>
									<td style="text-align: center;">2,759원</td>
									<td style="text-align: center;">1,379원</td>
								</tr>
								<tr>
									<td style="text-align: center;">연간 연료비*</td>
									<td style="text-align: center;">157만원</td>
									<td style="text-align: center;">100만원</td>
									<td style="text-align: center;">16만원</td>
									<td style="text-align: center;">68만원</td>
									<td style="text-align: center;">38만원</td>
									<td style="text-align: center;">19만원</td>
								</tr>
							</tbody>
						</table>
						<dl>
							<dd class="txtBox">※ 유류비는 '17.1.6 전국 평균가격 적용</dd>
							<dd class="txtBox">* 연간 13,724km 주행 기준('14, 교통안전공단 승용차
								평균주행거리 적용)</dd>
						</dl>
						<br>

						<dl>
							<dd>
								<h3 class="mt40" style="margin-bottom: 0px;">주행거리별 5년간 총
									비용(차량구매가격+연료비)</h3>
							</dd>
							<dd style="text-align: right;">(단위 : 원)</dd>
						</dl>
						<table class="table_02_3" summary="주행거리별 5년간 총 연료비"
							bgcolor="white">
							<!-- <caption>주행거리별 5년간 총 비용</caption> -->
							<colgroup>
								<col style="width: *;" />
								<col style="width: 28%;" />
								<col style="width: 28%;" />
								<col style="width: 28%;" />
							</colgroup>
							<thead>
								<dd class="txtBox">※ 유류비는 '17.1.6 전국 평균가격 적용</dd>
								<dd class="txtBox">* 연간 13,724km 주행 기준('14, 교통안전공단 승용차
									평균주행거리 적용)</dd>
								</dl>

								<dl>
									<dd>
										<h3 class="mt40" style="margin-bottom: 0px;">주행거리별 5년간 총
											비용(차량구매가격+연료비)</h3>
									</dd>
									<dd style="text-align: right;">(단위 : 원)</dd>
								</dl>
								<table class="table_02_3" summary="주행거리별 5년간 총 연료비"
									bgcolor="white">
									<!-- <caption>주행거리별 5년간 총 비용</caption> -->
									<colgroup>
										<col style="width: *;" />
										<col style="width: 28%;" />
										<col style="width: 28%;" />
										<col style="width: 28%;" />
									</colgroup>
									<thead>
										<tr>
											<th>구 분</th>
											<th>연 13,724km<br>(승용차 평균)
											</th>
											<th>연 18,250km<br>(전기차 이용자 평균)
											</th>
											<th>연 22,962km<br>(승용-영업용 차량 평균)
											</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>휘발유</td>
											<td>27,891,682</td>
											<td>30,368,762</td>
											<td>32,947,642</td>
										</tr>
										<tr>
											<td>디젤</td>
											<td>27,724,357</td>
											<td>29,314,117</td>
											<td>30,969,207</td>
										</tr>
										<tr>
											<td>아이오닉</td>
											<td>21,972,233</td>
											<td>22,228,405</td>
											<td>22,495,105</td>
										</tr>
										<tr>
											<td>SM3</td>
											<td>21,243,462</td>
											<td>21,610,068</td>
											<td>21,991,738</td>
										</tr>
										<tr>
											<td>쏘울</td>
											<td>23,663,066</td>
											<td>23,985,770</td>
											<td>24,321,735</td>
										</tr>
										<tr>
											<td>리프</td>
											<td>28,411,689</td>
											<td>28,721,949</td>
											<td>29,044,954</td>
										</tr>
										<tr>
											<td>i3</td>
											<td>41,126,203</td>
											<td>41,399,573</td>
											<td>41,684,178</td>
										</tr>
									</tbody>
								</table>


								<!-- <div id="intro_info_cont">
	    	<img alt="전기차 충전요금 입니다" 
				 src="/portal/_images/sub/chargerfee.png" />
    	</div> -->
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
