package com.emergentes.dao;

import com.emergentes.modelo.Cargo;
import com.emergentes.util.ConexionBD;
import java.util.List;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class CargoDAOimple extends ConexionBD implements CargoDAO{

    @Override
    public List<Cargo> getAll() throws Exception {
        List<Cargo> lista = null;
        try {
            this.conectar();
            
            PreparedStatement ps = this.conn.prepareStatement("SELECT * FROM cargo");
            ResultSet rs = ps.executeQuery();
            
            lista = new ArrayList<Cargo>();
            while (rs.next()){
                Cargo car =  new Cargo();
                
                car.setId_cargo(rs.getInt("id_cargo"));
                car.setNombre_cargo(rs.getString("nombre_cargo"));

                lista.add(car);
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
