package com.emergentes.dao;

import com.emergentes.modelo.NivelCuenta;
import com.emergentes.util.ConexionBD;
import java.util.List;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class NivelDAOimple extends ConexionBD implements NivelDAO{

    @Override
    public List<NivelCuenta> getAll() throws Exception {
        List<NivelCuenta> lista = null;
        try {
            this.conectar();
            
            PreparedStatement ps = this.conn.prepareStatement("SELECT * FROM nivel_cuenta");
            ResultSet rs = ps.executeQuery();
            
            lista = new ArrayList<NivelCuenta>();
            while (rs.next()){
                NivelCuenta niv =  new NivelCuenta();
                
                niv.setId_nivcuenta(rs.getInt("id_nivcuenta"));
                niv.setNombre_nivel(rs.getString("nombre_nivel"));

                lista.add(niv);
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
