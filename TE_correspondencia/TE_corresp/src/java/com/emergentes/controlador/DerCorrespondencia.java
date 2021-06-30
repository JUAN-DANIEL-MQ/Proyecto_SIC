package com.emergentes.controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.emergentes.dao.DerivacionDAO;
import com.emergentes.dao.DerivacionDAOimple;
import com.emergentes.dao.AccionDAO;
import com.emergentes.dao.AccionDAOimple;
import com.emergentes.dao.CorrespondenciaDAO;
import com.emergentes.dao.CorrespondenciaImple;
import com.emergentes.dao.UsuarioEDAO;
import com.emergentes.dao.UsuarioEDAOimple;
import com.emergentes.dao.CargoDAO;
import com.emergentes.dao.CargoDAOimple;

import com.emergentes.modelo.Derivacion;
import com.emergentes.modelo.Accion;
import com.emergentes.modelo.Correspondencia;
import com.emergentes.modelo.UsuarioE;
import com.emergentes.modelo.Cargo;
import java.io.IOException;
import java.util.List;
import java.sql.Date;
import java.util.Calendar;

@WebServlet(name = "DerCorrespondencia", urlPatterns = {"/DerCorrespondencia"})
public class DerCorrespondencia extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       try {
            Derivacion der = new Derivacion();
            int id;
            int ci;
            DerivacionDAO dao = new DerivacionDAOimple();
                AccionDAO dac = new AccionDAOimple();
     CorrespondenciaDAO daoco = new CorrespondenciaImple();
            UsuarioEDAO daous = new UsuarioEDAOimple();
                 CargoDAO cad = new CargoDAOimple();
                 
           
            
            List<Accion> lista_accion = null;
            List<Correspondencia> lista_corres = null;
            List<UsuarioE> lista_usuario = null;
            List<Cargo> lista_cargo = null;
            String nombre;
            
            String action = (request.getParameter("action") != null) ? request.getParameter("action") : "view";

            switch (action) {
                case "add":
                    lista_accion = dac.getAll();
                    request.setAttribute("lista_accion", lista_accion);
                    
                    lista_corres = daoco.getAllD();
                    request.setAttribute("lista_corres", lista_corres);
                    
                    lista_usuario = daous.getAll();
                    request.setAttribute("lista_usuario", lista_usuario);
                    
                    request.setAttribute("derivacion", der);
                    request.getRequestDispatcher("frmderiva.jsp").forward(request, response);
                    break;
                case "edit":
                    id = Integer.parseInt(request.getParameter("id"));
                    der = dao.getById(id);
                    
                    lista_accion = dac.getAll();
                    request.setAttribute("lista_accion", lista_accion);
                    
                    lista_corres = daoco.getAllD();
                    request.setAttribute("lista_corres", lista_corres);
                    
                    lista_usuario = daous.getAll();
                    request.setAttribute("lista_usuario", lista_usuario);
                    
                    request.setAttribute("derivacion", der);
                    request.getRequestDispatcher("frmderiva.jsp").forward(request, response);
                    break;
                case "delete":
                    id = Integer.parseInt(request.getParameter("id"));
                    dao.delete(id);
                    response.sendRedirect("DerCorrespondencia");
                    break;
                case "view":
                    
                    List<Derivacion> lista = dao.getAll();
                       request.setAttribute("derivaciones", lista);
                       request.getRequestDispatcher("deriva.jsp").forward(request, response);
                   // if (s.getAttribute("caro").equals("Admin")) {
                     //  
                    //}else{
                    //ci = (int) s.getAttribute("ci");
                    //List<Derivacion> lista = dao.getAllD(ci);
                      // request.setAttribute("derivaciones", lista);
                       //request.getRequestDispatcher("deriva.jsp").forward(request, response);
                    //}
                    break;
            }

        } catch (Exception ex) {
            System.out.println("Error " + ex.getMessage());
        }
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        int id_derivacion = Integer.parseInt(request.getParameter("id"));
        int id_accion = Integer.parseInt(request.getParameter("id_accion"));
        int id_co = Integer.parseInt(request.getParameter("id_co"));
        int id_funcionario = Integer.parseInt(request.getParameter("id_funcionario"));
        Date fecha_recepcion = Date.valueOf(request.getParameter("fecha_recepcion"));
        
        Derivacion der = new Derivacion ();
        
        der.setId_derivacion(id_derivacion);
        der.setId_accion(id_accion);
        der.setId_co(id_co);
        der.setId_funcionario(id_funcionario);
        der.setFecha_recepcion(fecha_recepcion);
        
        DerivacionDAO dao = new DerivacionDAOimple();
       
        if (id_derivacion == 0){
            try {
                // Nuevo registro
                dao.insert(der);
            } catch (Exception ex) {
                System.out.println("Error al insertar "+ex.getMessage());
            }
        }
        
        else{
            try {
                // Edicion de registro
                dao.update(der);
            } catch (Exception ex) {
                System.out.println("Error al editar "+ex.getMessage());
            }
        }
        response.sendRedirect("DerCorrespondencia");
    }
    
    public java.util.Date SumFecha(Date fecha, int dias){
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(fecha);
        calendar.add(Calendar.DAY_OF_YEAR, dias);
        
        return calendar.getTime();
    }

}
