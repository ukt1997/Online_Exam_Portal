<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<html>
    
    <%@include file="headtag.jsp" %>
    <body>
        <div>
           <%Connection con=null;
            session=request.getSession();
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/online exam","root","password");
            Statement st=con.createStatement();
            String course=request.getParameter("course");
            String id=(String)session.getAttribute("id");
            String name=(String)session.getAttribute("name");
            ArrayList arr=new ArrayList();
            %>
            <div  class="container-fluid" style="background-color:#ffffcc; padding-bottom: 20px"><h2 Align="center">EXAM</h2><br>
             <p><b>Instructions:</b></p>
                <ul style="color: brown;padding-bottom: 15px;padding-left: 15px">
                    <li style="color: red">Refreshing page is Strictly prohibited during exam time.</li>
                    <li>The duration of the examination is 2 hours. No extra time for whatsoever
reason would be allowed to attempt question paper after the stipulated
time of 2 hours is over. </li>
                    <li>The examination will consist of 10 Objective type (multiple choice)
questions requiring candidates to Mouse-click their correct choice of
alternatives against the related question number.
Each Questions carry 10 marks .The question paper is of 100 marks .
There will not be negative marking for wrong answers</li>
                </ul>
            <h3><b>Subject:&nbsp</b><%=course%><p align="right"><b>Full Marks:</b> &nbsp100</p></h3>
            <h3 padding="30px"><b>Candidate Name:</b>&nbsp<%=name%></h3>
            </div>
            <div  class="container-fluid" style="background-color:#ffffcc ; padding-bottom: 20px"><h2 Align="center">Question</h2><br>
                <form method="post" action="resultmake">
                    <input type="hidden" value="<%=request.getParameter("course")%>" name="course"/>
                   
                <%
             course=" \""+course+"\" ";
            ResultSet rs=st.executeQuery("select * from question_master where course="+course+"order by RAND() LIMIT 10");
            int i=1;
            while(rs.next()){
                %><div style="color: black;padding-bottom: 25px">
     <input type="hidden" value="<%=rs.getString("question")%>" name="ques<%=i%>"/>
     <h3 style="padding-bottom: 10px"><%=i%>.&nbsp<%=rs.getString("question")%></h3>
        <h4 style="padding-bottom: 10px"><input type="radio" value="<%=rs.getString("op1")%>" name="radio<%=i%>"/><%=rs.getString("op1")%></h4>
        <h4 style="padding-bottom: 10px"><input type="radio" value="<%=rs.getString("op2")%>" name="radio<%=i%>"/><%=rs.getString("op2")%></h4>
       <h4 style="padding-bottom: 10px"> <input type="radio" value="<%=rs.getString("op3")%>" name="radio<%=i%>"/><%=rs.getString("op3")%></h4>
        <h4 style="padding-bottom: 10px"><input type="radio" value="<%=rs.getString("op4")%>" name="radio<%=i%>"/><%=rs.getString("op4")%></h4>
    <%
    i++;arr.add(rs.getString("ans"));
    }
        session.setAttribute("arr",arr);
    %>
    <input style="color: black" type="submit" value="Submit and finish">
    </div>
    </form>
            </div>
       </div>
    </body>
</html>