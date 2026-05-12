<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>User Login</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="container">
        <h1>User Login</h1>
        
        <% 
            String message = request.getParameter("message");
            if (message != null && !message.isEmpty()) {
                out.println("<div class='error-message'>" + message + "</div>");
            }
        %>
        
        <form action="doLogin.jsp" method="POST">
            <div class="form-group">
                <label for="username">Username:</label>
                <input type="text" id="username" name="username" required>
            </div>
            
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>
            </div>
            
            <input type="submit" value="Login">
            
            <div class="register-link">
                Don't have an account? <a href="insertUser.html">Register here</a>
            </div>
        </form>
    </div>
</body>
</html>
