<%-- 
    Document   : processBMI
    Created on : 21 Apr 2026, 3:14:02 pm
    Author     : isyra
--%>

<%
    String wStr = request.getParameter("weight");
    String hStr = request.getParameter("height");
    
    double bmi = 0;
    String category = "";

    try {
        double weight = Double.parseDouble(wStr);
        double height = Double.parseDouble(hStr);

        if (height > 0) {
            // BMI Formula: weight / height^2
            bmi = weight / (height * height);

            if (bmi < 18.5) {
                category = "Underweight";
            } else if (bmi <= 25) {
                category = "Normal";
            } else {
                category = "Overweight";
            }
        }
    } catch (Exception e) {
        response.sendRedirect("bmiCalculator.jsp");
    }
%>

<jsp:forward page="resultBMI.jsp">
    <jsp:param name="bmiValue" value="<%= String.valueOf(bmi) %>" />
    <jsp:param name="bmiCategory" value="<%= category %>" />
</jsp:forward>