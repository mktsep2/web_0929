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
              <a class="nav-link text-uppercase text-expanded" href="index.jsp">Home
                <span class="sr-only">(current)</span>
              </a>
            </li>
            <li class="nav-item px-lg-4">
              <a class="nav-link text-uppercase text-expanded" href="about.jsp">About</a>
            </li>
            <li class="nav-item px-lg-4">
              <a class="nav-link text-uppercase text-expanded" href="blog.jsp">Blog</a>
            </li>
            <li class="nav-item px-lg-4">
              <a class="nav-link text-uppercase text-expanded" href="contact.jsp">Contact</a>
            </li>
            <li>
          <a class="nav-link text-uppercase text-expanded" data-toggle="modal" data-target="#myModal">log-in</a> 
            </li>
          </ul>
        </div>
      </div>
    </nav>
<!--    <div class="modal fade bd-example-modal-sm" id="myModal" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true"> -->
<div class="modal fade bd-example-modal-c" id="myModal" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
 
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
				<ul class="nav nav-tabs" id="myTab" role="tablist">
					<li class="nav-item"><a class="nav-link active" id="home-tab"	data-toggle="tab" href="#signin" role="tab" aria-controls="home"aria-expanded="true">Log-in</a></li>
					<li class="nav-item"><a class="nav-link" id="profile-tab" data-toggle="tab" href="#siginup" role="tab"aria-controls="profile">Sign-up</a></li>
				</ul>
	<div class="modal-body">
        <div id="myTabContent" class="tab-content">
        <div class="tab-pane fade show active " id="signin" role="tabpanel" aria-labelledby="home-tab">
							<form class="form-horizontal" action="info" method='GET'>
									<input type="hidden" name="command" value="login">
									<label><b>Username</b></label>
									<input type="text" placeholder="Enter Username" name="id" required><br> 
									<label><b>Password</b></label>
									<input type="password" placeholder="Enter Password"  name="password" required><br>
									<button type="submit">Login</button>
							</form>
						</div>
						<div class="tab-pane fade" id="signup" role="tablpanel"
							aria-labelledby="profile-tab">
							<form class="form-horizontal">
								<input type="text"> 
								<input type="password"> 
								<input type="submit">
							</form>
						</div>
					</div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
 