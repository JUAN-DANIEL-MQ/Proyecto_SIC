package com.emergentes.controlador;

import com.emergentes.dao.UsuarioEDAO;
import com.emergentes.dao.UsuarioEDAOimple;
import com.emergentes.util.Validacion;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.emergentes.modelo.UsuarioE;
import java.util.logging.Level;
import java.util.logging.Logger;

@WebServlet(name = "Login", urlPatterns = {"/Login"})
public class Login extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect("login.jsp");
        
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            int ci = Integer.parseInt(request.getParameter("ci"));
            
            System.out.println("Datos.. " + email + " " + password);
            Validacion v = new Validacion();
            
            UsuarioEDAO dao = new UsuarioEDAOimple();
            UsuarioE usu = new UsuarioE();
            
            usu = dao.getById(ci);
            
            
            
            if (v.checkUser(email, password)) {
                
                HttpSession ses = request.getSession();
                ses.setAttribute("login","OK");
                ses.setAttribute("logeo", usu);
                ses.setAttribute("ci", ci);
                
                response.sendRedirect("UsuarioeCorrespondencia");
                if (v.checkAdmin(ci)) {
                ses.setAttribute("admin","OK");
                ses.setAttribute("cargo","Admin");
                }
            }
            else{
                
                response.sendRedirect("login.jsp");
            }
            
            
        } catch (Exception ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }

}
