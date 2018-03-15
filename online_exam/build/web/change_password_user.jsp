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
    <div class="container-fluid" style="padding:30px;height: 500px ;background-color: #ffcccc">
        <div class="container-fluid" style="padding: 30px ;border: 10px dotted #003333;background-color: #ffcccc">
        <h2 align="center" style="color: brown;padding-bottom: 40px">Change password</h2>
        <form action="update" method="post" style="color:#660000">
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


         