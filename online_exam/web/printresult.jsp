<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <div class="container-fluid" style="background-color: #ffcccc ;padding: 30px ;height: 1000px">
            <div class="container" style="padding: 30px ;border: 10px solid #003333;background-color: #ffffcc">
        <h2 align="center" style="padding-bottom:30px ;color: #ff3333">Result</h2>
        <h3 align="center" style="padding-bottom:30px;color: #ff3333 "><b>Candidate Name:</b>&nbsp<%=session.getAttribute("name")%></h3>
       <div class="table-responsive">          
        <table class="table table-hover table-bordered">
            <thead style="color: #660000">
             
      <tr>
        <th>#</th>
        <th>Course Name</th>
        <th>Exam Date And Time</th>
        <th>Marks&nbsp(out of 100)</th>
      </tr>
      </form>
    </thead>
        <%Connection con=null;
        session=request.getSession();
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/online exam","root","password");
            Statement st=con.createStatement();
            int i=1;
            String id=(String)session.getAttribute("id");
             id=" \""+id+"\" ";
            ResultSet rs=st.executeQuery("select * from result where userid="+id);
            String course=null;
            while(rs.next())
            {
                %>
                <tbody style="color: #003366">
                    <tr>
                    <td><%out.print(i++); %></td>
                    <td><%=rs.getString("Course")%></td>
                   <td><%=rs.getString(4)%></td>
                    <td><%=rs.getString(5)%></td>   
                    <%}%>
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
