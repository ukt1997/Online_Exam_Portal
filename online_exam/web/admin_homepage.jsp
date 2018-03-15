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
    <div class="container-fluid" Style="padding: 30px;background-color: #ffcccc ;height: 1000px">
        <div class="container-fluid" style="padding: 30px ;border: 10px dotted #003333;background-color: #ffcccc">
        <h2 style="color: #009999;padding-bottom: 30px"align="center">All Courses</h2>
       <div class="table-responsive">          
        <table class="table table-hover">
         <thead style="color:#660033">
      <tr>
        <th>#</th>
        <th>Name</th>
        <th>Description</th>
        <th>Operation</th>
      </tr>
    </thead>
        <%Connection con=null;
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/online exam","root","password");
            Statement st=con.createStatement();
            int i=1;
            ResultSet rs=st.executeQuery("select * from course_master");
            while(rs.next())
            {%>
                <tbody style="color: #660000">
                    <tr>
                    <td><%out.print(i++); %></td>
                    <td><%out.print(rs.getString(1)); %></td>
                    <td><%out.print(rs.getString(2)); %></td>
                    <td><a href="delete?course=<%out.println(rs.getString(1));%>" method="post">Delete</a></td>
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