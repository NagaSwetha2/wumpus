<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Log In</title>
<link href="style.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <br><br><br>
    <h1><center> Welcome to Hunt The Wumpus!</center> </h1><br><br><br>
<p style="text-align:center;"><img src="images/index.png" height="300" width="500" align="middle" alt="Hunt The Wumpus!"></p>

<center>
<div id="header h1">
    <ul>
        <h2><li><a href="index.jsp">Home</a> </li></h2><br><br>
      <!-- <li><a href="login.html">Login</a> </li> -->
      <h2><li><a href="Registration.jsp" >Register</a> </li></h2>
    </ul>
</div>
</center>

<div id="body1">
  <form action="./Login" name ="lform" onsubmit="return validateForm()" method="post" >
    <label>Log In Here:</label>
    <input name="emailid" type="text" id="emailid" maxlength="25" value="Your Email ID" />
    <input name="pwd" type="password" id="pwd" maxlength="15" value="Your password" />
    <input name="" type="submit" class="botton" value="GO" />
 
  </form>
</div>
</body>
</html>