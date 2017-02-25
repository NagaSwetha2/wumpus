

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home Page</title>
<link href="style.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <br><br><br>
  <center>
    <div>
        <h1> WELCOME, 
  <%= session.getAttribute("userid") %>
    </h1>
  </div>  <br><br><br><br><br><br><br><br>
  <div id="bodymiddlePan">
  <!-- Implement profile -->
    <form action="./GameSetup">
        
        <input type="submit" value="Play Hunt The Wumpus!">     
        
    </form>
    <br><br><br><br>
    
    <!-- create servlet -->
    <form action="profile.jsp">
        
        <input type="submit" value="View Your Profile">     
        
    </form> 
    <br><br><br><br>
    
    <form action="./Logout">
        
        <input type="submit" value="Log Out">     
        
    </form>  
  </div></center>
</body>
</html>