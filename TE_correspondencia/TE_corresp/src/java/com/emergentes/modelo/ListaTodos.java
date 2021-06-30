package com.emergentes.modelo;

import java.sql.Date;

public class ListaTodos {
    private int id_co;
    private String tip_est;
    private String tip_fun;
    private int nro_hojas;
    private int nro_copias;
    private String tip_cor;
    private String accion;
    private Date fecha_ingre;
    private String Obsevacion;
    private String referencia;
    
    public ListaTodos() {
    }

    public int getId_co() {
        return id_co;
    }

    public void setId_co(int id_co) {
        this.id_co = id_co;
    }

    public String getTip_est() {
        return tip_est;
    }

    public void setTip_est(String tip_est) {
        this.tip_est = tip_est;
    }

    public String getTip_fun() {
        return tip_fun;
    }

    public void setTip_fun(String tip_fun) {
        this.tip_fun = tip_fun;
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

    public String getTip_cor() {
        return tip_cor;
    }

    public void setTip_cor(String tip_cor) {
        this.tip_cor = tip_cor;
    }

    public String getAccion() {
        return accion;
    }

    public void setAccion(String accion) {
        this.accion = accion;
    }

    public Date getFecha_ingre() {
        return fecha_ingre;
    }

    public void setFecha_ingre(Date fecha_ingre) {
        this.fecha_ingre = fecha_ingre;
    }

    public String getObsevacion() {
        return Obsevacion;
    }

    public void setObsevacion(String Obsevacion) {
        this.Obsevacion = Obsevacion;
    }

    public String getReferencia() {
        return referencia;
    }

    public void setReferencia(String referencia) {
        this.referencia = referencia;
    }

    @Override
    public String toString() {
        return "ListaTodos{" + "id_co=" + id_co + ", tip_est=" + tip_est + ", tip_fun=" + tip_fun + ", nro_hojas=" + nro_hojas + ", nro_copias=" + nro_copias + ", tip_cor=" + tip_cor + ", accion=" + accion + ", fecha_ingre=" + fecha_ingre + ", Obsevacion=" + Obsevacion + ", referencia=" + referencia + '}';
    }

    
    
}
