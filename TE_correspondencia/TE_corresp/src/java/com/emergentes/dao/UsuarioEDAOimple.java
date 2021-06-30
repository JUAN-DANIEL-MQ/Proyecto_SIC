package com.emergentes.dao;

import com.emergentes.modelo.UsuarioE;
import com.emergentes.util.ConexionBD;
import java.util.List;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class UsuarioEDAOimple extends ConexionBD implements UsuarioEDAO{

    @Override
    public void insert(UsuarioE usuarioe) throws Exception {
        try {
            this.conectar();
            String sql = "INSERT INTO usuario (ci, nombre, ap_paterno, ap_materno,";
            sql += " telefono,id_modingreso, cargo) ";
            sql += "values (?,?,?,?,?,?,?)";
            
            PreparedStatement ps = this.conn.prepareStatement(sql);
            ps.setInt(1, usuarioe.getCi());
            ps.setString(2, usuarioe.getNombre());
            ps.setString(3, usuarioe.getAp_paterno());
            ps.setString(4, usuarioe.getAp_materno());
            ps.setInt(5, usuarioe.getTelefono());
            ps.setInt(6, usuarioe.getId_modingreso());
            ps.setString(7, usuarioe.getCargo());
            
            ps.executeUpdate();
            
        } catch (Exception e) {
            throw e;
        } finally {
            this.desconectar();
        }
    }

    @Override
    public void update(UsuarioE usuarioe) throws Exception {
      try {
            this.conectar();
            PreparedStatement ps = this.conn.prepareStatement("UPDATE usuario SET ci = ?, nombre = ?, ap_paterno = ?, ap_materno = ?, telefono = ?, id_modingreso = ?, cargo = ? where ci = ?");
            ps.setInt(1, usuarioe.getCi());
            ps.setString(2, usuarioe.getNombre());
            ps.setString(3, usuarioe.getAp_paterno());
            ps.setString(4, usuarioe.getAp_materno());
            ps.setInt(5, usuarioe.getTelefono());
            ps.setInt(6, usuarioe.getId_modingreso());
            ps.setString(7, usuarioe.getCargo());
            ps.setInt(8, usuarioe.getCi());
            ps.executeUpdate();
        } catch (Exception e) {
            throw e;
        } finally {
            this.desconectar();
        }
    }

    @Override
    public void delete(int id) throws Exception {
         try {
            this.conectar();
            PreparedStatement ps = this.conn.prepareStatement("DELETE FROM usuario WHERE ci = ?");
            ps.setInt(1,id);
            ps.executeUpdate();
        } catch (Exception e) {
            throw e;
        } finally {
            this.desconectar();
        }
    }

    @Override
    public UsuarioE getById(int id) throws Exception {
       UsuarioE usu = new UsuarioE();
        try {
            this.conectar();
            
            PreparedStatement ps = this.conn.prepareStatement("SELECT * FROM usuario WHERE ci = ?");
            ps.setInt(1,id);
            
            ResultSet rs = ps.executeQuery();
            
            if (rs.next()){
                usu.setCi(rs.getInt("ci"));
                usu.setNombre(rs.getString("nombre"));
                usu.setAp_paterno(rs.getString("ap_paterno"));
                usu.setAp_materno(rs.getString("ap_materno"));
                usu.setTelefono(rs.getInt("telefono"));
                usu.setId_modingreso(rs.getInt("id_modingreso"));
                usu.setCargo(rs.getString("cargo"));
            }
            
        } catch (Exception e) {
            throw e;
        } finally {
            this.desconectar();
        }
        return usu;
    }

    @Override
    public List<UsuarioE> getAll() throws Exception {
       List<UsuarioE> lista = null;
        try {
            this.conectar();
            
            PreparedStatement ps = this.conn.prepareStatement("SELECT * FROM usuario");
            ResultSet rs = ps.executeQuery();
            
            lista = new ArrayList<UsuarioE>();
            while (rs.next()){
                UsuarioE usu =  new UsuarioE();
                
                usu.setCi(rs.getInt("ci"));
                usu.setNombre(rs.getString("nombre"));
                usu.setAp_paterno(rs.getString("ap_paterno"));
                usu.setAp_materno(rs.getString("ap_materno"));
                usu.setTelefono(rs.getInt("telefono"));
                usu.setId_modingreso(rs.getInt("id_modingreso"));
                usu.setCargo(rs.getString("cargo"));
                
                lista.add(usu);
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
