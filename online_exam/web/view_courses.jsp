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
            <div class="container-fluid" style="padding: 30px ;border: 10px dotted #003333;background-color: #ffcccc">
        <h2 style="color: #009999;padding-bottom: 30px" align="center">Available Courses</h2>
       <div class="table-responsive">          
        <table class="table table-hover">
         <thead style="color:#660033">
         <form action="#">
      <tr>
        <th>#</th>
        <th>Course Name</th>
        <th>Exam Status</th>
        <th>Approval Status</th>
        <th>Operation</th>
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
            ResultSet rs=st.executeQuery("select * from course_master");
            String course=null;
           String arr []=new String [10];
            int j=0;
            try{
            while(rs.next())
            {
                
                arr[j++]=rs.getString("course");
                //System.out.println(arr[j-1]);
            }
            }
            catch(Exception e)
                    {
                        System.err.print(e);
                    }
            if(arr!= null){
              
            for(int k=0;k<j;k++)
            {%>
                <tbody style="color: #660000">
                    <tr>
                    <td><%out.print(i++); %></td>
                    <td><%out.print(arr[k]); %></td>
                    <% 
                             course=" \""+arr[k]+"\" ";
                            ResultSet rs2=st.executeQuery("select * from user_cou_map where userid="+id+" and course="+course);
                    if(rs2.next())
                    {%>
                        <td><%out.print(rs2.getString(3));%></td>
                        <td><%out.print(rs2.getString(4));%></td>
                        <td><a href="#">Apply</a></td>
                    <%}
                    else
                    {%>
                         <td>Not Attempted</td>
                        <td>Not Applied</td>
                        <td><a href="apply?course=<%out.print(arr[k]);%>" method="post">Apply</a></td>
                    <%}
                    %>
                </tr>
                </tbody>
           <% }}
            %>
        </table>
       </div>
    </div>
        </div>
    <%@include file="footer.jsp" %>
    <%@include file="alljs_scripts.jsp" %>
    </body>
</html>
