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
    <div class="container-fluid" style="background-color: #ffcccc ;padding: 30px;height: 500px" >
        <div class="container-fluid" style="padding: 30px ;border: 10px dotted #003333;background-color: #ffcccc">
            <h2 align="center" style="padding-bottom: 40px;color: brown;">Change password</h2>
        <form action="update" method="post">
    <div class="form-group">
      <label class="sr-only" for="pwd">New Password:</label>
      <input type="password" class="form-control" id="pwd" placeholder="Enter New password" name="pwd">
    </div>
   <button type="submit" class="btn btn-default" name="submit">Submit</button>
  </form>
        </div>
    </div>
    <%@include file="footer.jsp" %>
    <%@include file="alljs_scripts.jsp" %>
    </body>
</html>


         