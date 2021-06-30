package com.emergentes.controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.emergentes.dao.UsuarioEDAO;
import com.emergentes.dao.UsuarioEDAOimple;
import com.emergentes.dao.ModalidadDAO;
import com.emergentes.dao.ModaldadDAOimple;

import com.emergentes.modelo.UsuarioE;
import com.emergentes.modelo.Modalidad;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "UsuarioeCorrespondencia", urlPatterns = {"/UsuarioeCorrespondencia"})
public class UsuarioeCorrespondencia extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            
            UsuarioEDAO dao = new UsuarioEDAOimple();
            ModalidadDAO damo = new ModaldadDAOimple();
            
            
            List<Modalidad> lista_modalidad = null;
            
            UsuarioE usu = new UsuarioE();
            int id;
            String action = (request.getParameter("action") != null) ? request.getParameter("action") : "view";

            switch (action) {
                case "add":
                    
                    lista_modalidad = damo.getAll();
                    request.setAttribute("lista_modalidad", lista_modalidad);
                    
                    request.setAttribute("usuario", usu);
                    request.getRequestDispatcher("frmusuarioe.jsp").forward(request, response);
                    break;
                case "edit":
                    id = Integer.parseInt(request.getParameter("id"));
                    usu = dao.getById(id);
                    
                    lista_modalidad = damo.getAll();
                    request.setAttribute("lista_modalidad", lista_modalidad);
                    
                    request.setAttribute("usuario", usu);
                    request.getRequestDispatcher("frmusuarioe.jsp").forward(request, response);
                    break;
                case "delete":
                    id = Integer.parseInt(request.getParameter("id"));
                    dao.delete(id);
                    response.sendRedirect("UsuarioeCorrespondencia");
                    break;
                case "view":
                    List<UsuarioE> lista = dao.getAll();
                    request.setAttribute("usuarios", lista);
                    request.getRequestDispatcher("usuarioe.jsp").forward(request, response);
                    break;
            }

        } catch (Exception ex) {
            System.out.println("Error " + ex.getMessage());
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        int ci = Integer.parseInt(request.getParameter("ci"));
        String nombre = request.getParameter("nombre");
        String ap_paterno = request.getParameter("ap_paterno");
        String ap_materno = request.getParameter("ap_materno");
        int telefono = Integer.parseInt(request.getParameter("telefono"));
        int id_modingreso = Integer.parseInt(request.getParameter("id_modingreso"));
        String cargo = request.getParameter("cargo");
        
        
        UsuarioE usu = new UsuarioE();
       
        usu.setCi(ci);
        usu.setNombre(nombre);
        usu.setAp_materno(ap_materno);
        usu.setAp_paterno(ap_paterno);
        usu.setTelefono(telefono);
        usu.setId_modingreso(id_modingreso);
        usu.setCargo(cargo);
        
        UsuarioEDAO dao = new UsuarioEDAOimple();
       
        if (id == 0){
            try {
                // Nuevo registro
                dao.insert(usu);
            } catch (Exception ex) {
                System.out.println("Error al insertar "+ex.getMessage());
            }
        }
        
        else{
            try {
                // Edicion de registro
                dao.update(usu);
            } catch (Exception ex) {
                System.out.println("Error al editar "+ex.getMessage());
            }
        }
        response.sendRedirect("UsuarioeCorrespondencia");
    }

}
