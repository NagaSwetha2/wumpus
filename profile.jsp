<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="javax.xml.crypto.Data"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="javax.servlet.http.HttpSession"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Profile</title>
    </head>
    <body>
        <h1>Statistics of User with Email ID :
        <%= session.getAttribute("userid") %>
		</h1>        
         <%
  
  String username = (String) session.getAttribute("userid");
  Class.forName("com.mysql.jdbc.Driver");
  Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/isa_681","pratik","pratik");
  PreparedStatement  st = null;
  ResultSet rs = null;
  
  try
  {	 
	  
	  st=con.prepareStatement("SELECT * from winstats where userid= ?");
	  st.setString(1,username);
	  rs = st.executeQuery();
	  rs.next();
	  out.println("<h1> Win/Loss Statistics</h1>");
	  out.println("<br></br>");

  out.print("<table border=1>");
  
  out.print("<tr>");
  out.print("<th>Match Wins</th>");
  out.print("<th>Game Wins</th>");
  out.print("<th>Match Losses</th>");
  out.print("<th>Game Losses</th>");
  out.print("</tr>");
  
  out.print("<tr>");
  out.print("<td>");
  out.println(""+rs.getInt(2));
  out.print("</td>");
  out.print("<td>");
  out.println(""+rs.getInt(3));
  out.print("</td>");
  out.print("<td>");
  out.println(""+rs.getInt(4));
  out.print("</td>");
  out.print("<td>");
  out.println(""+rs.getInt(5));
  out.print("</td>");
  out.print("</tr>");
  
  out.print("</table>"); 
  }
  catch (Exception e)
  { e.printStackTrace();}
 %>
 
 <form action="./Logout">       
        <input type="submit" value="Log Out">
 </form>
        
    </body>
</html>
