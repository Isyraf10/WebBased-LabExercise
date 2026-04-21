<%-- 
    Document   : healthInfo
    Created on : 21 Apr 2026, 3:19:34 pm
    Author     : isyra
--%>

<%@ page import="java.util.ArrayList" %>
<%@ include file="header.jsp" %>

<h2>Health Categories</h2>
<%
    ArrayList<String[]> categories = new ArrayList<>();
    categories.add(new String[]{"Below 18.5", "Underweight"});
    categories.add(new String[]{"18.5 - 25.0", "Normal"});
    categories.add(new String[]{"Above 25.0", "Overweight"});
%>

<table border="1" cellpadding="10">
    <tr>
        <th>BMI Range</th>
        <th>Category</th>
    </tr>
    <% for(String[] row : categories) { %>
    <tr>
        <td><%= row[0] %></td>
        <td><%= row[1] %></td>
    </tr>
    <% } %>
</table>

<%@ include file="footer.jsp" %>