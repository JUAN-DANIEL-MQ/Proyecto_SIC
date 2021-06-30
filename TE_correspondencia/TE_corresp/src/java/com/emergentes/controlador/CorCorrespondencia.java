package com.emergentes.controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.emergentes.dao.CorrespondenciaDAO;
import com.emergentes.dao.CorrespondenciaImple;
import com.emergentes.dao.TipoDAO;
import com.emergentes.dao.TipoDAOimple;

import com.emergentes.modelo.Correspondencia;
import com.emergentes.modelo.Tipocor;
import java.io.IOException;
import java.util.List;
import java.sql.Date;
import java.text.SimpleDateFormat;
import javax.servlet.http.HttpSession;

@WebServlet(name = "CorCorrespondencia", urlPatterns = {"/CorCorrespondencia"})
public class CorCorrespondencia extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            Correspondencia cor = new Correspondencia();
            int id;
            int ci;
            CorrespondenciaDAO dao = new CorrespondenciaImple();
            TipoDAO dat = new TipoDAOimple();
            HttpSession s = request.getSession();
            List<Tipocor> lista_tipo = null;
            
            String action = (request.getParameter("action") != null) ? request.getParameter("action") : "view";

            switch (action) {
                case "add":
                    
                    lista_tipo = dat.getAll();
                    request.setAttribute("lista_tipo", lista_tipo);
                    
                    request.setAttribute("correspondencia", cor);
                    request.getRequestDispatcher("frmcorres.jsp").forward(request, response);
                    break;
                case "edit":
                    id = Integer.parseInt(request.getParameter("id"));
                    cor = dao.getById(id);
                    
                    lista_tipo = dat.getAll();
                    request.setAttribute("lista_tipo", lista_tipo);
                    
                    request.setAttribute("correspondencia", cor);
                    request.getRequestDispatcher("frmcorres.jsp").forward(request, response);
                    break;
                case "delete":
                    id = Integer.parseInt(request.getParameter("id"));
                    dao.delete(id);
                    response.sendRedirect("CorCorrespondencia");
                    break;
                case "view":
                    
                    List<Correspondencia> lista = dao.getAllD();
                    request.setAttribute("correspondencias", lista);
                    request.getRequestDispatcher("corres.jsp").forward(request, response);
                    
                    break;
            }

        } catch (Exception ex) {
            System.out.println("Error " + ex.getMessage());
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        int id_co = Integer.parseInt(request.getParameter("id"));
        int id_tipo_co = Integer.parseInt(request.getParameter("id_tipo_co"));
        int id_estudiante = Integer.parseInt(request.getParameter("id_estudiante"));
        String referencia = request.getParameter("referencia");
        int nro_hojas = Integer.parseInt(request.getParameter("nro_hojas"));
        int nro_copias= Integer.parseInt(request.getParameter("nro_copias"));
        Date fecha_ingreso = Date.valueOf(request.getParameter("fecha_ingreso"));
        Date fecha_devolucion = Date.valueOf(request.getParameter("fecha_devolucion"));
        String observacion = request.getParameter("observacion");
        
        
        Correspondencia cor= new Correspondencia();
        
        cor.setId_co(id_co);
        cor.setId_tipo_co(id_tipo_co);
        cor.setId_estudiante(id_estudiante);
        cor.setReferencia(referencia);
        cor.setNro_hojas(nro_hojas);
        cor.setNro_copias(nro_copias);
        cor.setFecha_ingreso(fecha_ingreso);
        cor.setFecha_devolucion(fecha_devolucion);
        cor.setObservacion(observacion);
        
        CorrespondenciaDAO dao = new CorrespondenciaImple();
       
        if (id_co == 0){
            try {
                // Nuevo registro
                dao.insert(cor);
            } catch (Exception ex) {
                System.out.println("Error al insertar "+ex.getMessage());
            }
        }
        
        else{
            try {
                // Edicion de registro
                dao.update(cor);
            } catch (Exception ex) {
                System.out.println("Error al editar "+ex.getMessage());
            }
        }
        response.sendRedirect("CorCorrespondencia");
    }
    
    

}
