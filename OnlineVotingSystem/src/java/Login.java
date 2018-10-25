

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javafx.scene.control.Alert;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class Login extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws Exception, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
           
            
            String id = request.getParameter("vid");
            String pwd = request.getParameter("pwd");
            System.out.println(id+pwd);
            
            HttpSession session=request.getSession();  
        
            Connection con=null;
            Statement st=null;
            Class.forName("org.h2.Driver");
            String url="jdbc:h2:tcp://localhost/~/voting";
            con=(Connection) DriverManager.getConnection(url,"sa","");
            st=(Statement) con.createStatement();
            ResultSet rs = st.executeQuery("select * from voters");
            boolean flag = false;
            while(rs.next())
            {
                if(rs.getString("pno").equals(id)||rs.getString("cno").equals(id))
                {
                    if(rs.getString("pwd").equals(pwd))
                    {
                        if(!rs.getBoolean("voted"))
                        {
                        flag = true;
                        session.setAttribute("uname",rs.getString("name")); 
                        request.setAttribute("Vid", rs.getString("name") );
                        session.setAttribute("email1", rs.getString("email"));
                        }else
                        {
                        RequestDispatcher dispatcher =
                        getServletContext().getRequestDispatcher("/message_1.jsp");
                        dispatcher.forward(request,response);
                        }
                    }
                }
            }
            
           if(flag == true)
           {
            RequestDispatcher dispatcher =
                getServletContext().getRequestDispatcher("/votingPage.jsp");
                dispatcher.forward(request,response);
           }else
           {
                        request.setAttribute("invalid", "Yikes !..Incorrect ID or Password" );
                       RequestDispatcher dispatcher =
                       getServletContext().getRequestDispatcher("/index.jsp");
                       dispatcher.forward(request,response);
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
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        }
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
