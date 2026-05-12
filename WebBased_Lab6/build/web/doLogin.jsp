<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login Processing</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <%
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        
        try {
            // Load JDBC Driver
            Class.forName("com.mysql.jdbc.Driver");
            
            // Create Connection
            String url = "jdbc:mysql://localhost:3306/csf3107";
            String dbUser = "root";
            String dbPassword = "";
            
            conn = DriverManager.getConnection(url, dbUser, dbPassword);
            
            // Query to validate user
            String sql = "SELECT * FROM userprofile WHERE username = ? AND password = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, username);
            pstmt.setString(2, password);
            
            rs = pstmt.executeQuery();
            
            if (rs.next()) {
                // Login successful - store user info in session
                session.setAttribute("username", rs.getString("username"));
                session.setAttribute("firstname", rs.getString("firstname"));
                session.setAttribute("lastname", rs.getString("lastname"));
                
                // Redirect to main.jsp
                response.sendRedirect("main.jsp");
            } else {
                // Login failed - redirect to login.jsp with error message
                response.sendRedirect("login.jsp?message=Invalid username or password..!");
            }
            
        } catch (ClassNotFoundException e) {
            out.println("JDBC Driver not found: " + e.getMessage());
        } catch (SQLException e) {
            out.println("Database error: " + e.getMessage());
        } finally {
            try {
                if (rs != null) rs.close();
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    %>
</body>
</html>
