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
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

/**
 *
 * @author Ujjwal Kumar
 */
public class login_servlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session=request.getSession(true);
        
        RequestDispatcher rd=null;
        Connection con=null;
        try {
           
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/online exam","root","password");
            Statement st=con.createStatement();
          String id=request.getParameter("userid");
          String rm=request.getParameter("rm");
            String pass=request.getParameter("password");
          String sql=" \""+id+"\" ";
          String sql2=" \""+pass+"\" ";
           sql2="select * from login_master where userid="+sql+" and password="+sql2;
           // System.err.println(sql);
            ResultSet rs=st.executeQuery(sql2);
            if(rs.next())
            {
                session.setAttribute("id", rs.getString(1));
                session.setAttribute("role",rs.getString(3));
                String role=rs.getString("type");
                if(rm!=null)
                {
                   Cookie cookie1=new Cookie("online_exam",id+":"+pass);
                
                    cookie1.setMaxAge(60*60*24*30);
                    response.addCookie(cookie1);
               
                    System.out.println("cookie created");
             
                 }
                 sql2="select * from user_details where userid="+sql;
                  rs=st.executeQuery(sql2);
                  if(rs.next())
                 session.setAttribute("name",rs.getString("name"));
                
              if("user".equals(role))
                            response.sendRedirect("user_homepage.jsp");
                else
                    response.sendRedirect("admin_homepage.jsp");
            }
            else
            {
                 
                 request.setAttribute("msg", "USERID OR PASSWORD NOT MATCHED please try again");
                    rd=request.getRequestDispatcher("index.jsp");
                    rd.forward(request, response);
          }
    }
        catch(SQLException e)
        {
                        System.out.println("<h2>"+e+"</h2>");
                        
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
