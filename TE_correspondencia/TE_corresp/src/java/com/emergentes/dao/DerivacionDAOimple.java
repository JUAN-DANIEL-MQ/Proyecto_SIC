package com.emergentes.dao;

import com.emergentes.modelo.Derivacion;
import com.emergentes.util.ConexionBD;
import java.util.List;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class DerivacionDAOimple extends ConexionBD implements DerivacionDAO{

    @Override
    public void insert(Derivacion derivacion) throws Exception {
       try {
            this.conectar();
            String sql = "INSERT INTO derivacion (id_accion, id_co, id_funcionario, fecha_recepcion) values (?,?,?,?)";
            PreparedStatement ps = this.conn.prepareStatement(sql);

            ps.setInt(1, derivacion.getId_accion());
            ps.setInt(2, derivacion.getId_co());
            ps.setInt(3, derivacion.getId_funcionario());
            ps.setDate(4, derivacion.getFecha_recepcion());
            
            ps.executeUpdate();

        } catch (Exception e) {
            throw e;
        } finally {
            this.desconectar();
        }
    }

    @Override
    public void update(Derivacion derivacion) throws Exception {
         try {
            this.conectar();
            String sql = "UPDATE derivacion SET id_accion = ?, id_co = ?, id_funcionario = ?, fecha_recepcion = ? WHERE id_derivacion = ?";
            PreparedStatement ps = this.conn.prepareStatement(sql);

            ps.setInt(1, derivacion.getId_accion());
            ps.setInt(2, derivacion.getId_co());
            ps.setInt(3, derivacion.getId_funcionario());
            ps.setDate(4, derivacion.getFecha_recepcion());
            ps.setInt(5, derivacion.getId_derivacion());
            
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
            String sql = "DELETE FROM derivacion WHERE id_derivacion = ?";
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
    public Derivacion getById(int id) throws Exception {
       Derivacion d = new Derivacion();
        try {
            this.conectar();
            String sql = "SELECT * FROM derivacion WHERE id_derivacion = ?";
            PreparedStatement ps = this.conn.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            
            if (rs.next()) {
                
                d.setId_derivacion(rs.getInt("id_derivacion"));
                d.setId_accion(rs.getInt("id_accion"));
                d.setId_co(rs.getInt("id_co"));
                d.setId_funcionario(rs.getInt("id_funcionario"));
                d.setFecha_recepcion(rs.getDate("fecha_recepcion"));
                
            }

        } catch (Exception e) {
            throw e;
        } finally {
            this.desconectar();
        }
        return d;
    }

    @Override
    public List<Derivacion> getAll() throws Exception {
        List<Derivacion> lista = null;
        try {
            this.conectar();
            String sql = "SELECT * FROM derivacion";
            
            PreparedStatement ps = this.conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            
            lista = new ArrayList<Derivacion>();
            
            while (rs.next()) {
                Derivacion d = new Derivacion();
                
                d.setId_derivacion(rs.getInt("id_derivacion"));
                d.setId_accion(rs.getInt("id_accion"));
                d.setId_co(rs.getInt("id_co"));
                d.setId_funcionario(rs.getInt("id_funcionario"));
                d.setFecha_recepcion(rs.getDate("fecha_recepcion"));
                
                lista.add(d);
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

    @Override
    public List<Derivacion> getAllD(int id) throws Exception {
       List<Derivacion> lista = null;
        try {
            this.conectar();
            
            
            String sql = "SELECT * FROM derivacion where id_funcionario = ?";
            
            PreparedStatement ps = this.conn.prepareStatement(sql);
            ps.setInt(1,id);
            ResultSet rs = ps.executeQuery();
            
            lista = new ArrayList<Derivacion>();
            
            while (rs.next()) {
                Derivacion d = new Derivacion();
                
                d.setId_derivacion(rs.getInt("id_derivacion"));
                d.setId_accion(rs.getInt("id_accion"));
                d.setId_co(rs.getInt("id_co"));
                d.setId_funcionario(rs.getInt("id_funcionario"));
                d.setFecha_recepcion(rs.getDate("fecha_recepcion"));
                
                lista.add(d);
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
