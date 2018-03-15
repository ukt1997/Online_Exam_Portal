package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.ArrayList;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.Connection;

public final class exam_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/headtag.jsp");
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
      out.write("    <body>\n");
      out.write("        <div>\n");
      out.write("           ");
Connection con=null;
            session=request.getSession();
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/online exam","root","password");
            Statement st=con.createStatement();
            String course=request.getParameter("course");
            String id=(String)session.getAttribute("id");
            String name=(String)session.getAttribute("name");
            ArrayList arr=new ArrayList();
            
      out.write("\n");
      out.write("            <div  class=\"container-fluid\" style=\"background-color:#ffffcc; padding-bottom: 20px\"><h2 Align=\"center\">EXAM</h2><br>\n");
      out.write("             <p><b>Instructions:</b></p>\n");
      out.write("                <ul style=\"color: black;padding-bottom: 15px;padding-left: 15px\">\n");
      out.write("                    <li style=\"color: red\">Refreshing page is Strictly prohibited during exam time.</li>\n");
      out.write("                    <li>The duration of the examination is 2 hours. No extra time for whatsoever\n");
      out.write("reason would be allowed to attempt question paper after the stipulated\n");
      out.write("time of 2 hours is over. </li>\n");
      out.write("                    <li>The examination will consist of 10 Objective type (multiple choice)\n");
      out.write("questions requiring candidates to Mouse-click their correct choice of\n");
      out.write("alternatives against the related question number.\n");
      out.write("Each Questions carry 10 marks .The question paper is of 100 marks .\n");
      out.write("There will not be negative marking for wrong answers</li>\n");
      out.write("                </ul>\n");
      out.write("            <h3><b>Subject:&nbsp</b>");
      out.print(course);
      out.write("<p align=\"right\"><b>Full Marks:</b> &nbsp100</p></h3>\n");
      out.write("            <h3 padding=\"30px\"><b>Candidate Name:</b>&nbsp");
      out.print(name);
      out.write("</h3>\n");
      out.write("            </div>\n");
      out.write("            <div  class=\"container-fluid\" style=\"background-color:#ffffcc ; padding-bottom: 20px\"><h2 Align=\"center\">Question</h2><br>\n");
      out.write("                <form method=\"post\" action=\"resultmake\">\n");
      out.write("                    <input type=\"hidden\" value=\"");
      out.print(request.getParameter("course"));
      out.write("\" name=\"course\"/>\n");
      out.write("                   \n");
      out.write("                ");

             course=" \""+course+"\" ";
            ResultSet rs=st.executeQuery("select * from question_master where course="+course+"order by RAND() LIMIT 10");
            int i=1;
            while(rs.next()){
                
      out.write("<div style=\"color: white;padding-bottom: 25px\">\n");
      out.write("     <input type=\"hidden\" value=\"");
      out.print(rs.getString("question"));
      out.write("\" name=\"ques");
      out.print(i);
      out.write("\"/>\n");
      out.write("     <h3 style=\"padding-bottom: 10px\">");
      out.print(i);
      out.write(".&nbsp");
      out.print(rs.getString("question"));
      out.write("</h3>\n");
      out.write("        <h4 style=\"padding-bottom: 10px\"><input type=\"radio\" value=\"");
      out.print(rs.getString("op1"));
      out.write("\" name=\"radio");
      out.print(i);
      out.write("\"/>");
      out.print(rs.getString("op1"));
      out.write("</h4>\n");
      out.write("        <h4 style=\"padding-bottom: 10px\"><input type=\"radio\" value=\"");
      out.print(rs.getString("op2"));
      out.write("\" name=\"radio");
      out.print(i);
      out.write("\"/>");
      out.print(rs.getString("op2"));
      out.write("</h4>\n");
      out.write("       <h4 style=\"padding-bottom: 10px\"> <input type=\"radio\" value=\"");
      out.print(rs.getString("op3"));
      out.write("\" name=\"radio");
      out.print(i);
      out.write("\"/>");
      out.print(rs.getString("op3"));
      out.write("</h4>\n");
      out.write("        <h4 style=\"padding-bottom: 10px\"><input type=\"radio\" value=\"");
      out.print(rs.getString("op4"));
      out.write("\" name=\"radio");
      out.print(i);
      out.write("\"/>");
      out.print(rs.getString("op4"));
      out.write("</h4>\n");
      out.write("    ");

    i++;arr.add(rs.getString("ans"));
    }
        session.setAttribute("arr",arr);
    
      out.write("\n");
      out.write("    <input style=\"color: black\" type=\"submit\" value=\"Submit and finish\">\n");
      out.write("    </div>\n");
      out.write("    </form>\n");
      out.write("            </div>\n");
      out.write("       </div>\n");
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
