/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.Customer;
import Model.CustomerDAO;
import Model.UserLog;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Tejas
 */
public class Login extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            /* TODO output your page here. You may use following sample code. */
             String username = request.getParameter("username");
             String password = request.getParameter("password");
             String lastlogon = request.getParameter("lastLogon");
           
          //  System.out.println(lastlogon);
            UserLog u = new UserLog();
            u.setUsername(username);
            u.setPassword(password);
            u.setLastlogon(lastlogon);
           
            CustomerDAO c = new CustomerDAO();
            Customer b = c.checkLogin(u);
            
            if(b!=null && b.getFname().equals("noname"))
            {
               RequestDispatcher r = request.getRequestDispatcher("Login.jsp");
                  r.forward(request, response); 
            }
            else if(b!=null)
            {
                  HttpSession session = request.getSession(true);
                  session.setAttribute("username",username); 
                  session.setAttribute("CurrentUser", b);
                  RequestDispatcher r = request.getRequestDispatcher("Profile.jsp");
                  r.forward(request, response);
            }
            else
            {
                  response.sendRedirect("Login1.jsp");
            }  
        }
       // catch(Exception e){}
        finally {            
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
