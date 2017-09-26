<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 
 <div class="tagline-upper text-center text-heading text-shadow text-white mt-5 d-none d-lg-block">Electric Motor Vehicle</div>
    <div class="tagline-lower text-center text-expanded text-shadow text-uppercase text-white mb-5 d-none d-lg-block">151, Gasan digital 1-ro | Geumcheon-gu | 08506</div>

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-light bg-faded py-lg-4">
      <div class="container">
        <a class="navbar-brand text-uppercase text-expanded font-weight-bold d-lg-none" href="#">Electric Motor Vehicle</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav mx-auto">
            <li class="nav-item active px-lg-4">
              <a class="nav-link text-uppercase text-expanded" href="userlog.jsp">Home
                <span class="sr-only">(current)</span>
              </a>
            </li>
            <li class="nav-item px-lg-4">
              <a class="nav-link text-uppercase text-expanded" href="log_about.jsp">About</a>
            </li>
            <li class="nav-item px-lg-4">
              <a class="nav-link text-uppercase text-expanded" href="log_blog.jsp">Blog</a>
            </li>
            <li class="nav-item px-lg-4">
              <a class="nav-link text-uppercase text-expanded" href="log_contact.jsp">Contact</a>
            </li>
            <li>
         <a class="nav-link text-uppercase text-expanded" data-toggle="modal" data-target="#myModal">${sessionScope.vo.userid}님</a> 
            </li>
          </ul>
        </div>
      </div>
    </nav>
    
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">개인정보</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      <div id='a'>
      <table>
		<tr>
			<td>id</td>
			<td> ${sessionScope.vo.userid}</td>
		</tr>
		<tr>
			<td>pw</td>
			<td> ${sessionScope.vo.passwd}</td>
		</tr>
		<tr>
			<td>name</td>
			<td> ${sessionScope.vo.mname}</td>
		</tr>
		<tr>
			<td>tel</td>
			<td> ${sessionScope.vo.tel}</td>
		</tr>
		<tr>
			<td>e_mail</td>
			<td> ${sessionScope.vo.email}</td>
		</tr>
	</table>
	    <button onclick="update()">수정하기</button> 
	</div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button onclick="location.href='info?command=logout'" class="btn btn-secondary" data-dismiss="modal">LOG-OUT</button>
      </div>
    </div>
  </div>
</div>
  