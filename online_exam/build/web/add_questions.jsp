<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<html>
    
    <%@include file="headtag.jsp" %>
    <body>
<div class="main-agile" id="home">
    <%@include file="admin_header.jsp" %>
</div>
<div>
    <%
        if(request.getAttribute("msg")!="null")
            System.out.println("<h3 Style='color:red'>'"+ request.getParameter("msg")+"'</h3>");
    %>   
</div>
<div class="container-fluid" Style="background-color: #ffcccc ;padding: 30px;height: 1000px">
    <div class="container-fluid" style="padding: 30px ;border: 10px dotted #003333;background-color: #ffcccc">
        <h2 style="color: #009999;padding-bottom: 30px"align="center">Add Questions</h2>
        <form action="addque" method="post" style="color: brown">
         <div class="raw">
             <div class="col-sm-6">
                 <div class="form-group">
                 <label for="course" >Select Course: </label>
                <select name="course" class="form-control">
                        <%
                             Connection con=null;
                               Class.forName("com.mysql.jdbc.Driver");
                              con=DriverManager.getConnection("jdbc:mysql://localhost:3306/online exam","root","password");
                                 Statement st=con.createStatement();
                                 ResultSet rs=st.executeQuery("select * from course_master");
                                 while(rs.next())
                                 {%>
                                    <option value="<% out.print(rs.getString(1));%>"><% out.print(rs.getString(1));%></option>
                                 <% } %>
              </select>
                </div>
                <div class="form-group">
                <label for="question">Question:</label>
                <textarea class="form-control" rows="13" name="question"></textarea>
                </div>
              </div>
             <div class="col-sm-6">
                 <div class="form-group">
                    <label for="usr">Option 1:</label>
                        <input type="text" class="form-control" name="op1">
                </div>
                 <div class="form-group">
  <label for="usr">Option 2:</label>
  <input type="text" class="form-control" name="op2">
</div>
                 <div class="form-group">
  <label for="usr">Option 3:</label>
  <input type="text" class="form-control" name="op3">
</div>
                 <div class="form-group">
  <label for="usr">Option 4:</label>
  <input type="text" class="form-control" name="op4">
</div>
                 <div class="form-group">
  <label for="usr">Answer:</label>
  <input type="text" class="form-control" name="ans">
</div>
                 <button type="submit" class="btn btn-default">Submit</button>
             </div>
         </div>
  </form>
    </div>
     </div>   
    <%@include file="footer.jsp" %>
    <%@include file="alljs_scripts.jsp" %>
    </body>
</html>