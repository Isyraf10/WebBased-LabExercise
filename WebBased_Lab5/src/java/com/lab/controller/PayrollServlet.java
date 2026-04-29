package com.lab.controller;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */


import com.lab.bean.Employee;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/payroll")
public class PayrollServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        List<Employee> employeeList = new ArrayList<>();
        Employee e1 = new Employee(); e1.setEmpId("E001"); e1.setName("Isyraf"); e1.setDepartment("IT"); e1.setBasicSalary(4500.0);
        Employee e2 = new Employee(); e2.setEmpId("E002"); e2.setName("Siti"); e2.setDepartment("HR"); e2.setBasicSalary(2800.0);
        Employee e3 = new Employee(); e3.setEmpId("E003"); e3.setName("Abu"); e3.setDepartment("Finance"); e3.setBasicSalary(3200.0);
        Employee e4 = new Employee(); e4.setEmpId("E004"); e4.setName("Rani"); e4.setDepartment("Admin"); e4.setBasicSalary(2500.0);
        Employee e5 = new Employee(); e5.setEmpId("E005"); e5.setName("Zack"); e5.setDepartment("IT"); e5.setBasicSalary(5000.0);

        employeeList.add(e1); employeeList.add(e2); employeeList.add(e3); employeeList.add(e4); employeeList.add(e5);

        // Share data & Forward
        request.setAttribute("employeeList", employeeList);
        RequestDispatcher rd = request.getRequestDispatcher("payroll_view.jsp");
        rd.forward(request, response);
    }
}