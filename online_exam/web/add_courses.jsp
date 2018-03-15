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
    <div class="container-fluid" Style="padding: 30px;background-color: #ffcccc ;height: 1000px" >
        <div class="container-fluid" style="padding: 30px ;border: 10px dotted #003333;background-color: #ffcccc">
            <h2 style="padding-bottom: 40px;color: #009999" align="center">Add New Course</h2>
        <form action="addcourses" method="post">
    <div class="form-group">
      <label class="sr-only" for="course">New Course</label>
      <input type="Text" class="form-control" id="course" placeholder="Enter New Course name" name="course">
    </div>
     <div class="form-group">
      <label class="sr-only" for="coursedescription">Course description</label>
      <input type="Text" class="form-control" id="course_des" placeholder="Enter New Course Description" name="course_des">
    </div>
   <button type="submit" class="btn btn-default" name="submit">Submit</button>
  </form>
    </div>
    </div>

   <%@include file="footer.jsp" %>
    <%@include file="alljs_scripts.jsp" %>
    </body>
</html>