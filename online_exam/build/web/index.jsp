
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Test U&nbsp;(An Platform for Online Test)</title>
<!-- Meta tag Keywords -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Trendy Designs web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, Smartphone Compatible web template, free webDesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web Designs" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--// Meta tag Keywords -->
<!-- css files -->
<link rel="stylesheet" href="css/bootstrap.css"> <!-- Bootstrap-Core-CSS -->
<link rel="stylesheet" href="css/style.css" type="text/css" media="all" /> <!-- Style-CSS --> 
<link rel="stylesheet" href="css/font-awesome.css"> <!-- Font-Awesome-Icons-CSS -->
<link rel="stylesheet" href="css/owl.carousel.css" type="text/css" media="all"/> <!-- Owl-Carousel-CSS -->
<!-- pop-up-box -->
<link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
<!-- //pop-up-box -->
<!-- For-Gallery-CSS -->
<link href="css/viewbox.css" rel="stylesheet" type="text/css" media="all" />
<!-- //For-Gallery-CSS -->
<!-- //css files -->
<!-- web-fonts -->
<link href="//fonts.googleapis.com/css?family=Roboto+Condensed:300,300i,400,400i,700,700i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=latin-ext" rel="stylesheet">
<!-- //web-fonts -->
</head>
<body>
    <%
   Cookie cookie[] =request.getCookies();
        Cookie c=null;
        Boolean b=false;
        if(cookie!=null)
        {for( Cookie c1:cookie)
        {
                System.err.println(c1.getName()+"->"+c1.getValue().toString());
        
            if(c1.getName().equals("online_exam"))
            {
                c=c1;
                b=true;
                break;
            }
        }
        }
        if(b==true)
        {
            RequestDispatcher rd=request.getRequestDispatcher("validatecookie");
            request.setAttribute("cookie", c);
            rd.forward(request, response);
        }
   %>
<div class="main-agile" id="home">
	<!-- header -->
	<div class="header">
		<div class="container">
			<div class="col-md-4 w3l_header_left">
				<div class="w3ls-social-icons">
					<a class="facebook" href="#"><i class="fa fa-facebook"></i></a>
					<a class="twitter" href="#"><i class="fa fa-twitter"></i></a>
					<a class="pinterest" href="#"><i class="fa fa-google-plus"></i></a>
					<a class="linkedin" href="#"><i class="fa fa-linkedin"></i></a>
					<a class="tumblr" href="#"><i class="fa fa-tumblr"></i></a>
				</div>
			</div>
			<div class="col-md-4 w3l_header_right">
				<div class="logo">
					<h1><a class="navbar-brand" href="index.jsp"><span>Test U</span></a></h1>
				</div>
			</div>
			<div class="col-md-4 w3l_header_right w3l-r">
				<ul>
					<li><a href="#small-dialog" class="play-icon popup-with-zoom-anim">Sign In</a></li>
					<li><a href="#small-dialog1" class="play-icon popup-with-zoom-anim">Sign Up</a></li>
					<li><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span> <a href="mailto:info@example.com">INFO@TESTU.COM</a></li>
				</ul>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
        <div class="header-bottom" style="background-color:#009999">
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
                                                            <li class="menu__item menu__item--current"><a href="index.jsp" class="menu__link"><b>Home</b></a></li>
                                                            <li class="menu__item"><a href="#about" class="scroll menu__link"><b>About</b></a></li>
                                                            <li class="menu__item"><a href="#services" class="scroll menu__link"><b>Services</b></a></li>
                                                            <li class="menu__item"><a href="#team" class="scroll menu__link"><b>Team</b></a></li>
								<li 
                                                        <li class="menu__item"><a href="#contact" class="scroll menu__link"><b>Contact</b></a></li>
							</ul>
						</nav>
					</div>
				</nav>	
	
				<div class="clearfix"></div>
			</div>	
		</div>
		<!-- /navigation section -->
	</div>
	<!-- //header -->
</div>
<div>
    <%
        if(request.getAttribute("msg")!="null")
            System.out.print("<h3 Style='color:red'>'"+ request.getParameter("msg")+"'</h3>");
    %>   
