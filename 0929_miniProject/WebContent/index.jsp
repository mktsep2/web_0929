<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<script src = "script/httpRequest.js"></script>
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

  </head>

  <body>
  <script type="text/javascript" src='script/httpRequest.js'></script>
	<%@ include file = "layout/tap.jsp" %>
    <div class="container">
      <div class="bg-faded p-4 my-4">
       <hr class="divider">
       <h2 class="text-center text-lg text-uppercase my-0">SEARCH
       <strong>충전소</strong>
       </h2>
       <hr class="divider">
        
       <div id = "sidoSearch" align = "center"><img src = "img/a.png" width = "100px" height = "100px" onclick = "sidoSearch()"></div>
       
       
       <div id = "cpidTitle" align = "center"></div>
       <div id = "cpidSearch" align = "center"></div>
        
        
        
        
        
        
        
        
      </div>

      <div class="bg-faded p-4 my-4">
        <hr class="divider">
        <h2 class="text-center text-lg text-uppercase my-0">CHECK
          <strong>지도</strong>
        </h2>
        <hr class="divider">
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Magnam soluta dolore voluptatem, deleniti dignissimos excepturi veritatis cum hic sunt perferendis ipsum perspiciatis nam officiis sequi atque enim ut! Velit, consectetur.</p>
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laboriosam pariatur perspiciatis reprehenderit illo et vitae iste provident debitis quos corporis saepe deserunt ad, officia, minima natus molestias assumenda nisi velit?</p>
      </div>

    </div>
    <!-- /.container -->

    <footer class="bg-faded text-center py-5">
      <div class="container">
        <p class="m-0">Copyright &copy; csk&ljs</p>
      </div>
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/popper/popper.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript">

    function sidoSearch() {
    	str =  '<span style="font-weight: bolder;font: 14px;">시/도 선택</span><br style="line-height: 1.5;"><select id="sido" style="margin-left: 5px;" title="�õ� ����" name="sido"><option value="">��ü</option><option value="����">������</option><option value="���">��⵵</option><option value="���">��󳲵�</option><option value="����">���ϵ�</option><option value="����">���ֱ�����</option><option value="�뱸">�뱸������</option><option value="����">����������</option><option value="�λ�">�λ걤����</option><option value="����">����Ư����</option><option value="���">��걤����</option><option value="��õ">��õ������</option><option value="����">���󳲵�</option><option value="�����">����ϵ�</option><option value="����">���ֵ�</option><option value="��û��">��û����</option><option value="��û��">��û�ϵ�</option></select><button id="sidoBtn" onClick = "csidSearch()">��ȸ</button>';
    	document.getElementById("sidoSearch").innerHTML = str;
    	document.getElementById("cpidTitle").innerHTML = "";
		document.getElementById("cpidSearch").innerHTML = "";
    }
    
    function csidSearch() {
    	sendRequest("addr.jsp", "str=" + sido.value, responseCsid, "get");
    	
    }
    
    function responseCsid(){
		if(httpRequest.readyState == 4 && httpRequest.status == 200) {
			data = httpRequest.responseText;
			data += '<br><button id="sidoBtn" onClick = "sidoSearch()">시/도 다시 선택</button>';
			document.getElementById("sidoSearch").innerHTML = data;
		}
	}
    
    function cpidSearch(csid) {
    	sendRequest("cpInfo", "csid=" + csid, responseCpid, "get");
    }
    
    function responseCpid(){
  		if(httpRequest.readyState == 4 && httpRequest.status == 200) {
  			base = '<br><hr class="divider"><h2 class="text-center text-lg text-uppercase my-0">CHECK<strong> 충전기</strong></h2><hr class="divider">';
  			data = httpRequest.responseText;
  			document.getElementById("cpidTitle").innerHTML = base;
  			document.getElementById("cpidSearch").innerHTML = data;
  		}
  	}
    function view(a){
		sendRequest("info",'command='+a+'&id='+(id.value)+'&password='+(password.value)+'&name='+(mname.value)+'&tel='+(tel.value)+'&mail='+(mail.value), userinfo, 'GET');
	}
	function userinfo(){
		if(httpRequest.readyState==4&&httpRequest.status==200){
			alert(httpRequest.response);
			s.innerHTML=httpRequest.responseText;
		}
	}
	function checkLogin(){
		window.location.reload();
	}
	
	function update(){
			sendRequest("userInfo/update.jsp", null, viewuser, 'get');	
	} 
	function viewuser(){
		if(httpRequest.readyState==4 && httpRequest.status==200){
			a.innerHTML=httpRequest.responseText;
		}
	}
    </script>
  </body>
</html>
