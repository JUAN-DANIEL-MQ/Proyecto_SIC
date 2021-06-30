package com.emergentes.dao;

import com.emergentes.modelo.ListaTodos;
import com.emergentes.util.ConexionBD;
import java.util.List;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class ListaTodoDAOimple extends ConexionBD implements ListaTodoDAO{

    @Override
    public List<ListaTodos> getAll() throws Exception {
        List<ListaTodos> lista = null;
        try {
            this.conectar();
            
            String sql = "SELECT c.id_co, " ;
                 sql +=   "CONCAT(u.nombre,' ',u.ap_paterno,' ',u.ap_materno) AS 'tip_est', ";
                   sql += "CONCAT(ufu.nombre,' ',ufu.ap_paterno,' ', ufu.ap_materno) AS 'tip_fun', ";
                   sql += "c.nro_hojas, c.nro_copias, tc.nombre_tipo_co AS 'tip_cor', ";
                   sql += "a.nombre_accion as 'accion', c.fecha_ingreso AS 'fecha_ingre', ";
                   sql += "c.observacion, c.referencia " ;
                   sql += "FROM correspondencia c ";
                   sql += "INNER JOIN derivacion d ON c.id_co = d.id_co " ;
                   sql += "INNER JOIN usuario u ON c.id_estudiante = u.ci " ;
                   sql += "INNER JOIN usuario ufu ON d.id_funcionario = ufu.ci " ;
                   sql += "INNER JOIN tipo_correspondencia tc ON c.id_tipo_co = tc.id_tipo_co " ;
                   sql += "INNER JOIN modalidad m ON u.id_modingreso = m.id_modalidad " ;
                   sql += "INNER JOIN accion a ON d.id_accion = a.id_accion " ;
                   sql += "ORDER BY c.fecha_ingreso DESC";
            
            
            PreparedStatement ps = this.conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            
            
            
            lista = new ArrayList<ListaTodos>();
            while (rs.next()){
                ListaTodos lt =  new ListaTodos();
                
                lt.setId_co(rs.getInt("id_co"));
                lt.setTip_est(rs.getString("tip_est"));
                lt.setTip_fun(rs.getString("tip_fun"));
                lt.setNro_hojas(rs.getInt("nro_hojas"));
                lt.setNro_copias(rs.getInt("nro_copias"));
                lt.setTip_cor(rs.getString("tip_cor"));
                lt.setAccion(rs.getString("accion"));
                lt.setFecha_ingre(rs.getDate("fecha_ingre"));
                lt.setObsevacion(rs.getString("observacion"));
                lt.setReferencia(rs.getString("referencia"));
                
                
                lista.add(lt);
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
