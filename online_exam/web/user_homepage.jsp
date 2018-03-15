<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<html>
    
    <%@include file="headtag.jsp" %>
    <body style="color: gray">
<div class="main-agile" id="home">
    <%@include file="userheader.jsp" %>
</div>
    <div class="container-fluid" Style="padding: 30px;background-color: #ffcccc ;height: 1000px">
        <div class="container-fluid" style="padding: 30px ;border: 10px dotted #003333;background-color: #ffcccc">
            <h2 align="center" style="color: #009999;padding-bottom: 30px">All Courses(You can Apply For Exam In Show Courses Section)</h2>
       <div class="table-responsive">          
        <table class="table table-hover">
            <thead style="color:#660033">
      <tr>
        <th>#</th>
        <th>Name</th>
        <th>Description</th>
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