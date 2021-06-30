package com.emergentes.dao;

import com.emergentes.modelo.Correspondencia;
import com.emergentes.util.ConexionBD;
import java.util.List;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class CorrespondenciaImple extends ConexionBD implements CorrespondenciaDAO {

    @Override
    public void insert(Correspondencia correspondencia) throws Exception {
        try {
            this.conectar();
            String sql = "INSERT INTO correspondencia (id_tipo_co, id_estudiante, referencia,";
            sql += " nro_hojas, nro_copias, fecha_ingreso, fecha_devolucion, observacion) ";
            sql += "values (?,?,?,?,?,?,?,?)";
            
            PreparedStatement ps = this.conn.prepareStatement(sql);
            ps.setInt(1, correspondencia.getId_tipo_co());
            ps.setInt(2, correspondencia.getId_estudiante());
            ps.setString(3, correspondencia.getReferencia());
            ps.setInt(4, correspondencia.getNro_hojas());
            ps.setInt(5, correspondencia.getNro_copias());
            ps.setDate(6, correspondencia.getFecha_ingreso());
            ps.setDate(7, correspondencia.getFecha_devolucion());
            ps.setString(8, correspondencia.getObservacion());
            
            ps.executeUpdate();
            
        } catch (Exception e) {
            throw e;
        } finally {
            this.desconectar();
        }
    }

    @Override
    public void update(Correspondencia correspondencia) throws Exception {
        try {
            this.conectar();
            String sql = "UPDATE correspondencia SET ";
                   sql += "id_tipo_co = ?, id_estudiante = ?, referencia = ?, nro_hojas = ?, nro_copias = ?, ";
                   sql += "fecha_ingreso = ?, fecha_devolucion = ?, observacion = ? where id_co = ?";
            
            PreparedStatement ps = this.conn.prepareStatement(sql);
            
            
            ps.setInt(1, correspondencia.getId_tipo_co());
            ps.setInt(2, correspondencia.getId_estudiante());
            ps.setString(3, correspondencia.getReferencia());
            ps.setInt(4, correspondencia.getNro_hojas());
            ps.setInt(5, correspondencia.getNro_copias());
            ps.setDate(6, correspondencia.getFecha_ingreso());
            ps.setDate(7, correspondencia.getFecha_devolucion());
            ps.setString(8, correspondencia.getObservacion());
            ps.setInt(9, correspondencia.getId_co());
            
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
            PreparedStatement ps = this.conn.prepareStatement("DELETE FROM correspondencia WHERE id_co = ?");
            ps.setInt(1,id);
            ps.executeUpdate();
        } catch (Exception e) {
            throw e;
        } finally {
            this.desconectar();
        }
    }

    @Override
    public Correspondencia getById(int id) throws Exception {
       Correspondencia cor = new Correspondencia();
        try {
            this.conectar();
            
            PreparedStatement ps = this.conn.prepareStatement("SELECT * FROM correspondencia WHERE id_co = ?");
            ps.setInt(1,id);
            
            ResultSet rs = ps.executeQuery();
            
            if (rs.next()){
                cor.setId_co(rs.getInt("id_co"));
                cor.setId_tipo_co(rs.getInt("id_tipo_co"));
                cor.setId_estudiante(rs.getInt("id_estudiante"));
                cor.setReferencia(rs.getString("referencia"));
                cor.setNro_hojas(rs.getInt("nro_hojas"));
                cor.setNro_copias(rs.getInt("nro_copias"));
                cor.setFecha_ingreso(rs.getDate("fecha_ingreso"));
                cor.setFecha_devolucion(rs.getDate("fecha_devolucion"));
                cor.setObservacion(rs.getString("observacion"));
                
            }
            
        } catch (Exception e) {
            throw e;
        } finally {
            this.desconectar();
        }
        return cor;
    }

    @Override
    public List<Correspondencia> getAll(int id) throws Exception {
        List<Correspondencia> lista = null;
        try {
            this.conectar();
            
            PreparedStatement ps = this.conn.prepareStatement("SELECT * FROM correspondencia where id_estudiante = ?");
            ps.setInt(1,id);
            ResultSet rs = ps.executeQuery();
            
            lista = new ArrayList<Correspondencia>();
            while (rs.next()){
                Correspondencia cor =  new Correspondencia();
                
                cor.setId_co(rs.getInt("id_co"));
                cor.setId_tipo_co(rs.getInt("id_tipo_co"));
                cor.setId_estudiante(rs.getInt("id_estudiante"));
                cor.setReferencia(rs.getString("referencia"));
                cor.setNro_hojas(rs.getInt("nro_hojas"));
                cor.setNro_copias(rs.getInt("nro_copias"));
                cor.setFecha_ingreso(rs.getDate("fecha_ingreso"));
                cor.setFecha_devolucion(rs.getDate("fecha_devolucion"));
                cor.setObservacion(rs.getString("observacion"));
                
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
    
    @Override
    public List<Correspondencia> getAllD() throws Exception {
        List<Correspondencia> lista = null;
        try {
            this.conectar();
            
            PreparedStatement ps = this.conn.prepareStatement("SELECT * FROM correspondencia ");
            ResultSet rs = ps.executeQuery();
            
            lista = new ArrayList<Correspondencia>();
            while (rs.next()){
                Correspondencia cor =  new Correspondencia();
                
                cor.setId_co(rs.getInt("id_co"));
                cor.setId_tipo_co(rs.getInt("id_tipo_co"));
                cor.setId_estudiante(rs.getInt("id_estudiante"));
                cor.setReferencia(rs.getString("referencia"));
                cor.setNro_hojas(rs.getInt("nro_hojas"));
                cor.setNro_copias(rs.getInt("nro_copias"));
                cor.setFecha_ingreso(rs.getDate("fecha_ingreso"));
                cor.setFecha_devolucion(rs.getDate("fecha_devolucion"));
                cor.setObservacion(rs.getString("observacion"));
                
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
