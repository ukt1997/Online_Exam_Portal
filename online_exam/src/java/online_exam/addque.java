/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package online_exam;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.exception.ConstraintViolationException;

/**
 *
 * @author Ujjwal Kumar
 */
public class addque extends HttpServlet {

   String course,q,op1,op2,op3,op4,ans;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       course=request.getParameter("course");
       q=request.getParameter("question");
       op1=request.getParameter("op1");
       op2=request.getParameter("op2");
       op3=request.getParameter("op3");
       op4=request.getParameter("op4");
       ans=request.getParameter("ans");
        Connection con=null;
         RequestDispatcher rd;
        try {
            
           
            Class.forName("com.mysql.jdbc.Driver");
                con=DriverManager.getConnection("jdbc:mysql://localhost:3306/online exam","root","password");
                Statement st=con.createStatement();
               
               
             int x=st.executeUpdate("insert into question_master values('"+course+"','"+q+"','"+op1+"','"+op2+"','"+op3+"','"+op4+"','"+ans+"')");
              request.setAttribute("msg", "Question Added Sucessfully");
                    rd=request.getRequestDispatcher("admin_homepage.jsp");
                    rd.forward(request, response);
        }
        catch(ConstraintViolationException e)
        {
                        request.setAttribute("msg", "Question al ready exist");
                    rd=request.getRequestDispatcher("add_questions.jsp");
                    rd.forward(request, response);
                        
        }
        catch(Exception ex)
            {
                System.err.println("<h2 style='color:red'>"+ex+"</h2>");
            }
        finally{
            try{
                con.close();
            }
            catch(Exception ex1)
            {
                System.err.println("<h2 style='color:red'>"+ex1+"</h2>");
            }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
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
     * Handles the HTTP <code>POST</code> method.
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
