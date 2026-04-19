<%-- 
    Document   : greeting
    Created on : 31 Mar 2026, 4:44:07 pm
    Author     : isyra
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Date" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Greeting Page</title>
    </head>
    <body>
        <%
            //Retrieve "userName" attribute sent by the Servlet
            String name = (String) request.getAttribute("userName");
            
            //current date
            Date currentDate = new Date();
            
            //page to refresh every 5 seconds
            response.setIntHeader("Refresh", 5);
        %>
        
        <h1>Hello, <%= name %>!</h1>
        
        <p>Current date and time is: <%= currentDate.toString() %></p>
        
    </body>
</html>
