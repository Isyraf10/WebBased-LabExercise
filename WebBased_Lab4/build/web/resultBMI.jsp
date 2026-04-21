<%-- 
    Document   : resultBMI
    Created on : 21 Apr 2026, 3:14:16 pm
    Author     : isyra
--%>

<%@ include file="header.jsp" %>
<h2>Your BMI Result</h2>

<%
    String bmiVal = request.getParameter("bmiValue");
    String category = request.getParameter("bmiCategory");
    double bmi = 0.0;

    try {
        if (bmiVal != null && !bmiVal.isEmpty()) {
            bmi = Double.parseDouble(bmiVal);
        }
    } catch (Exception e) {
        bmi = 0.0;
    }
%>

<p>BMI Score: <strong><%= String.format("%.2f", bmi) %></strong></p>
<p>Category: <strong><%= category %></strong></p>

<a href="bmiCalculator.jsp">Calculate Again</a>
<%@ include file="footer.jsp" %>