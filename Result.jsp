
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Result</title>
    </head>
    <body>
        <form action="./MatchResults">
            <table>
                <tr>
                <td>Hope you had fun! Click submit to know your match result!</td>
                <td> Your game status is: <%= session.getAttribute("gameResult") %></td> 
                <td> <input type="submit" value="submit"></td>
                </tr>
            </table> 
            
        </form>
    </body>
</html>
