import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/AccountServlet"})
public class AccountServlet extends HttpServlet {
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        
        // Retrieve parameter from HTML form
        String username = request.getParameter("username");
        
        // Retrieve attributes shared by LoginServlet
        String accountType = (String) request.getAttribute("accountType");
        String email = (String) request.getAttribute("email");

        out.println("<html><body>");
        out.println("<h2>Account Information</h2>");
        out.println("<title>Servlet AccountServlet</title>");
        out.println("<hr>");
        out.println("<p><strong>Welcome, "+ username + "!</strong></p>");
        out.println("<p><b>Account Type:</b> "+ accountType+"</p>");
        out.println("<br>");
        out.println("<a href='login.html'>Logout</a>");
        out.println("</body></html>");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}