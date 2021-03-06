
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.util.Calendar;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class JobCandidates extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws Exception, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
          int id = Integer.parseInt(request.getParameter("btn"));
          HttpSession session = request.getSession(false);
          String email = session.getAttribute("email1").toString();
            System.out.println("maill..."+email);
          if(email.equals(null))
          {
          RequestDispatcher dispatcher =
                getServletContext().getRequestDispatcher("/message_2.jsp");
                dispatcher.forward(request,response);
          }else
          {
          java.sql.Date date = new java.sql.Date(Calendar.getInstance().getTime().getTime());
            
            Connection con=null;
            Statement st=null;
            Class.forName("org.h2.Driver");
            String url="jdbc:h2:tcp://localhost/~/voting";
            con=(Connection) DriverManager.getConnection(url,"sa","");
            st=(Statement) con.createStatement();
            st.execute("insert into jobcan values('"+email+"',"+id+",(select title from jobs where id = 1"+id+"),'"+date+"')");
            RequestDispatcher dispatcher =
                getServletContext().getRequestDispatcher("/message_3.jsp");
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
            Logger.getLogger(JobCandidates.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(JobCandidates.class.getName()).log(Level.SEVERE, null, ex);
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
