package com.emergentes.modelo;
import java.sql.Date;
public class ListaCo {
       private int id_co;
       private String tipo_co;
       private String ref;
       private int hojas;
       private int copias;
       private Date fechares;
       private Date fechaDevol;
       private String observacion;

    public ListaCo() {
    }

    public int getId_co() {
        return id_co;
    }

    public void setId_co(int id_co) {
        this.id_co = id_co;
    }

    public String getTipo_co() {
        return tipo_co;
    }

    public void setTipo_co(String tipo_co) {
        this.tipo_co = tipo_co;
    }

    public String getRef() {
        return ref;
    }

    public void setRef(String ref) {
        this.ref = ref;
    }

    public int getHojas() {
        return hojas;
    }

    public void setHojas(int hojas) {
        this.hojas = hojas;
    }

    public int getCopias() {
        return copias;
    }

    public void setCopias(int copias) {
        this.copias = copias;
    }

    public Date getFechares() {
        return fechares;
    }

    public void setFechares(Date fechares) {
        this.fechares = fechares;
    }

    public Date getFechaDevol() {
        return fechaDevol;
    }

    public void setFechaDevol(Date fechaDevol) {
        this.fechaDevol = fechaDevol;
    }

    public String getObservacion() {
        return observacion;
    }

    public void setObservacion(String observacion) {
        this.observacion = observacion;
    }

    @Override
    public String toString() {
        return "ListaCo{" + "id_co=" + id_co + ", tipo_co=" + tipo_co + ", ref=" + ref + ", hojas=" + hojas + ", copias=" + copias + ", fechares=" + fechares + ", fechaDevol=" + fechaDevol + ", observacion=" + observacion + '}';
    }
      
}
