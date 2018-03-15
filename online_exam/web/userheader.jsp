<!--headder-->
<%--
    session=request.getSession();
    if(session.getAttribute("role").equals("admin"))
        response.sendRedirect("admin_homepage.jsp");
    else if(session.getAttribute("role").equals("null"))
        response.sendRedirect("index.jsp");
 --%>
<div class="header">
		<div class="container">
			<!--<div class="col-md-4 w3l_header_left">
				<div class="w3ls-social-icons">
					<a class="facebook" href="#"><i class="fa fa-facebook"></i></a>
					<a class="twitter" href="#"><i class="fa fa-twitter"></i></a>
					<a class="pinterest" href="#"><i class="fa fa-google-plus"></i></a>
					<a class="linkedin" href="#"><i class="fa fa-linkedin"></i></a>
					<a class="tumblr" href="#"><i class="fa fa-tumblr"></i></a>
				</div>
			</div>-->
			<div class="col-md-4 w3l_header_left">
				<div class="logo">
					<h1><a class="navbar-brand" href="index.jsp"><span>Test U</span></a></h1>
				</div>
			</div>
                        
			<div class="col-md-4 w3l_header_right ">
				<ul push="right">
				
					<li class="active"><a href="#">hello <space>  </space> <%out.println(session.getAttribute("name"));%></a></li>
					<li><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span> <a href="mailto:info@example.com">info@testu.com</a></li>
                                        <li class="active" ><a href="logout">Log Out</a></li>
                                </ul>
			</div>
                        
			<div class="clearfix"> </div>
                         
		</div>
	</div>
                                        <div class="header-bottom" style="background-color: #009999">               
		<!-- navigation section -->
		<div class="w3_navigation">
			<div class="container">
				<nav class="navbar navbar-default">
					<div class="navbar-header navbar-left">
						<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
					</div>
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
						<nav class="menu menu--miranda">
							<ul class="nav navbar-nav menu__list">
                                                            <li class="menu__item menu__item--current"><a href="user_homepage.jsp" class="menu__link"><b>Home</b></a></li>
                                                            <li class="menu__item"><a href="view_courses.jsp"><b>Show courses</b></a></li>
                                                            <li class="menu__item"><a href="start_exam.jsp"><b>Start Exam</b></a></li>
                                                            <li class="menu__item"><a href="printresult.jsp" ><b>Result</b></a></li>
                                                            <li class="menu__item"><a href="change_password_user.jsp" ><b>Change Password</b></a></li>
								
							</ul>
						</nav>
					</div>
				</nav>	
				<!--<div class="agileinfo_search">
					<form action="#" method="post">
						<input type="text" name="Search" placeholder="Type text here..." required="">
						<input type="submit" value=" ">
					</form>
				</div>-->
				<div class="clearfix"></div>
			</div>	
		</div>
		<!-- /navigation section -->
	</div>
	<!-- //header  -->
