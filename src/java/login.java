/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.io.IOException;
import java.io.PrintWriter;
import java.security.InvalidKeyException;
import java.sql.ResultSet;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author mahes
 */
@WebServlet(urlPatterns = {"/login"})
public class login extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet login</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet login at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        //processRequest(request, response);
        response.setContentType("text/html;charset=UTF-8");
         PrintWriter out = response.getWriter();
        String username = request.getParameter("luid");
        String plainpassword = request.getParameter("lpwd");
        String usertype = "";
        //String secretkey="";
        //String ndb="";
        String enp="";
        //RequestDispatcher rd = null;
        
        try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3308/aenp", "root", "");
                
                PreparedStatement pst = conn.prepareStatement("Select * from authentication_table where username=?");
                pst.setString(1, username);
                
                ResultSet rs = pst.executeQuery();
                
                if (rs.next()){
                    usertype=rs.getString("type");
                    enp=rs.getString("enp");
                    
                    HashedPassword hp=new HashedPassword();
                    getBinery gb=new getBinery();
                    NDBGeneration ndbg=new NDBGeneration();
                    AES aes=new AES();
                    
                    String hashpass=hp.getSHA256Hash(plainpassword);
                    
                    System.out.println("User Name: "+username);
                    System.out.println("Plain Password: "+plainpassword);
                    System.out.println("User Type: "+usertype);
                    System.out.println("Secret Key:"+hashpass);
                    System.out.println("Encrypted Negative Password: "+enp);
                    
                    String decryptedpassword=aes.decrypt(enp,hashpass);      
                    
                    System.out.println("Decrypted Negative Password: "+decryptedpassword);
                    
                    if(decryptedpassword!=null){
                        
                    
                        if("admin".equals(usertype)){
                       
                            HttpSession session_id=request.getSession();
                            session_id.setAttribute("Admi_Id",rs.getString("id"));
                            response.sendRedirect("Admin_Home.jsp");
                        }
                    
                        if("user".equals(usertype)){
                       
                            HttpSession session_id=request.getSession();
                            session_id.setAttribute("User_Id",rs.getString("id"));
                            response.sendRedirect("User_Home.jsp");
                        }
                    }else{
                        out.println("<script type=\"text/javascript\">");
                       out.println("alert('Entered password are incorrect');");
                       out.println("location='index.html';");
                       out.println("</script>");
                       
                       //response.sendRedirect("index.html");
                    }
                }else{
                       out.println("<script type=\"text/javascript\">");
                       out.println("alert('User Name do not exist');");
                       out.println("location='index.html';");
                       out.println("</script>");
                       //response.sendRedirect("index.html");     
                }
            }
            catch (ClassNotFoundException | SQLException e) {
                e.printStackTrace();
            } catch (InvalidKeyException ex) {
            Logger.getLogger(login.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IllegalBlockSizeException ex) {
            Logger.getLogger(login.class.getName()).log(Level.SEVERE, null, ex);
        } catch (BadPaddingException ex) {
            Logger.getLogger(login.class.getName()).log(Level.SEVERE, null, ex);
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
