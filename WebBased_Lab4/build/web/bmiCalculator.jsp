<%-- 
    Document   : bmiCalculator
    Created on : 21 Apr 2026, 3:13:51 pm
    Author     : isyra
--%>

<%@ include file="header.jsp" %>
<h2>BMI Calculator</h2>
<form action="processBMI.jsp" method="POST">
    <label>Weight (kg): </label>
    <input type="number" step="0.01" name="weight" required><br><br>
    
    <label>Height (m): </label>
    <input type="number" step="0.01" name="height" required><br><br>
    
    <button type="submit">Calculate BMI</button>
</form>
<%@ include file="footer.jsp" %>
