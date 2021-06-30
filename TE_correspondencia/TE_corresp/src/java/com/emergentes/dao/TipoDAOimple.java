package com.emergentes.dao;

import com.emergentes.modelo.Tipocor;
import com.emergentes.util.ConexionBD;
import java.util.List;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class TipoDAOimple extends ConexionBD implements TipoDAO{

    @Override
    public List<Tipocor> getAll() throws Exception {
        List<Tipocor> lista = null;
        try {
            this.conectar();
            
            PreparedStatement ps = this.conn.prepareStatement("SELECT * FROM tipo_correspondencia");
            ResultSet rs = ps.executeQuery();
            
            lista = new ArrayList<Tipocor>();
            while (rs.next()){
                Tipocor cor =  new Tipocor();
                
                cor.setId_tipo_co(rs.getInt("id_tipo_co"));
                cor.setNombre_tipo_co(rs.getString("nombre_tipo_co"));

                lista.add(cor);
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
