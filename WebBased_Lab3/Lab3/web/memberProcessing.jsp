<%-- 
    Document   : memberProcessing
    Created on : 14 Apr 2026, 2:38:01 pm
    Author     : isyra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lab3 - Task 1</title>
    </head>
    <body>
        <fieldset>
            <%
                //define variables..
                String myIC = null;
                String myName = null;

                myIC = request.getParameter("my_icno");
                myName = request.getParameter("my_name");
            %>

            <p>Thank you for registering in this event..!</p>
            <p>This is your details:</p>
            <p>IC No : <%= myIC %></p>
            <p>Name : <%= myName %></p>
    </fieldset>
    </body>
</html>