</div>
<!-- Slider -->
<div class="slider">
	<div class="callbacks_container">
		<ul class="rslides" id="slider">
			<li>
				<div class="w3layouts-banner-top w3layouts-banner-top1">
					<div class="container">
						<div class="slider-info">
							<i class="glyphicon glyphicon-lamp" aria-hidden="true"></i>
							
						</div>
					</div>
				</div>
			</li>
			<li>
				<div class="w3layouts-banner-top">
					<div class="container">
						<div class="slider-info">
							<i class="glyphicon glyphicon-lamp" aria-hidden="true"></i>
							
						</div>
					</div>
				</div>
			</li>
			<li>
				<div class="w3layouts-banner-top w3layouts-banner-top2">
					<div class="container">
						<div class="slider-info">
							<i class="glyphicon glyphicon-lamp" aria-hidden="true"></i>
							
						</div>
					</div>
				</div>
			</li>
		</ul>
	</div>
	<div class="clearfix"></div>
</div>
<!-- //Slider -->				
<!-- pop-up-box -->
<div id="small-dialog" class="mfp-hide w3ls_small_dialog wthree_pop">
	<h3 class="agileinfo_sign">Sign In</h3>	
	<div class="agileits_signin_form">
		<form action="login_servlet" method="post">
			<input type="text" name="userid" placeholder="UserId" required="">
			<input type="password" name="password" placeholder="Password" required="">
			<div class="agile_remember">
				<div class="agile_remember_left">
					<div class="check">
						<label class="checkbox"><input type="checkbox" name="rm"><i> </i>remember me</label>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
			<input type="submit" value="SIGN IN">
			<p>Don't have an account <a href="#small-dialog1" class="play-icon popup-with-zoom-anim">Sign Up</a></p>
			<div class="w3agile_social_icons">
				<ul>
					<li class="wthree_follow">Follow us on :</li>
					<li><a href="#" class="w3_agile_facebook"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
					<li><a href="#" class="agile_twitter"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
					<li><a href="#" class="w3_agile_dribble"><i class="fa fa-dribbble" aria-hidden="true"></i></a></li>
				</ul>	
			</div>
		</form>
	</div>
</div>
<div id="small-dialog1" class="mfp-hide w3ls_small_dialog wthree_pop">
	<h3 class="agileinfo_sign">Sign Up</h3>	
	<div class="agileits_signin_form">
		<form action="signup_servlet" method="post">
			<input type="text" name="name" placeholder="Name" required="">
			<input type="text" name="userid" placeholder="UserId" required="">
			<input type="email" name="email" placeholder="Your Email" required="">
                        <input type="text" name="age" placeholder="Age" required="">
                        <input type="text" name="address" placeholder="Address" required="">
                        <input type="text" name="contact" placeholder="Contact" required="">
			<input type="password" name="password" placeholder="Password" required="">
			<input type="submit" value="SIGN UP">
			<p>Already a member <a href="#small-dialog" class="play-icon popup-with-zoom-anim">Sign In</a></p>
			<div class="w3agile_social_icons">
				<ul>
					<li class="wthree_follow">Follow us on :</li>
					<li><a href="#" class="w3_agile_facebook"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
					<li><a href="#" class="agile_twitter"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
					<li><a href="#" class="w3_agile_dribble"><i class="fa fa-dribbble" aria-hidden="true"></i></a></li>
				</ul>	
			</div>
		</form>
	</div>
