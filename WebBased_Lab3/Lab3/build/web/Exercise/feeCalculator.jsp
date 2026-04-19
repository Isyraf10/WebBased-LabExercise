<%-- 
    Document   : feeCalculator
    Created on : 14 Apr 2026, 3:23:21 pm
    Author     : isyra
--%>

<%@ include file="header.jsp" %>

<h2>Membership Fee Calculator</h2>

<form action="feeCalculator.jsp" method="post">
    <label for="numActivities"><strong>Number of activities joined:</strong></label>
    <input type="number" id="numActivities" name="numActivities" min="1" required>
    <input type="submit" value="Calculate Fee">
</form>

<br>

<%
    String activitiesParam = request.getParameter("numActivities");

    // Only run the calculation if the user has submitted the form
    if (activitiesParam != null && !activitiesParam.isEmpty()) {
        int activities = Integer.parseInt(activitiesParam);
        double feePerActivity = 10.00;
        double totalFee = activities * feePerActivity;
        
        // Format to 2 decimal places
        String formattedFee = String.format("%.2f", totalFee);
%>
        <div style="background-color: #e9ecef; padding: 15px; border-radius: 5px; width: 50%;">
            <p>Total activities joined: <strong><%= activities %></strong></p>
            <p>Total Fee (RM 10/activity): <strong>RM <%= formattedFee %></strong></p>
        </div>
<%
    }
%>

<%@ include file="footer.jsp" %>