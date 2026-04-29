<%-- 
    Document   : payroll_view
    Created on : 29 Apr 2026, 2:33:09 pm
    Author     : isyra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Employee Payroll</title>
        <style>
            table { border-collapse: collapse; width: 80%; margin-top: 20px; }
            th, td { border: 1px solid black; padding: 10px; text-align: left; }
            th { background-color: #f2f2f2; }
        </style>
    </head>
    <body>
        <h2>Employee Payroll Display System</h2>
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Department</th>
                    <th>Salary (RM)</th>
                    <th>Status</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="emp" items="${employeeList}">
                    <tr>
                        <td>${emp.empId}</td>
                        <td>${emp.name}</td>
                        <td>${emp.department}</td>
                        <td>${emp.basicSalary}</td>
                        <td>
                            <c:choose>
                                <c:when test="${emp.basicSalary >= 3000}">
                                    <strong>Senior</strong>
                                </c:when>
                                <c:otherwise>
                                    Junior
                                </c:otherwise>
                            </c:choose>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </body>
</html>