package com.emergentes.dao;

import com.emergentes.modelo.Cuenta;
import com.emergentes.util.ConexionBD;
import java.util.List;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class CuentaDAOimple extends ConexionBD implements CuentaDAO{

    @Override
    public void insert(Cuenta cuenta) throws Exception {
        try {
            this.conectar();
            String sql = "INSERT INTO cuenta (nombre_user, password, nivel_user, id_persona) values (?,?,?,?)";
            PreparedStatement ps = this.conn.prepareStatement(sql);

            ps.setString(1, cuenta.getNombre_user());
            ps.setString(2, cuenta.getPassword());
            ps.setInt(3, cuenta.getNivel_user());
            ps.setInt(4, cuenta.getId_persona());
            
            ps.executeUpdate();

        } catch (Exception e) {
            throw e;
        } finally {
            this.desconectar();
        }
    }

    @Override
    public void update(Cuenta cuenta) throws Exception {
       try {
            this.conectar();
            String sql = "UPDATE cuenta SET nombre_user = ?, password = ?, nivel_user = ?, id_persona = ? WHERE id_usuario = ?";
            PreparedStatement ps = this.conn.prepareStatement(sql);

            ps.setString(1, cuenta.getNombre_user());
            ps.setString(2, cuenta.getPassword());
            ps.setInt(3, cuenta.getNivel_user());
            ps.setInt(4, cuenta.getId_persona());
            ps.setInt(5, cuenta.getId_usuario());
            
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
            String sql = "DELETE FROM cuenta WHERE id_usuario = ?";
            PreparedStatement ps = this.conn.prepareStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();

        } catch (Exception e) {
            throw e;
        } finally {
            this.desconectar();
        }
    }

    @Override
    public Cuenta getById(int id) throws Exception {
       Cuenta c = new Cuenta();
        try {
            this.conectar();
            String sql = "SELECT * FROM cuenta WHERE id_usuario = ?";
            PreparedStatement ps = this.conn.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            
            if (rs.next()) {
                
                c.setId_usuario(rs.getInt("id_usuario"));
                c.setNombre_user(rs.getString("nombre_user"));
                c.setPassword(rs.getString("password"));
                c.setNivel_user(rs.getInt("nivel_user"));
                c.setId_persona(rs.getInt("id_persona"));
                
            }

        } catch (Exception e) {
            throw e;
        } finally {
            this.desconectar();
        }
        return c;
    }

    @Override
    public List<Cuenta> getAll() throws Exception {
       List<Cuenta> lista = null;
        try {
            this.conectar();
            String sql = "SELECT * FROM cuenta";
            
            PreparedStatement ps = this.conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            
            lista = new ArrayList<Cuenta>();
            
            while (rs.next()) {
                Cuenta c = new Cuenta();
                
                c.setId_usuario(rs.getInt("id_usuario"));
                c.setNombre_user(rs.getString("nombre_user"));
                c.setPassword(rs.getString("password"));
                c.setNivel_user(rs.getInt("nivel_user"));
                c.setId_persona(rs.getInt("id_persona"));
                
                lista.add(c);
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