</div>
<!-- //pop-up-box -->
<!-- welcome -->
<div class="about w3layouts-agileinfo" id="about">
	<div class="container">
		<h3 class="top-about">Welcome</h3>
		<div class="about-top w3ls-agile">
			<div class="col-md-6 come">
				<div class=" about-wel">
					<h5>Our Mission</h5>
					<p>Our mission is to bring accessible, affordable, engaging, and highly effective higher education 
                                            to the world. We believe that higher education is a basic human right, and we seek to empower 
                                            our students to advance their education and careers.</p>
                                        <p>Education is no longer a one-time event but a lifelong experience. Education should be less
                                            passive listening (no long lectures) and more active doing. Education should empower students 
                                            to succeed not just in school but in life.</p>	
				</div>
			</div>
			<div class="col-md-6 red">
				<div class=" about-wel">
					<h5>University by Industry</h5>
					<p>We are building an online university, "by Silicon Valley", that:</p>
						<ul>
							<li><a href="#"><i class="glyphicon glyphicon-ok"></i>teaches the skills that industry employers need today</a></li>
							<li><a href="#"><i class="glyphicon glyphicon-ok"></i>delivers credentials endorsed by employers</a></li>
							<li><a href="#"><i class="glyphicon glyphicon-ok"></i>educates at a fraction of the cost of traditional schools</a></li>
						</ul>
                                        <p>With industry giants?Google, AT&T, Facebook, Salesforce, Cloudera, etc.?we offer Nanodegree programs 
                                            and credentials, designed so professionals become Web Developers, Data Analysts, Mobile Developers, etc. 
                                            Our students acquire real skills through a series of online courses and hands-on projects.</p>
				</div>
					<div class="clearfix"> </div>
				</div>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
</div>
<!-- //welcome -->
<!-- services -->
<div class="services" id="services">
	<div class="container">
		<div class="w3layouts-services-heading">
			<h3>Our Services</h3>
		</div>
		<div class="w3-services-grids">
			<div class="col-md-4 w3l-services-grid">
				<div class="w3ls-services-img">
					<i class="fa fa-home" aria-hidden="true"></i>
				</div>
				<div class="agileits-services-info">
					<h4>Online Courses</h4>
					<p>we offer Nanodegree programs and credentials, designed so 
                                            professionals become Web Developers, Data Analysts, Mobile 
                                            Developers, etc </p>
				</div>
			</div>
			<div class="col-md-4 w3l-services-grid">
				<div class="w3ls-services-img">
					<i class="fa fa-pencil-square-o" aria-hidden="true"></i>
				</div>
				<div class="agileits-services-info">
					<h4>Test and Certification</h4>
					<p>Study at no cost Study when it is convenient
                                          Study from your own computer Complete your studies in a 
                                          few weeks Graduate over the Internet</p>
				</div>
			</div>
			<div class="col-md-4 w3l-services-grid">
				<div class="w3ls-services-img">
					<i class="fa fa-wrench" aria-hidden="true"></i>
				</div>
				<div class="agileits-services-info">
					<h4>Live Projects</h4>
					<p>Our students acquire real skills through
                                            a series of online courses and hands-on projects.</p>
				</div>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
</div>
<!-- //services -->

<!-- team -->
<div id="team" class="team-content all_pad w3agile">
	<div class="container">
		<h3 class="title">OUR TEAM</h3>
		<div class="t-content-gds">
			<div class="col-md-3 t-cont-gds wow bounceInUp" data-wow-duration="1.5s" data-wow-delay="0s">
				<div class="team-img">
					<img class="img-responsive" src="images/t1.jpg" alt=" "/>
					<div class="team-text">
						<h4>Ujjwal</h4>
						<p>Co-Founder</p>
						<ul>
							<li><a class="tw1" href="#"><i class="fa fa-facebook"></i></a></li>
							<li><a class="tw2" href="#"><i class="fa fa-twitter"></i></a></li>
							<li><a class="tw3" href="#"><i class="fa fa-google-plus"></i></a></li>
							<li><a class="tw4" href="#"><i class="fa fa-linkedin"></i></a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="col-md-3 t-cont-gds wow bounceInUp" data-wow-duration="1.5s" data-wow-delay="0s">
				<div class="team-img">
					<img class="img-responsive" src="images/t2.jpg" alt=" "/>
					<div class="team-text">
						<h4>Deepa</h4>
						<p>Co-Founder</p>
						<ul>
							<li><a class="tw1" href="#"><i class="fa fa-facebook"></i></a></li>
							<li><a class="tw2" href="#"><i class="fa fa-twitter"></i></a></li>
							<li><a class="tw3" href="#"><i class="fa fa-google-plus"></i></a></li>
							<li><a class="tw4" href="#"><i class="fa fa-linkedin"></i></a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="col-md-3 t-cont-gds wow bounceInUp" data-wow-duration="1.5s" data-wow-delay="0s">
				<div class="team-img">
					<img class="img-responsive" src="images/t3.jpg" alt=" "/>
					<div class="team-text">
						<h4>Adnan</h4>
						<p>Co-Founder</p>
						<ul>
							<li><a class="tw1" href="#"><i class="fa fa-facebook"></i></a></li>
							<li><a class="tw2" href="#"><i class="fa fa-twitter"></i></a></li>
							<li><a class="tw3" href="#"><i class="fa fa-google-plus"></i></a></li>
							<li><a class="tw4" href="#"><i class="fa fa-linkedin"></i></a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="col-md-3 t-cont-gds wow bounceInUp" data-wow-duration="1.5s" data-wow-delay="0s">
				<div class="team-img">
					<img class="img-responsive" src="images/t4.jpg" alt=" "/>
					<div class="team-text">
						<h4>Mouli</h4>
						<p>Co-Founder</p>
						<ul>
							<li><a class="tw1" href="#"><i class="fa fa-facebook"></i></a></li>
							<li><a class="tw2" href="#"><i class="fa fa-twitter"></i></a></li>
							<li><a class="tw3" href="#"><i class="fa fa-google-plus"></i></a></li>
							<li><a class="tw4" href="#"><i class="fa fa-linkedin"></i></a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
