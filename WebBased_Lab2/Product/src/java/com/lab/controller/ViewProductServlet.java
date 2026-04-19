package com.lab.controller;

import com.lab.dao.ProductDAO;
import com.lab.model.Product;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ViewProductServlet extends HttpServlet {
    private ProductDAO productDAO;

    public void init() {
        productDAO = new ProductDAO();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        
        List<Product> listProduct = productDAO.selectAllProducts();
        
        out.println("<h2>Product Inventory</h2>");
        out.println("<table border='1'><tr><th>ID</th><th>Name</th><th>Category</th><th>Price</th><th>Quantity</th><th>Actions</th></tr>");
        
        for (Product prod : listProduct) {
            out.println("<tr>");
            out.println("<td>" + prod.getId() + "</td>");
            out.println("<td>" + prod.getName() + "</td>");
            out.println("<td>" + prod.getCategory() + "</td>");
            out.println("<td>RM " + String.format("%.2f", prod.getPrice()) + "</td>");
            out.println("<td>" + prod.getQuantity() + "</td>");
            out.println("<td><a href='UpdateProductServlet?id=" + prod.getId() + "'>Edit</a> | ");
            out.println("<a href='DeleteProductServlet?id=" + prod.getId() + "' onclick=\"return confirm('Are you sure?')\">Delete</a></td>");
            out.println("</tr>");
        }
        
        out.println("</table>");
        out.println("<br><a href='add_product.html'>Add New Product</a>");
    }
}