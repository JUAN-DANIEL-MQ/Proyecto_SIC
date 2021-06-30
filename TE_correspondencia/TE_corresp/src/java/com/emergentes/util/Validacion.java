package com.emergentes.util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Validacion extends ConexionBD {
    
    Connection con = this.conectar();
    PreparedStatement ps ;
    public boolean checkUser(String email, String password)
    {
        boolean resultado = false;
        try{
            String sql = "SELECT * FROM cuenta WHERE nombre_user = ? and password = ?";
            ps = con.prepareStatement(sql);

            ps.setString(1, email);
            ps.setString(2, password);

            ResultSet rs = ps.executeQuery();
            resultado = rs.next();
        }catch(SQLException ex){
            System.out.println(""
                + "Error al Ingresar");
        }
        
        return resultado;
    }
    public boolean checkAdmin(int ci)
    {
        boolean resultado = false;
        try{
            String cargo = "Administrador";
            String sql = "SELECT * FROM usuario WHERE cargo = ? and ci = ?";
            ps = con.prepareStatement(sql);
            
            ps.setString(1, cargo);
            ps.setInt(2, ci);
            

            ResultSet rs = ps.executeQuery();
            resultado = rs.next();
        }catch(SQLException ex){
            System.out.println(""
                + "Error al Ingresar");
        }
        
        return resultado;
    }
    
    
}
