<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Registration Process</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="container">
        <%
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            String firstname = request.getParameter("firstname");
            String lastname = request.getParameter("lastname");
            
            Connection conn = null;
            PreparedStatement pstmt = null;
            
            try {
                // Load JDBC Driver
                Class.forName("com.mysql.jdbc.Driver");
                
                // Create Connection
                String url = "jdbc:mysql://localhost:3306/csf3107";
                String dbUser = "root";
                String dbPassword = "";
                
                conn = DriverManager.getConnection(url, dbUser, dbPassword);
                
                // Insert user data
                String sql = "INSERT INTO userprofile (username, password, firstname, lastname) VALUES (?, ?, ?, ?)";
                pstmt = conn.prepareStatement(sql);
                pstmt.setString(1, username);
                pstmt.setString(2, password);
                pstmt.setString(3, firstname);
                pstmt.setString(4, lastname);
                
                int result = pstmt.executeUpdate();
                
                if (result > 0) {
                    out.println("<h1>Registration Successful!</h1>");
                    out.println("<p class='success'>User '" + username + "' has been registered successfully.</p>");
                    out.println("<div class='link'>");
                    out.println("<a href='login.jsp'>Click here to Login</a><br/><br/>");
                    out.println("<a href='insertUser.html'>Back to Registration</a>");
                    out.println("</div>");
                } else {
                    out.println("<h1>Registration Failed</h1>");
                    out.println("<p class='error'>Failed to register user. Please try again.</p>");
                    out.println("<div class='link'>");
                    out.println("<a href='insertUser.html'>Back to Registration</a>");
                    out.println("</div>");
                }
                
            } catch (ClassNotFoundException e) {
                out.println("<h1>Error</h1>");
                out.println("<p class='error'>JDBC Driver not found: " + e.getMessage() + "</p>");
                out.println("<div class='link'><a href='insertUser.html'>Back to Registration</a></div>");
            } catch (SQLException e) {
                out.println("<h1>Error</h1>");
                if (e.getMessage().contains("Duplicate entry")) {
                    out.println("<p class='error'>Username already exists. Please choose another username.</p>");
                } else {
                    out.println("<p class='error'>Database error: " + e.getMessage() + "</p>");
                }
                out.println("<div class='link'><a href='insertUser.html'>Back to Registration</a></div>");
            } finally {
                try {
                    if (pstmt != null) pstmt.close();
                    if (conn != null) conn.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        %>
    </div>
</body>
</html>
