package com.emergentes.modelo;
import java.sql.Date;
public class Correspondencia {
    private int id_co;
    private int id_tipo_co;
    private int id_estudiante;
    private String referencia;
    private int nro_hojas;       
    private int nro_copias;
    private Date fecha_ingreso;
    private Date fecha_devolucion;
    private String observacion;

    public Correspondencia() {
    }

    public Date getFecha_devolucion() {
        return fecha_devolucion;
    }

    public void setFecha_devolucion(Date fecha_devolucion) {
        this.fecha_devolucion = fecha_devolucion;
    }

    public String getReferencia() {
        return referencia;
    }

    public void setReferencia(String referencia) {
        this.referencia = referencia;
    }
    
    public int getId_co() {
        return id_co;
    }

    public void setId_co(int id_co) {
        this.id_co = id_co;
    }

    public int getId_tipo_co() {
        return id_tipo_co;
    }

    public void setId_tipo_co(int id_tipo_co) {
        this.id_tipo_co = id_tipo_co;
    }

    public int getId_estudiante() {
        return id_estudiante;
    }

    public void setId_estudiante(int id_estudiante) {
        this.id_estudiante = id_estudiante;
    }

    public int getNro_hojas() {
        return nro_hojas;
    }

    public void setNro_hojas(int nro_hojas) {
        this.nro_hojas = nro_hojas;
    }

    public int getNro_copias() {
        return nro_copias;
    }

    public void setNro_copias(int nro_copias) {
        this.nro_copias = nro_copias;
    }

    public Date getFecha_ingreso() {
        return fecha_ingreso;
    }

    public void setFecha_ingreso(Date fecha_ingreso) {
        this.fecha_ingreso = fecha_ingreso;
    }

    public String getObservacion() {
        return observacion;
    }

    public void setObservacion(String observacion) {
        this.observacion = observacion;
    }

    @Override
    public String toString() {
        return "Correspondencia{" + "id_co=" + id_co + ", id_tipo_co=" + id_tipo_co + ", id_estudiante=" + id_estudiante + ", nro_hojas=" + nro_hojas + ", nro_copias=" + nro_copias + ", fecha_ingreso=" + fecha_ingreso + ", fecha_devolucion=" + fecha_devolucion + ", observacion=" + observacion + '}';
    }
        
}
