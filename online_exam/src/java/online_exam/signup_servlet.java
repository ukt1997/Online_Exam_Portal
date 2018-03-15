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

/**
 *
 * @author Ujjwal Kumar
 */
public class signup_servlet extends HttpServlet {

    String id,name,add,password,email,contact,age;

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session=request.getSession(true);
        id=request.getParameter("userid");
        name=request.getParameter("name");
        password=request.getParameter("password");
        add=request.getParameter("address");
        contact=request.getParameter("contact");
        age=request.getParameter("age");
        email=request.getParameter("email");
        PrintWriter obj=response.getWriter();
        Connection con=null;
        try {
            
           
            Class.forName("com.mysql.jdbc.Driver");
                con=DriverManager.getConnection("jdbc:mysql://localhost:3306/online exam","root","password");
                Statement st=con.createStatement();
                ResultSet rs;
                RequestDispatcher rd;
                if(id!= null){
                int x=st.executeUpdate("insert into login_master values('"+id+"','"+password+"','user')");
                int y=st.executeUpdate("insert into user_details values('"+id+"','"+name+"','"+age+"','"+add+"','"+email+"','"+contact+"')");
                    if(x>0)
                    {
                         Cookie cookie1=new Cookie("online_exam",id+":"+password);
                
                cookie1.setMaxAge(60*60*24*30);
                response.addCookie(cookie1);
                        session.setAttribute("name", name);
                        session.setAttribute("id", id);
                        session.setAttribute("role","user");
                   
                         response.sendRedirect("user_homepage.jsp");
                    
                    }
                }
                else
                    response.sendRedirect("index.jsp");
                    
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
        obj.close();
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

