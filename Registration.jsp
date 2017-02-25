<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Page</title>
<link href="style.css" rel="stylesheet" type="text/css" />
<script>
function validateForm() {
    var result = null;
    var name = document.forms["rform"]["name"].value;
    var emailid = document.forms["rform"]["emailid"].value;
    
    var phone_no = document.forms["rform"]["phone_no"].value;
    var pwd = document.forms["rform"]["pwd"].value;
    var cpwd = document.forms["rform"]["cpwd"].value;        
   
    var namepattern = /^[A-Z,a-z]+ [A-Z,a-z ]+$/;
    var emailpattern = /^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$/;
    var phonenopattern = /^(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]\d{3}[\s.-]\d{4}$/;  
    var passwordpattern = /^(?=.*[A-Z].*[A-Z])(?=.*[!@#$&*])(?=.*[0-9].*[0-9])(?=.*[a-z].*[a-z].*[a-z]).+$/;
        if (name==null || name=="") {
        alert("Name missing");
        return false;
    }
    else
    {
    result = name.match(namepattern); 
     if (result==null || result=="") {
        alert("Name should have only charcters and full name is required(First and Last)");
        return false;
    }
    else
    {
        if (emailid == null || emailid == "") {
        alert("Email ID missing");
        return false;
    }
    else
    {
    result = emailid.match(emailpattern); 
     if (result==null || result=="") {
        alert("Email should be of the form abc@xyz.com");
        return false;
    }    
    else
    {
        if (phone_no==null || phone_no=="") {
        alert("Phone number missing");
        return false;
        
        }
        else
    {
    result = phone_no.match(phonenopattern); 
     if (result==null || result=="") {
        alert("Phone number must contain only numbers and must be of the format 123-456-7890 OR (123) 456-7890 OR 123 456 7890 OR 123.456.7890 OR +1 (123) 456-7890");
        return false;
    }    
    else
    {
        if (pwd==null || pwd=="") {
        alert("Password missing");
        return false;
        
        }
        else
        {
            if (cpwd==null || cpwd=="") {
        alert("Please confirm your password");
        return false;
        
        }
        else
        {
            if (cpwd != pwd) {
        alert("Passwords do not match!");
        return false;
        
        }
        else
        {
    result = pwd.match(passwordpattern); 
     if (result==null || result=="") {
        alert("Password should follow the given requirements");
        return false;
    }        
            
        }
            
        }
        }
            
        }
    }
                        
    }
    }
    
    }
    }
return true;            
}
</script>
</head>
<body>
    <center>
<div>
  <form name ="rform" action="./Registration" name ="lform" onsubmit="return validateForm()" method="post" >
      <center><img src="images/registration.jpg" align="middle" height="100" width="400"></center>
      Your name   <center>  <input name="name" type="text" id="name" maxlength="15" /><br><br></center>
      Email ID     <center> <input name="emailid" type="text" id="emailid" maxlength="25"/><br><br></center>
      Password <center>     <input name="pwd" type="password" id="pwd" maxlength="15"/><br><br></center>
      Confirm Password <center>     <input name="cpwd" type="password" id="cpwd" maxlength="15" /><br><br></center>
Phone Number  <center>      <input name="phone_no" type="text" id="phone_no" maxlength="15" /><br><br></center>
   
    <input name="" type="submit" class="botton" value="Register" /><br><br>
    
    <tr> <td colspan="2" ><b>Password requirements:</b>
                 <br><br>
                 1) Must have two uppercase letters
             <br></br>
                 2) Must have one special case letter: ! @ # $ & *
             <br></br>
                  3) Must have at least 2 digits
             <br></br>
                  4) Must have 3 lowercase letters
             <br></br>
                  5) Length of the password must be greater than or equal to 8 
             
             </td></tr>
    
  </form>
</div>
</center>
</body>
</html>