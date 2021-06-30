package com.emergentes.modelo;
import java.sql.Date;
public class Derivacion {
    private int id_derivacion;
    private int id_accion;
    private int id_co;
    private int id_funcionario;
    private Date fecha_recepcion;

    public Derivacion() {
    }

    public int getId_derivacion() {
        return id_derivacion;
    }

    public void setId_derivacion(int id_derivacion) {
        this.id_derivacion = id_derivacion;
    }


    public int getId_accion() {
        return id_accion;
    }

    public void setId_accion(int id_accion) {
        this.id_accion = id_accion;
    }

    public int getId_co() {
        return id_co;
    }

    public void setId_co(int id_co) {
        this.id_co = id_co;
    }

    public int getId_funcionario() {
        return id_funcionario;
    }

    public void setId_funcionario(int id_funcionario) {
        this.id_funcionario = id_funcionario;
    }

    public Date getFecha_recepcion() {
        return fecha_recepcion;
    }

    public void setFecha_recepcion(Date fecha_recepcion) {
        this.fecha_recepcion = fecha_recepcion;
    }

    @Override
    public String toString() {
        return "Derivacion{" + "id_derivacion=" + id_derivacion + ", id_accion=" + id_accion + ", id_co=" + id_co + ", id_funcionario=" + id_funcionario + ", fecha_recepcion=" + fecha_recepcion + '}';
    }

}
