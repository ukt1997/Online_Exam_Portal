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
import java.sql.Statement;
import java.sql.ResultSet;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Ujjwal Kumar
 */
public class result extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
         HttpSession session=request.getSession();
         String id=(String)session.getAttribute("id");
         String course=request.getParameter("course");
         Connection con=null;
         ResultSet rs=null;
        try {
           
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/online exam","root","password");
            Statement st=con.createStatement();
          id=" \""+id+"\" ";
         course=" \""+course+"\" ";
         
           String sql="update user_cou_map set examstatus='Attempted' where userid="+id+"and course="+course ;
           int x=st.executeUpdate(sql);
           int j=1,total=0;
           String q=null;
           String ans=null;
           
           while(j<=10)
           {
               q=request.getParameter("ques"+j);
               q="\""+q+"\"";
              ans=request.getParameter("radio"+j);
               sql="select * from question_master where course="+course+" and question="+q;
              
                 rs=st.executeQuery(sql);
                 if(rs.next())
                 {
                     if(rs.getString(7).equals(ans))
                        total=total+10;
                 }
                
                j++;
           }
           DateFormat dateFormat = new SimpleDateFormat("dd-MM-YY hh:mm:ss");
            Date d=new Date();
            System.out.println(dateFormat.format(d));
            id=(String)session.getAttribute("id");
        course=request.getParameter("course");
            int y=st.executeUpdate("insert into result values(NULL,'"+id+"','"+course+"','"+dateFormat.format(d)+"','"+total+"')");
          response.sendRedirect("start_exam.jsp");
          
    }
        catch(Exception e)
        {
            System.err.println(e);
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
