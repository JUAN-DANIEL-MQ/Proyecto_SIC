package com.emergentes.controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.emergentes.dao.CuentaDAO;
import com.emergentes.dao.CuentaDAOimple;
import com.emergentes.dao.NivelDAO;
import com.emergentes.dao.NivelDAOimple;
import com.emergentes.dao.UsuarioEDAO;
import com.emergentes.dao.UsuarioEDAOimple;


import com.emergentes.modelo.Cuenta;
import com.emergentes.modelo.NivelCuenta;
import com.emergentes.modelo.UsuarioE;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "CueCorrespondencia", urlPatterns = {"/CueCorrespondencia"})
public class CueCorrespondencia extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            Cuenta cue = new Cuenta();
            int id;
            CuentaDAO dao = new CuentaDAOimple();
            NivelDAO dan = new NivelDAOimple();
            UsuarioEDAO usu = new UsuarioEDAOimple();
            
            List<NivelCuenta> lista_nivel = null;
            List<UsuarioE> lista_usuario = null;
            
            String action = (request.getParameter("action") != null) ? request.getParameter("action") : "view";

            switch (action) {
                case "add":
                    lista_nivel = dan.getAll();
                    request.setAttribute("lista_nivel", lista_nivel);
                    
                    lista_usuario = usu.getAll();
                    request.setAttribute("lista_usuario", lista_usuario);
                    
                    
                    request.setAttribute("cuenta", cue);
                    request.getRequestDispatcher("frmcuenta.jsp").forward(request, response);
                    break;
                case "edit":
                    id = Integer.parseInt(request.getParameter("id"));
                    cue = dao.getById(id);
                    
                    lista_nivel = dan.getAll();
                    request.setAttribute("lista_nivel", lista_nivel);
                    
                     lista_usuario = usu.getAll();
                    request.setAttribute("lista_usuario", lista_usuario);
                    
                    request.setAttribute("cuenta", cue);
                    request.getRequestDispatcher("frmcuenta.jsp").forward(request, response);
                    break;
                case "delete":
                    id = Integer.parseInt(request.getParameter("id"));
                    dao.delete(id);
                    response.sendRedirect("CueCorrespondencia");
                    break;
                case "view":
                    List<Cuenta> lista = dao.getAll();
                    request.setAttribute("cuentas", lista);
                    request.getRequestDispatcher("cuenta.jsp").forward(request, response);
                    break;
            }

        } catch (Exception ex) {
            System.out.println("Error " + ex.getMessage());
        }
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        int id_usuario = Integer.parseInt(request.getParameter("id"));
        String nombre_user = request.getParameter("nombre_user");
        String password = request.getParameter("password");
        int nivel_user = Integer.parseInt(request.getParameter("nivel_user"));
        int id_persona = Integer.parseInt(request.getParameter("id_persona"));
        
        Cuenta cue = new Cuenta();
        
        cue.setId_usuario(id_usuario);
        cue.setNombre_user(nombre_user);
        cue.setPassword(password);
        cue.setNivel_user(nivel_user);
        cue.setId_persona(id_persona);
        
        CuentaDAO dao = new CuentaDAOimple();
       
       
        if (id_usuario == 0){
            try {
                // Nuevo registro
                dao.insert(cue);
            } catch (Exception ex) {
                System.out.println("Error al insertar "+ex.getMessage());
            }
        }
        
        else{
            try {
                // Edicion de registro
                dao.update(cue);
            } catch (Exception ex) {
                System.out.println("Error al editar "+ex.getMessage());
            }
        }
        response.sendRedirect("CueCorrespondencia");
    }

}
