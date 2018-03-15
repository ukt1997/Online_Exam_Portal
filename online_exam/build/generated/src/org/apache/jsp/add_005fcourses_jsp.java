package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.Connection;

public final class add_005fcourses_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(4);
    _jspx_dependants.add("/headtag.jsp");
    _jspx_dependants.add("/admin_header.jsp");
    _jspx_dependants.add("/footer.jsp");
    _jspx_dependants.add("/alljs_scripts.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    \n");
      out.write("    ");
      out.write("<!--head-->\n");
      out.write("<head>\n");
      out.write("    <title>TEST U&nbsp; (An Online Test Platform)</title>\n");
      out.write("<!-- Meta tag Keywords -->\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("<meta name=\"keywords\" content=\"Trendy Designs web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, Smartphone Compatible web template, free webDesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web Designs\" />\n");
      out.write("<script type=\"application/x-javascript\"> addEventListener(\"load\", function() { setTimeout(hideURLbar, 0); }, false);\n");
      out.write("function hideURLbar(){ window.scrollTo(0,1); } </script>\n");
      out.write("<!--// Meta tag Keywords -->\n");
      out.write("<!-- css files -->\n");
      out.write("<link rel=\"stylesheet\" href=\"css/bootstrap.css\"> <!-- Bootstrap-Core-CSS -->\n");
      out.write("<link rel=\"stylesheet\" href=\"css/style.css\" type=\"text/css\" media=\"all\" /> <!-- Style-CSS --> \n");
      out.write("<link rel=\"stylesheet\" href=\"css/font-awesome.css\"> <!-- Font-Awesome-Icons-CSS -->\n");
      out.write("<link rel=\"stylesheet\" href=\"css/owl.carousel.css\" type=\"text/css\" media=\"all\"/> <!-- Owl-Carousel-CSS -->\n");
      out.write("<!-- pop-up-box -->\n");
      out.write("<link href=\"css/popuo-box.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />\n");
      out.write("<!-- //pop-up-box -->\n");
      out.write("<!-- For-Gallery-CSS -->\n");
      out.write("<link href=\"css/viewbox.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />\n");
      out.write("<!-- //For-Gallery-CSS -->\n");
      out.write("<!-- //css files -->\n");
      out.write("<!-- web-fonts -->\n");
      out.write("<link href=\"//fonts.googleapis.com/css?family=Roboto+Condensed:300,300i,400,400i,700,700i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese\" rel=\"stylesheet\">\n");
      out.write("<link href=\"//fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=latin-ext\" rel=\"stylesheet\">\n");
      out.write("<!-- //web-fonts -->\n");
      out.write("</head>\n");
      out.write("<!--head-->\n");
      out.write("\n");
      out.write("    <body style=\"color: gray\">\n");
      out.write("<div class=\"main-agile\" id=\"home\">\n");
      out.write("    ");
      out.write("<!--headder-->\n");

    session=request.getSession();
    System.out.println("admin heascde"+session.getAttribute("role"));
   
   if("user".equals(session.getAttribute("role")))
             response.sendRedirect("user_homepage.jsp");
 
   else if("null".equals(session.getAttribute("role")))
        response.sendRedirect("index.jsp");
 
    
      out.write("\n");
      out.write("<div class=\"header\">\n");
      out.write("\t\t<div class=\"container\">\n");
      out.write("\t\t\t\n");
      out.write("\t\t\t<div class=\"col-md-4 w3l_header_left\">\n");
      out.write("\t\t\t\t<div class=\"logo\">\n");
      out.write("\t\t\t\t\t<h1><a class=\"navbar-brand\" href=\"index.jsp\"><span>Test U</span></a></h1>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("                   \n");
      out.write("\t\t\t<div class=\"col-md-4 w3l_header_right w3l-r\">\n");
      out.write("\t\t\t\t<ul>\n");
      out.write("                                        <li class=\"active\"><a href=\"#\">hello <space>  </space> ");
out.println(session.getAttribute("name"));
      out.write("</a></li>\n");
      out.write("                                        <li class=\"active\"><a href=\"logout\" >Log Out</a></li>\n");
      out.write("\t\t\t\t</ul>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<div class=\"clearfix\"> </div>\n");
      out.write("                   \n");
      out.write("\t\t\n");
      out.write("\t</div>\n");
      out.write("\t<div class=\"header-bottom\">\n");
      out.write("\t\t<!-- navigation section -->\n");
      out.write("\t\t<div class=\"w3_navigation\">\n");
      out.write("\t\t\t<div class=\"container\">\n");
      out.write("\t\t\t\t<nav class=\"navbar navbar-default\">\n");
      out.write("\t\t\t\t\t<div class=\"navbar-header navbar-left\">\n");
      out.write("\t\t\t\t\t\t<button type=\"button\" class=\"navbar-toggle collapsed\" data-toggle=\"collapse\" data-target=\"#bs-example-navbar-collapse-1\">\n");
      out.write("\t\t\t\t\t\t\t<span class=\"sr-only\">Toggle navigation</span>\n");
      out.write("\t\t\t\t\t\t\t<span class=\"icon-bar\"></span>\n");
      out.write("\t\t\t\t\t\t\t<span class=\"icon-bar\"></span>\n");
      out.write("\t\t\t\t\t\t\t<span class=\"icon-bar\"></span>\n");
      out.write("                                                        <span class=\"icon-bar\"></span>\n");
      out.write("\t\t\t\t\t\t</button>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<!-- Collect the nav links, forms, and other content for toggling -->\n");
      out.write("\t\t\t\t\t<div class=\"collapse navbar-collapse navbar-right\" id=\"bs-example-navbar-collapse-1\">\n");
      out.write("\t\t\t\t\t\t<nav class=\"menu menu--miranda\">\n");
      out.write("\t\t\t\t\t\t\t<ul class=\"nav navbar-nav menu__list\">\n");
      out.write("\t\t\t\t\t\t\t\t<li class=\"menu__item menu__item--current\"><a href=\"admin_homepage.jsp\" class=\"menu__link\">Home</a></li>\n");
      out.write("                                                                <li class=\"menu__item\"><a href=\"add_courses.jsp\">Add New Course</a></li>\n");
      out.write("                                                                <li class=\"menu__item\"><a href=\"add_questions.jsp\">Add Questions</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t<li class=\"menu__item\"><a href=\"change_password_admin.jsp\" >Change Password</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t<li class=\"menu__item\"><a href=\"requests.jsp\">Request Approval</a></li>\n");
      out.write("                                                        </ul>\n");
      out.write("\t\t\t\t\t\t</nav>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</nav>\t\n");
      out.write("\t\t\t\t<!--<div class=\"agileinfo_search\">\n");
      out.write("\t\t\t\t\t<form action=\"#\" method=\"post\">\n");
      out.write("\t\t\t\t\t\t<input type=\"text\" name=\"Search\" placeholder=\"Type text here...\" required=\"\">\n");
      out.write("\t\t\t\t\t\t<input type=\"submit\" value=\" \">\n");
      out.write("\t\t\t\t\t</form>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"clearfix\"></div>-->\n");
      out.write("\t\t\t</div>\t\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<!-- /navigation section -->\n");
      out.write("\t</div>\n");
      out.write("\t<!-- //header  -->\n");
      out.write("\n");
      out.write("</div>\n");
      out.write("    <div class=\"container\" Style=\"padding: 30px;height: 1000px\" >\n");
      out.write("        <h2>Add New Course</h2>\n");
      out.write("        <form action=\"addcourses\" method=\"post\">\n");
      out.write("    <div class=\"form-group\">\n");
      out.write("      <label class=\"sr-only\" for=\"course\">New Course</label>\n");
      out.write("      <input type=\"Text\" class=\"form-control\" id=\"course\" placeholder=\"Enter New Course name\" name=\"course\">\n");
      out.write("    </div>\n");
      out.write("     <div class=\"form-group\">\n");
      out.write("      <label class=\"sr-only\" for=\"coursedescription\">Course description</label>\n");
      out.write("      <input type=\"Text\" class=\"form-control\" id=\"course_des\" placeholder=\"Enter New Course Description\" name=\"course_des\">\n");
      out.write("    </div>\n");
      out.write("   <button type=\"submit\" class=\"btn btn-default\" name=\"submit\">Submit</button>\n");
      out.write("  </form>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("   ");
      out.write("\n");
      out.write("<div class=\"footer w3ls\">\n");
      out.write("\t<div class=\"footer-2 w3ls\">\n");
      out.write("\t\t<div class=\"container\">\n");
      out.write("\t\t\t<div class=\"footer-main\">\n");
      out.write("\t\t\t\t<div class=\"footer-top\">\n");
      out.write("\t\t\t\t\t<div class=\"col-md-4 ftr-grid fg2\">\n");
      out.write("\t\t\t\t\t\t<h3>Our Address</h3>\n");
      out.write("\t\t\t\t\t\t<div class=\"ftr-address\">\n");
      out.write("\t\t\t\t\t\t\t<div class=\"local\">\n");
      out.write("\t\t\t\t\t\t\t\t<i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t<div class=\"ftr-text\">\n");
      out.write("                                                            <p> Block 1, DivyaSree Omega, Survey No. 13, Kondapur Village,<br>, Kothaguda, Hyderabad</p>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t<div class=\"clearfix\"> </div>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t<div class=\"ftr-address\">\n");
      out.write("\t\t\t\t\t\t\t<div class=\"local\">\n");
      out.write("\t\t\t\t\t\t\t\t<i class=\"fa fa-phone\" aria-hidden=\"true\"></i>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t<div class=\"ftr-text\">\n");
      out.write("\t\t\t\t\t\t\t\t<p>(+91) 040 6619 3000</p>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t<div class=\"clearfix\"> </div>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t<div class=\"ftr-address\">\n");
      out.write("\t\t\t\t\t\t\t<div class=\"local\">\n");
      out.write("\t\t\t\t\t\t\t\t<i class=\"fa fa-envelope\" aria-hidden=\"true\"></i>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t<div class=\"ftr-text\">\n");
      out.write("\t\t\t\t\t\t\t\t<p><a href=\"mailto:info@example.com\">info@TestU.com</a></p>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t<div class=\"clearfix\"> </div>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<div class=\"col-md-4 ftr-grid\">\n");
      out.write("\t\t\t\t\t\t<div class=\"logo-fo\">\n");
      out.write("\t\t\t\t\t\t\t<h2><a href=\"index.jsp\">Test U</a></h2>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<div class=\"col-md-4 w3l_header_left-2\">\n");
      out.write("\t\t\t\t\t\t<div class=\"w3ls-social-icons-2\">\n");
      out.write("\t\t\t\t\t\t\t<a class=\"facebook\" href=\"#\"><i class=\"fa fa-facebook\"></i></a>\n");
      out.write("\t\t\t\t\t\t\t<a class=\"twitter\" href=\"#\"><i class=\"fa fa-twitter\"></i></a>\n");
      out.write("\t\t\t\t\t\t\t<a class=\"pinterest\" href=\"#\"><i class=\"fa fa-google-plus\"></i></a>\n");
      out.write("\t\t\t\t\t\t\t<a class=\"linkedin\" href=\"#\"><i class=\"fa fa-linkedin\"></i></a>\n");
      out.write("\t\t\t\t\t\t\t<a class=\"tumblr\" href=\"#\"><i class=\"fa fa-tumblr\"></i></a>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<div class=\"clearfix\"> </div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("\t<div class=\"copyrights\">\n");
      out.write("\t\t<p>&copy; 2017 Test U. All rights reserved | Design by <a href=\"http://w3layouts.com\">UJJWAL KUMAR</a></p>\n");
      out.write("\t</div>\t\n");
      out.write("</div>\n");
      out.write("<!-- //Footer -->");
      out.write("\n");
      out.write("    ");
      out.write("<!-- js-scripts -->\t\t\t\t\t\n");
      out.write("<!-- js -->\n");
      out.write("\t<script type=\"text/javascript\" src=\"js/jquery-2.1.4.min.js\"></script>\n");
      out.write("\t<script type=\"text/javascript\" src=\"js/bootstrap.js\"></script> <!-- Necessary-JavaScript-File-For-Bootstrap --> \n");
      out.write("<!-- //js -->\t\n");
      out.write("<!-- Baneer-js -->\n");
      out.write("\t<script src=\"js/responsiveslides.min.js\"></script>\n");
      out.write("\t<script>\n");
      out.write("\t\t$(function () {\n");
      out.write("\t\t\t$(\"#slider\").responsiveSlides({\n");
      out.write("\t\t\t\tauto: true,\n");
      out.write("\t\t\t\tpager:false,\n");
      out.write("\t\t\t\tnav: true,\n");
      out.write("\t\t\t\tspeed: 1000,\n");
      out.write("\t\t\t\tnamespace: \"callbacks\",\n");
      out.write("\t\t\t\tbefore: function () {\n");
      out.write("\t\t\t\t\t$('.events').append(\"<li>before event fired.</li>\");\n");
      out.write("\t\t\t\t},\n");
      out.write("\t\t\t\tafter: function () {\n");
      out.write("\t\t\t\t\t$('.events').append(\"<li>after event fired.</li>\");\n");
      out.write("\t\t\t\t}\n");
      out.write("\t\t\t});\n");
      out.write("\t\t});\n");
      out.write("\t</script>\n");
      out.write("<!-- //Baneer-js -->\n");
      out.write("<!-- Popup-js -->\n");
      out.write("\t\t<script src=\"js/jquery.magnific-popup.js\" type=\"text/javascript\"></script>\n");
      out.write("<script>\n");
      out.write("\t$(document).ready(function() {\n");
      out.write("\t$('.popup-with-zoom-anim').magnificPopup({\n");
      out.write("\t\ttype: 'inline',\n");
      out.write("\t\tfixedContentPos: false,\n");
      out.write("\t\tfixedBgPos: true,\n");
      out.write("\t\toverflowY: 'auto',\n");
      out.write("\t\tcloseBtnInside: true,\n");
      out.write("\t\tpreloader: false,\n");
      out.write("\t\tmidClick: true,\n");
      out.write("\t\tremovalDelay: 300,\n");
      out.write("\t\tmainClass: 'my-mfp-zoom-in'\n");
      out.write("\t});\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\n");
      out.write("\t});\n");
      out.write("</script>\n");
      out.write("<!-- //Popup-js -->\n");
      out.write("<!-- Owl-Carousel-JavaScript -->\n");
      out.write("<script src=\"js/owl.carousel.js\"></script>\n");
      out.write("<script>\n");
      out.write("\t$(document).ready(function() {\n");
      out.write("\t\t$(\"#owl-demo\").owlCarousel ({\n");
      out.write("\t\t\titems : 3,\n");
      out.write("\t\t\tlazyLoad : true,\n");
      out.write("\t\t\tautoPlay : true,\n");
      out.write("\t\t\tpagination : true,\n");
      out.write("\t\t});\n");
      out.write("\t});\n");
      out.write("</script>\n");
      out.write("<!-- //Owl-Carousel-JavaScript -->  \n");
      out.write("<!-- For-Gallery-js -->\n");
      out.write("<script src=\"js/jquery.viewbox.min.js\"></script>\n");
      out.write("<script>\n");
      out.write("\t\t$(function(){\n");
      out.write("\t\t\t\n");
      out.write("\t\t\t$('.thumbnail').viewbox();\n");
      out.write("\t\t\t$('.thumbnail-2').viewbox();\n");
      out.write("\t\t\t\n");
      out.write("\t\t\t(function(){\n");
      out.write("\t\t\t\tvar vb = $('.popup-link').viewbox();\n");
      out.write("\t\t\t\t$('.popup-open-button').click(function(){\n");
      out.write("\t\t\t\t\tvb.trigger('viewbox.open');\n");
      out.write("\t\t\t\t});\n");
      out.write("\t\t\t\t$('.close-button').click(function(){\n");
      out.write("\t\t\t\t\tvb.trigger('viewbox.close');\n");
      out.write("\t\t\t\t});\n");
      out.write("\t\t\t})();\n");
      out.write("\t\t\t\n");
      out.write("\t\t\t(function(){\n");
      out.write("\t\t\t\tvar vb = $('.popup-steps').viewbox({navButtons:false});\n");
      out.write("\t\t\t\t\n");
      out.write("\t\t\t\t$('.steps-button').click(function(){\n");
      out.write("\t\t\t\t\tvb.trigger('viewbox.open',[0]);\n");
      out.write("\t\t\t\t});\n");
      out.write("\t\t\t\t\n");
      out.write("\t\t\t\t$('.next-button').click(function(){\n");
      out.write("\t\t\t\t\tvb.trigger('viewbox.open',[1]);\n");
      out.write("\t\t\t\t});\n");
      out.write("\t\t\t\t$('.prev-button').click(function(){\n");
      out.write("\t\t\t\t\tvb.trigger('viewbox.open',[0]);\n");
      out.write("\t\t\t\t});\n");
      out.write("\t\t\t\t$('.ok-button').click(function(){\n");
      out.write("\t\t\t\t\tvb.trigger('viewbox.close');\n");
      out.write("\t\t\t\t});\n");
      out.write("\t\t\t})();\n");
      out.write("\t\t\t\n");
      out.write("\t\t});\n");
      out.write("</script>\n");
      out.write("<!-- //For-Gallery-js -->\n");
      out.write("<!-- Flexslider-js for-testimonials -->\n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("\t\t\t\t\t\t\t$(window).load(function() {\n");
      out.write("\t\t\t\t\t\t\t\t$(\"#flexiselDemo1\").flexisel({\n");
      out.write("\t\t\t\t\t\t\t\t\tvisibleItems:1,\n");
      out.write("\t\t\t\t\t\t\t\t\tanimationSpeed: 1000,\n");
      out.write("\t\t\t\t\t\t\t\t\tautoPlay: false,\n");
      out.write("\t\t\t\t\t\t\t\t\tautoPlaySpeed: 3000,    \t\t\n");
      out.write("\t\t\t\t\t\t\t\t\tpauseOnHover: true,\n");
      out.write("\t\t\t\t\t\t\t\t\tenableResponsiveBreakpoints: true,\n");
      out.write("\t\t\t\t\t\t\t\t\tresponsiveBreakpoints: { \n");
      out.write("\t\t\t\t\t\t\t\t\t\tportrait: { \n");
      out.write("\t\t\t\t\t\t\t\t\t\t\tchangePoint:480,\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\tvisibleItems: 1\n");
      out.write("\t\t\t\t\t\t\t\t\t\t}, \n");
      out.write("\t\t\t\t\t\t\t\t\t\tlandscape: { \n");
      out.write("\t\t\t\t\t\t\t\t\t\t\tchangePoint:640,\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\tvisibleItems:1\n");
      out.write("\t\t\t\t\t\t\t\t\t\t},\n");
      out.write("\t\t\t\t\t\t\t\t\t\ttablet: { \n");
      out.write("\t\t\t\t\t\t\t\t\t\t\tchangePoint:768,\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\tvisibleItems: 1\n");
      out.write("\t\t\t\t\t\t\t\t\t\t}\n");
      out.write("\t\t\t\t\t\t\t\t\t}\n");
      out.write("\t\t\t\t\t\t\t\t});\n");
      out.write("\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t});\n");
      out.write("\t\t\t\t\t</script>\n");
      out.write("\t\t\t\t\t<script type=\"text/javascript\" src=\"js/jquery.flexisel.js\"></script>\n");
      out.write("<!-- //Flexslider-js for-testimonials -->\n");
      out.write("<!-- start-smoth-scrolling -->\n");
      out.write("<script type=\"text/javascript\" src=\"js/move-top.js\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"js/easing.js\"></script>\n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("\tjQuery(document).ready(function($) {\n");
      out.write("\t\t$(\".scroll\").click(function(event){\t\t\n");
      out.write("\t\t\tevent.preventDefault();\n");
      out.write("\t\t\t$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);\n");
      out.write("\t\t});\n");
      out.write("\t});\n");
      out.write("</script>\n");
      out.write("<!-- start-smoth-scrolling -->\n");
      out.write("<!-- //js-scripts -->");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