</div>
<!-- //team -->

<!-- testimonials -->
<div class="testimonials">
	<div class="container">
		<h3 class="head head1">our Users says</h3>
		<ul id="flexiselDemo1">			
			<li>
				<div class="wthree_testimonials_grid_main">
					<div class="wthree_testimonials_grid">
						
						<p>Everytime I have to give any exam,
                                                    I used to learn many topics from testu.com 
                                                    because I almost get all topics of my subjects. Topics are covered in form 
                                                    of points, to the point information is available to me. 
                                                    Recently I studied system programming from it and it was really helpful.</p>
						<div class="wthree_testimonials_grid_pos">
							<img src="images/te1.jpg" alt=" " class="img-responsive" />
						</div>
					</div>
					<div class="wthree_testimonials_grid1">
						<h5>Linda Carl</h5>
						<p>User</p>
					</div>
				</div>
			</li>
			<li>
				<div class="wthree_testimonials_grid_main">
					<div class="wthree_testimonials_grid">
						
						<p>Whenever I am eager to know technical and programming stuffs and whenever
                                                    I am confused with programming codes. I just simple find solutions in the testu website.
                                                    During my exam time 
                                                    I just simply download the pdf of the concepts I needed and I will simple study that. </p>
						<div class="wthree_testimonials_grid_pos">
							<img src="images/te2.jpg" alt=" " class="img-responsive" />
						</div>
					</div>
					<div class="wthree_testimonials_grid1">
						<h5>Mark Henry</h5>
						<p>User</p>
					</div>
				</div>
			</li>
			<li>
				<div class="wthree_testimonials_grid_main">
					<div class="wthree_testimonials_grid">
						
						<p>utorialspoint.com one of the best website to learn about Computer Science department.
                                                    This website gives us depth knowledge in all subject from low level to high level.This 
                                                    website included large variety of subject.Website have very unique design 
                                                    which attract all user and simple interface to understand all types of user.</p>
						<div class="wthree_testimonials_grid_pos">
							<img src="images/te3.jpg" alt=" " class="img-responsive" />
						</div>
					</div>
					<div class="wthree_testimonials_grid1">
						<h5>Michael Paul</h5>
						<p>User</p>
					</div>
				</div>
			</li>
		</ul>
	</div>
</div>
<!-- //testimonials -->
<!-- contact -->
<div class="contact_w3agile" id="contact">
	<div class="container wow fadeInUp animated animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: fadeInUp;">
		<h3 class="title-w3">Contact Us</h3>
		
		<form action="#" method="post">
			<input type="text" placeholder="Name" name="Name" required="">
			<input type="email" placeholder="Email" name="Email" required="">
			<textarea name="Message" placeholder="Message" required=""></textarea>
			<div class="con-form text-center">
				<input type="submit" value="Send">
			</div>
		</form>
		
	</div>
</div>
<!-- //contact -->	
<%@include file="footer.jsp" %>
    <%@include file="alljs_scripts.jsp" %>
</body>
</html>