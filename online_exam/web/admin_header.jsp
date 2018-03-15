<!--headder-->
<%
    session=request.getSession();
    System.out.println("admin heascde"+session.getAttribute("role"));
   
   if("user".equals(session.getAttribute("role")))
             response.sendRedirect("user_homepage.jsp");
 
   else if("null".equals(session.getAttribute("role")))
        response.sendRedirect("index.jsp");
 
    %>
<div class="header">
		<div class="container">
			
			<div class="col-md-4 w3l_header_left">
				<div class="logo">
					<h1><a class="navbar-brand" href="index.jsp"><span>Test U</span></a></h1>
				</div>
			</div>
                   
			<div class="col-md-4 w3l_header_right w3l-r">
				<ul>
                                        <li class="active"><a href="#">hello <space>  </space> <%out.println(session.getAttribute("name"));%></a></li>
                                        <li class="active"><a href="logout" >Log Out</a></li>
				</ul>
			</div>
			<div class="clearfix"> </div>
                   
		
	</div>
	<div class="header-bottom"style="background-color: #009999">
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
                                                        <span class="icon-bar"></span>
						</button>
					</div>
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
						<nav class="menu menu--miranda">
							<ul class="nav navbar-nav menu__list">
                                                            <li class="menu__item menu__item--current"><a href="admin_homepage.jsp" class="menu__link"><b>Home</b></a></li>
                                                            <li class="menu__item"><a href="add_courses.jsp"><b>Add New Course</b></a></li>
                                                            <li class="menu__item"><a href="add_questions.jsp"><b>Add Questions</b></a></li>
                                                            <li class="menu__item"><a href="change_password_admin.jsp" ><b>Change Password</b></a></li>
                                                            <li class="menu__item"><a href="requests.jsp"><b>Request Approval</b></a></li>
                                                        </ul>
						</nav>
					</div>
				</nav>	
				<!--<div class="agileinfo_search">
					<form action="#" method="post">
						<input type="text" name="Search" placeholder="Type text here..." required="">
						<input type="submit" value=" ">
					</form>
				</div>
				<div class="clearfix"></div>-->
			</div>	
		</div>
		<!-- /navigation section -->
	</div>
</div>
	<!-- //header  -->
