<%@ page import="java.util.ArrayList" %>
<%@ include file="header.jsp" %>

<h2>Registration Successful!</h2>

<%
    String name = request.getParameter("studentName");
    String matric = request.getParameter("matricNum");
    String club = request.getParameter("selectedClub");

    ArrayList<String> names = (ArrayList<String>) session.getAttribute("name");
    ArrayList<String> matrics = (ArrayList<String>) session.getAttribute("matric");
    ArrayList<String> clubs = (ArrayList<String>) session.getAttribute("club");

    //Save new data
    if (name != null && !name.isEmpty()) {
        names.add(name);
        matrics.add(matric);
        clubs.add(club);
        
        session.setAttribute("name", names);
        session.setAttribute("matric", matrics);
        session.setAttribute("club", clubs);
    }
%>

<ul>
    <li><strong>Name:</strong> <%= name %></li>
    <li><strong>Matric:</strong> <%= matric %></li>
    <li><strong>Club:</strong> <%= club %></li>
</ul>

<br>
<a href="registerClub.jsp"><button>Register Another</button></a>
<a href="memberDirectory.jsp"><button>View Directory</button></a>

<%@ include file="footer.jsp" %>