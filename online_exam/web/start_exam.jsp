<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<html>
    
    <%@include file="headtag.jsp" %>
    <body>
<div class="main-agile" id="home">
    <%@include file="userheader.jsp" %>
</div>
        <div class="container-fluid" style="padding: 30px ;background-color: #ffcccc ;height: 1000px">
            <div class="container-fluid" style="padding: 30px ;border: 10px dotted #003333;background-color: #ffcccc">
        <h2 style="color: #009999;padding-bottom: 30px" align="center">Exam Section</h2>
       <div class="table-responsive">          
        <table class="table table-hover">
         <thead style="color: #660033">
      <tr>
        <th>#</th>
        <th>Course Name</th>
        <th>Exam Status</th>
        <th>Approval Status</th>
        <th>Operation1</th>
        <th>Operation2</th>
      </tr>
    </thead>
        <%Connection con=null;
        session=request.getSession();
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/online exam","root","password");
            Statement st=con.createStatement();
            int i=1;
            String id=(String)session.getAttribute("id");
             id=" \""+id+"\" ";
            ResultSet rs=st.executeQuery("select * from user_cou_map where userid="+id);
             while(rs.next())
             {%>
                <tbody style="color: #660000">
                    <tr>
                    <td><%out.print(i++); %></td>
                    <td><%out.print(rs.getString(2)); %></td>
                    <td><%out.print(rs.getString(3));%></td>
                     <td><%out.print(rs.getString(4));%></td>
                     <% if(rs.getString(3).equals("not Attempted") && rs.getString(4).equals("true")){%>
                     <td><a href="exam.jsp?course=<%out.println(rs.getString(2));%>" method="post">Start Exam</a></td>
                    <%}
                    else
                    
                    {%>
                          <td><a href="#">Start Exam</a></td>
                     <%}
                     if(rs.getString(3).equals("Attempted") && rs.getString(4).equals("true")){%>
                     <td><a href="reexam?course=<%out.println(rs.getString(2));%>" method="post">Re Exam</a></td>
                    <%}
                    else
                    {%>
                          <td><a href="#">ReExam</a></td>
                     <%}
                      
                     %>
                    </tr>
                </tbody>
           <% }
            %>
        </table>
       </div>
            </div>
    </div>
    <%@include file="footer.jsp" %>
    <%@include file="alljs_scripts.jsp" %>
    </body>
</html>
