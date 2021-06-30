package com.emergentes.dao;

import com.emergentes.modelo.Accion;
import com.emergentes.util.ConexionBD;
import java.util.List;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class AccionDAOimple extends ConexionBD implements AccionDAO{

    @Override
    public List<Accion> getAll() throws Exception {
        List<Accion> lista = null;
        try {
            this.conectar();
            
            PreparedStatement ps = this.conn.prepareStatement("SELECT * FROM accion");
            ResultSet rs = ps.executeQuery();
            
            lista = new ArrayList<Accion>();
            while (rs.next()){
                Accion acc =  new Accion();
                
                acc.setId_accion(rs.getInt("id_accion"));
                acc.setNombre_accion(rs.getString("nombre_accion"));

                lista.add(acc);
            }
            rs.close();
            ps.close();
            
        } catch (Exception e) {
            throw e;
        } finally {
            this.desconectar();
        }
        return lista;
    }
    
}
