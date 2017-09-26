<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
<%@ include file = "layout/tap.jsp" %>

    <div class="container">

      <div class="bg-faded p-4 my-4">
        <hr class="divider">
        <h2 class="text-center text-lg text-uppercase my-0">About
          <strong>������ ������ ����</strong>
        </h2>
        <hr class="divider">
        <div class="row">
          <div id="cont_body">
	<div class="tab_area" src = "https://ev.or.kr/portal/chargerkind?pMENUMST_ID=21629">
		<ul>
			<h5><li class="on"><a href="#">������ ������ ����</a></li></h5>
			<h5><li><a href="about2.jsp">������ �������</a></li></h5>
		</ul>
	</div><br>
	
	<h3>�����ӵ��� ���� �з�</h3>
	<table border = "0">
		<tr>
			<td>
				<dl class="dl02_blit">
					<dt>�޼� ������</dt>
					<dd>- �����������¿��� 80%�������� 30���� �ҿ��</dd>
					<dd>- �ַ� ��ӵ��� �ްԼ�, ������� �� �ܺ���ҿ� ��ġ ��</dd>
					<dd>- ������� ��뷮�� ������ �����Ͽ��� �ϹǷ� 50kW���� �ַ� ��ġ��</dd>
					<dd>- ������� 100km �� 2,700�� ������</dd>
				</dl>
			</td>
			<td>
				<dl class="dl02_blit">
					<dt>�ϼ� ������(���ο�ϼ������� ����)</dt>
					<dd>- ������������ ������������ 4~5�ð��� �ҿ��</dd>
					<dd>- �ַ� �����̳� ����Ʈ�� ��ġ��</dd>
					<dd>- ���͸� �뷮�� �� 6~7kW ���¿뷮�� ���� �����Ⱑ �ַ� ��ġ��</dd>
					<dd>- �������� 100km��, 1,100�� ������</dd>
				</dl>
			</td>
		</tr>
	</table>
	
    		<!-- <caption>��/�ϼ������� ���޿뷮 �� �����ð� ��</caption> -->
    		<colgroup>
    			<col style="width: 30%;">
    			<col style="width: 35%;">
    			<col style="width: 35%;">
    		</colgroup>
    		<thead>
    		<table bgcolor = "white">
    			<tr>
    				<th>����</th>
    				<th>�޼� ������</th>
    				<th>�ϼ� ������</th>
    			</tr>
    		</thead>
    		<tbody>
    			<tr>
    				<td>���޿뷮</td>
    				<td>50kW</td>
    				<td>3~7kW</td>
    			</tr>
    			<tr>
    				<td>�����ð�</td>
    				<td>15~30��</td>
    				<td>4~5�ð�</td>
    			</tr>
    		</tbody>
    	</table><br><br><br>
    	<h3 class="mt40">��ġ������ ���� �з�</h3>
    	<table class="table_02_3 mt10" summary="��ġ������ ���� �з� ǥ�Դϴ�" bgcolor = "white">
    		<!-- <caption>��ġ������ ���� �з� ǥ</caption> -->
    		<colgroup>
    			<col style="width: 20%">
    			<col style="width: 30%">
    			<col style="width: 20%">
    			<col style="width: 30%">
    		</colgroup>
    		<thead>
    			<tr>
    				<th>����</th>
    				<th>������ ������</th>
    				<th>���ĵ��� ������</th>
    				<th>�̵��� ������</th>
    			</tr>
    		</thead>
    		<tbody>
    			<tr>
    				<td>�뷮</td>
    				<td>3~7kW</td>
    				<td>3~7kW</td>
    				<td>3kW(Max)</td>
    			</tr>
    			<tr>
    				<td>�����ð�</td>
    				<td>4~6�ð�</td>
    				<td>4~6�ð�</td>
    				<td>6~9�ð�</td>
    			</tr>
    			<tr>
    				<td>Ư¡</td>
    				<td colspan="2">
    					<dl style="text-align:left;">
    						<dd>- ������, �����е� ��ġ</dd>
    						<dd>- U�������, ����������, ��������(��ġ �Ǵ� �̼�ġ)</dd>
    						<dd>- ������ ��ġ�� �ܺο� ��ġ�Ǿ� ��, �� ����� ��츸 �ɳ��� ��ġ</dd>
    					</dl>
    				</td>
    				<td>
    					<dl style="text-align:left;">
    						<dd>- 220V �ܼ�Ʈ�� ������ �ĺ���ġ(RFID�±�)<br>&nbsp;&nbsp;�����Ͽ� ����</dd>
    						<dd>- �±װ� ������ �ٸ� �ǹ������� ���� ����</dd>
    					</dl>
    				</td>
    			</tr>
    			<tr>
    				<td>����</td>
    				<td><img alt="������ ������ �̹���" src="portal/_images/sub/chargerkd_01.jpg" width="100px"/></td>
    				<td><img alt="���ĵ��� ������ �̹���" src="portal/_images/sub/chargerkd_02.jpg" width="150px"/></td>
    				<td><img alt="�̵��� ������ �̹���1" src="portal/_images/sub/chargerkd_03.jpg" width="120px"/>
    					<img alt="�̵��� ������ �̹���2" src="portal/_images/sub/chargerkd_04.jpg" width="120px"/>
    				</td>
    			</tr>
    		</tbody>
    	</table><br><br>
    	<h3 class="mt40">������ ������Ŀ���� �� ������ ����</h3>
    	<table class="table_02_3 mt10" summary="������ ����Ŀ����, ��������� ǥ �Դϴ�."  bgcolor = "white">
    		<!-- <caption>������ ������Ŀ����, ��������� ǥ</caption> -->
    		<colgroup>
    			<col style="width:12%">
    			<col style="width:22%">
    			<col style="width:22%">
    			<col style="width:22%">
    			<col style="width:22%">
    		</colgroup>
    		<tbody>
    			<tr>
    				<th >����</th>
    				<th >AC�ܻ� 5��(�ϼ�)</th>
    				<th >AC3�� 7��(�޼�/�ϼ�)</th>
    				<th >DC������ 10��(�޼�)</th>
    				<th >DC�޺� 7��(�޼�)</th>
    			</tr>
    			<tr>
    				<td>������Ŀ����</td>
    				<td>
    				  <img alt="AC(5pin) ������Ŀ����" src="portal/_images/sub/ac5con.jpg" width="100%">
    				</td>
    				<td>
    				  <img alt="AC(7pin) ������Ŀ����" src="portal/_images/sub/ac7con.jpg" width="100%">
    				</td>
    				<td>
    				  <img alt="DC(10pin) ������Ŀ����" src="portal/_images/sub/dc10con.jpg" width="100%">
    				</td>
    				<td>
    				  <img alt="DC(7pin) ������Ŀ����" src="portal/_images/sub/dc7con.jpg" width="100%">
    				</td>
    			</tr>
    			<tr>
    			    <td>������ ����</td>
    				<td>
    				  <img alt="AC(5pin) ��������" src="portal/_images/sub/ac5car.jpg" width="100%">
    				</td>
    				<td>
    				  <img alt="AC(7pin) ��������" src="portal/_images/sub/ac7car.jpg" width="100%">
    				</td>
    				<td>
    				  <img alt="DC(10pin) ��������" src="portal/_images/sub/dc10car.jpg" width="100%">
    				</td>
    				<td>
    				  <img alt="DC(7pin) ��������" src="portal/_images/sub/dc7car.jpg" width="100%">
    				</td>
    			</tr>
    			<tr>
    				<td>��������</td>
    				<td>����, ����, ���, ���̿���,<br /> ����ũ, i3, Leaf, ��Ʈ</td>
    				<td>SM3</td>
    				<td>����, ����, ���, <br /> ���̿���,Leaf</td>
    				<td>����ũ, ��Ʈ, ���̿���, i3</td>
    			</tr>

    		</tbody>
    	</table><br><br>
    	<h3 class="mt40">������ ������ �������</h3>
    	<table class="table_02_3 mt10" summary="������ ������ ������� ǥ �Դϴ�."  bgcolor = "white">
    		<!-- <caption>������ ������ ������� ǥ</caption> -->
    		<colgroup>
    			<col style="width:25%">
    			<col style="width:25%">
    			<col style="width:25%">
    			<col style="width:25%">
    		</colgroup>
    		<tbody>
    			<tr>
    				<th rowspan="2">����</th>
    				<th rowspan="2">����</th>
    				<th colspan="2">�������</th>
    			</tr>
    			<tr>
    				<td style="height:25px; background:#fafafa; font-size:16px;">�޼�</td>
    				<td style="height:25px; background:#fafafa; font-size:16px;">�ϼ�</td>
    			</tr>
    			<tr>
    				<td rowspan='2'>��������</td>
    				<td>����/����/���/���̿���</td>
    				<td>DC������(10pin)</td>
    				<td rowspan='2'>AC �ܻ�(5pin)</td>
    			</tr>
    			<tr>
    				<td>���̿���</td>
    				<td>DC�޺� 7��(�޼�)</td>
    			</tr>
    			<tr>
    				<td>����Ｚ</td>
    				<td>SM3 ZE</td>
    				<td>AC3��(7pin)</td>
    				<td>AC �ܻ�(7pin)</td>
    			</tr>
    			<tr>
    				<td>�ѱ�GM</td>
    				<td>����ũ/��Ʈ</td>
    				<td>DC�޺�(7pin)</td>
    				<td>AC �ܻ�(5pin)</td>
    			</tr>
    			<tr>
    				<td>BMW</td>
    				<td>i3</td>
    				<td>DC�޺�(7pin)</td>
    				<td>AC �ܻ�(5pin)</td>
    			</tr>
    			<tr>
    				<td>�ֻ�</td>
    				<td>Leaf</td>
    				<td>DC������(10pin)</td>
    				<td>AC �ܻ�(5pin)</td>
    			</tr>
    		</tbody>
    	</table>
  	
    	
    	<!-- 
    	<dl>
    		<dt><img alt="AC(5pin)/AC(7pin)/DC������(10pin)/DC�޺�(7pin) ������ ������ �̹���" src="/portal/_images/sub/chargersys.jpg" width="100%"></dt>
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
