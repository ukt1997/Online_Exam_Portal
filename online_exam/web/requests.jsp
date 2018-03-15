<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<html>
    
    <%@include file="headtag.jsp" %>
    <body style="color: gray">
<div class="main-agile" id="home">
    <%@include file="admin_header.jsp" %>
</div>
        <div class="container-fluid" Style="background-color: #ffcccc ;padding: 30px;height: 1000px">
         <div class="container-fluid" style="padding: 30px ;border: 10px dotted #003333;background-color: #ffcccc">
             <h2 align="center" style="color: #009999;padding-bottom: 30px">Exam Requests</h2>
       <div class="table-responsive">          
        <table class="table table-hover">
            <thead style="color: #660033">
        <th>#</th>
        <th>User Id</th>
        <th>Course</th>
        <th>Approval Status</th>
        <th>Operation</th>
      </tr>
    </thead>
        <%Connection con=null;
        session=request.getSession();
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/online exam","root","password");
            Statement st=con.createStatement();
            int i=1;
            
            ResultSet rs=st.executeQuery("select * from user_cou_map where examstatus='not Attempted' and approvalstatus='Applied' ");
           while(rs.next())
             {%>
                <tbody style="color: #660000">
                    <tr>
                    <td><%out.print(i++); %></td>
                    <td><%out.print(rs.getString(1)); %></td>
                    <td><%out.print(rs.getString(2)); %></td>
                    <td><%out.print(rs.getString(4)); %></td>
                    <td><a method="post" href="request_approval?id=<%out.print(rs.getString(1));%>&course=<%out.print(rs.getString(2));%>">Approve</a></td>
                   
                    <%}
                    %>
                </tr>
                </tbody>
        </table>
       </div>
    
                <h2 align="center" style="color: #009999;padding-bottom: 30px"> Re Exam Requests</h2>
       <div class="table-responsive">          
        <table class="table table-hover">
         <thead style="color: #660033">
      <tr>
        <th>#</th>
        <th>User Id</th>
        <th>Course</th>
        <th>Approval Status</th>
        <th>Operation</th>
      </tr>
    </thead>
      <%
        session=request.getSession();
            
            rs=st.executeQuery("select * from user_cou_map where examstatus='Attempted' and approvalstatus='Applied' ");
           while(rs.next())
             {%>
                <tbody style="color: #660000">
                    <tr>
                    <td><%out.print(i++); %></td>
                    <td><%out.print(rs.getString(1)); %></td>
                    <td><%out.print(rs.getString(2)); %></td>
                    <td><%out.print(rs.getString(4)); %></td>
                    <td><a method="post" href="request_approval?id=<%out.print(rs.getString(1));%>&course=<%out.print(rs.getString(2));%>">Approve</a></td>
                   
                    <%}
                    %>
                </tr>
                </tbody>
        </table>
       </div>
    </div>
        </div>
    <%@include file="footer.jsp" %>
    <%@include file="alljs_scripts.jsp" %>
    </body>
</html>
