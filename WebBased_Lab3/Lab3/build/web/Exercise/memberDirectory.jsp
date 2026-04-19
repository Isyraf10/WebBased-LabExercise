<%@ page import="java.util.ArrayList" %>
<%@ include file="header.jsp" %>

<h2>Club Member Directory</h2>

<%
    ArrayList<String> names = (ArrayList<String>) session.getAttribute("name");
    ArrayList<String> matrics = (ArrayList<String>) session.getAttribute("matric");
    ArrayList<String> clubs = (ArrayList<String>) session.getAttribute("club");
%>

<table border="1" cellpadding="8" style="width: 80%; border-collapse: collapse;">
    <tr style="background-color: #f2f2f2;">
        <th>No.</th>
        <th>Student Name</th>
        <th>Matric Number</th>
        <th>Club Joined</th>
    </tr>
    <%
        if (names != null && !names.isEmpty()) {
            for (int i = 0; i < names.size(); i++) {
    %>
    <tr>
        <td style="text-align: center;"><%= i + 1 %></td>
        <td><%= names.get(i) %></td>
        <td><%= matrics.get(i) %></td>
        <td><%= clubs.get(i) %></td>
    </tr>
    <%
            } // Fixed: Missing closing bracket for 'for' loop
        } else {
    %>
    <tr>
        <td colspan="4" style="text-align: center;">No students registered yet.</td>
    </tr>
    <%
        } 
    %>
</table>

<%@ include file="footer.jsp" %>