<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    String username = (String) session.getAttribute("username");
    String firstname = (String) session.getAttribute("firstname");
    String lastname = (String) session.getAttribute("lastname");
    
    // Check if user is logged in
    if (username == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
    <title>Welcome - User Profile</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="container">
        <h1>Welcome!</h1>
        
        <div class="user-info">
            <p><strong>Username:</strong> <%= username %></p>
            <p><strong>First Name:</strong> <%= firstname %></p>
            <p><strong>Last Name:</strong> <%= lastname %></p>
        </div>
        
        <form action="logout.jsp" method="POST" style="display: inline;">
            <button type="submit" class="logout-btn">Logout</button>
        </form>
    </div>
</body>
</html>
