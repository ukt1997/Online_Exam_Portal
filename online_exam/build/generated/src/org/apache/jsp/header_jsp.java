package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class header_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

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

      out.write("<!--headder-->\n");
      out.write("<div class=\"header\">\n");
      out.write("\t\t<div class=\"container\">\n");
      out.write("\t\t\t<!--<div class=\"col-md-4 w3l_header_left\">\n");
      out.write("\t\t\t\t<div class=\"w3ls-social-icons\">\n");
      out.write("\t\t\t\t\t<a class=\"facebook\" href=\"#\"><i class=\"fa fa-facebook\"></i></a>\n");
      out.write("\t\t\t\t\t<a class=\"twitter\" href=\"#\"><i class=\"fa fa-twitter\"></i></a>\n");
      out.write("\t\t\t\t\t<a class=\"pinterest\" href=\"#\"><i class=\"fa fa-google-plus\"></i></a>\n");
      out.write("\t\t\t\t\t<a class=\"linkedin\" href=\"#\"><i class=\"fa fa-linkedin\"></i></a>\n");
      out.write("\t\t\t\t\t<a class=\"tumblr\" href=\"#\"><i class=\"fa fa-tumblr\"></i></a>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>-->\n");
      out.write("\t\t\t<div class=\"col-md-4 w3l_header_right\">\n");
      out.write("\t\t\t\t<div class=\"logo\">\n");
      out.write("\t\t\t\t\t<h1><a class=\"navbar-brand\" href=\"index.html\"><span>Trendy Designs</span></a></h1>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<div class=\"col-md-4 w3l_header_right w3l-r\">\n");
      out.write("\t\t\t\t<ul>\n");
      out.write("\t\t\t\t\t<li><a href=\"#small-dialog\" class=\"play-icon popup-with-zoom-anim\">Sign In</a></li>\n");
      out.write("\t\t\t\t\t<li><a href=\"#small-dialog1\" class=\"play-icon popup-with-zoom-anim\">Sign Up</a></li>\n");
      out.write("\t\t\t\t\t<li><span class=\"glyphicon glyphicon-envelope\" aria-hidden=\"true\"></span> <a href=\"mailto:info@example.com\">info@example.com</a></li>\n");
      out.write("\t\t\t\t</ul>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<div class=\"clearfix\"> </div>\n");
      out.write("\t\t</div>\n");
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
      out.write("\t\t\t\t\t\t</button>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<!-- Collect the nav links, forms, and other content for toggling -->\n");
      out.write("\t\t\t\t\t<div class=\"collapse navbar-collapse navbar-right\" id=\"bs-example-navbar-collapse-1\">\n");
      out.write("\t\t\t\t\t\t<nav class=\"menu menu--miranda\">\n");
      out.write("\t\t\t\t\t\t\t<ul class=\"nav navbar-nav menu__list\">\n");
      out.write("\t\t\t\t\t\t\t\t<li class=\"menu__item menu__item--current\"><a href=\"index.html\" class=\"menu__link\">Home</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t<li class=\"menu__item\"><a href=\"#about\" class=\"scroll menu__link\">About</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t<li class=\"menu__item\"><a href=\"#services\" class=\"scroll menu__link\">Services</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t<li class=\"menu__item\"><a href=\"#team\" class=\"scroll menu__link\">Team</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t<li class=\"menu__item\"><a href=\"#gallery\" class=\"scroll menu__link\">Gallery</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t<li class=\"menu__item\"><a href=\"#contact\" class=\"scroll menu__link\">Contact</a></li>\n");
      out.write("\t\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t\t</nav>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</nav>\t\n");
      out.write("\t\t\t\t<div class=\"agileinfo_search\">\n");
      out.write("\t\t\t\t\t<form action=\"#\" method=\"post\">\n");
      out.write("\t\t\t\t\t\t<input type=\"text\" name=\"Search\" placeholder=\"Type text here...\" required=\"\">\n");
      out.write("\t\t\t\t\t\t<input type=\"submit\" value=\" \">\n");
      out.write("\t\t\t\t\t</form>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"clearfix\"></div>\n");
      out.write("\t\t\t</div>\t\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<!-- /navigation section -->\n");
      out.write("\t</div>\n");
      out.write("\t<!-- //header  -->\n");
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
