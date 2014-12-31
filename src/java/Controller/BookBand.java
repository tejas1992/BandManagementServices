/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.OrderDAO;
import Model.Orderinfo;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Tejas
 */
public class BookBand extends HttpServlet {

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
                String band_user = request.getParameter("band_user");
                String occasion = request.getParameter("occasion");
                String customer_user = request.getParameter("customer_user");
                String day = request.getParameter("day");
                String year = request.getParameter("year");
                String month = request.getParameter("month");
                String date= day+"-"+month+"-"+year;
                
                Orderinfo o = new Orderinfo();
                o.setBand_user(band_user);
                o.setCustomer_user(customer_user);
                o.setDate(date);
                o.setOccasion(occasion);
                
                OrderDAO odao = new OrderDAO();
                boolean b = odao.check_date(o);
              
                 if(b)
                 {
                     odao.add_order(o);
                     RequestDispatcher r = request.getRequestDispatcher("MyOrders.do");
                     r.forward(request, response);
                 }
                 else
                 {
                 RequestDispatcher r = request.getRequestDispatcher("errorbookBand.jsp");
                 r.forward(request, response);
                 }
                
               
                 
                
                
            } finally {            
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
