/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.BandDAO;
import Model.BandLog;
import Model.Bandinfo;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
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
public class BandLogin extends HttpServlet {

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
            String username = request.getParameter("username");
           String password = request.getParameter("password");
           String lastLogin = request.getParameter("lastLogin");
           
          
           BandLog b = new BandLog();
           b.setUsername(username);
           b.setPassword(password);
           b.setLastLogin(lastLogin);
           
           BandDAO bdao = new BandDAO();
           Bandinfo bi = bdao.checkLogin(b);
           
            if(bi!=null && bi.getBandname().equals("noname"))
            {
               RequestDispatcher r = request.getRequestDispatcher("Login.jsp");
                  r.forward(request, response); 
            }
            else if(bi!=null)
            {
                List<String> l =  bdao.get_genre(b);
                String genre[] = new String[l.size()];
                
                for(int i = 0; i<genre.length; i++)
                {
                    genre[i]= l.get(i);
                }
                bi.setBandtype(genre);
                
                  HttpSession session = request.getSession(true);
                  session.setAttribute("username",username); 
                  session.setAttribute("BandUser", bi);
                  RequestDispatcher r = request.getRequestDispatcher("band_profile.jsp");
                  r.forward(request, response);
            }
            else
            {
                  response.sendRedirect("Login1.jsp");
            }  
        }
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
