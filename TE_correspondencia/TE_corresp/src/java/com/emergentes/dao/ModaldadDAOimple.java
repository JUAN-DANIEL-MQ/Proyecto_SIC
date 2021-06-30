package com.emergentes.dao;

import com.emergentes.modelo.Modalidad;
import com.emergentes.util.ConexionBD;
import java.util.List;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class ModaldadDAOimple extends ConexionBD implements ModalidadDAO{

    @Override
    public List<Modalidad> getAll() throws Exception {
       List<Modalidad> lista = null;
        try {
            this.conectar();
            
            PreparedStatement ps = this.conn.prepareStatement("SELECT * FROM modalidad");
            ResultSet rs = ps.executeQuery();
            
            lista = new ArrayList<Modalidad>();
            while (rs.next()){
                Modalidad mod =  new Modalidad();
                
                mod.setId_modalidad(rs.getInt("id_modalidad"));
                mod.setNombre_modalidad(rs.getString("nombre_modalidad"));
                
                lista.add(mod);
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
