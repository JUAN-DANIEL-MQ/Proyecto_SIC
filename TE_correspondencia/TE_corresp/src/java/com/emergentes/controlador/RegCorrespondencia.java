package com.emergentes.controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.emergentes.dao.ListaTodoDAO;
import com.emergentes.dao.ListaTodoDAOimple;


import com.emergentes.modelo.ListaTodos;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;


@WebServlet(name = "RegCorrespondencia", urlPatterns = {"/RegCorrespondencia"})
public class RegCorrespondencia extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        try {
            ListaTodos dao = new ListaTodos();
            ListaTodoDAO daso = new ListaTodoDAOimple();
            
            
            List<ListaTodos> listas = daso.getAll();
            request.setAttribute("listas", listas);
            request.getRequestDispatcher("listatodo.jsp").forward(request, response);
            
        } catch (Exception ex) {
            Logger.getLogger(RegCorrespondencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
