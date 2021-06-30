package com.emergentes.modelo;

public class Tipocor {
    private int id_tipo_co;
    private String nombre_tipo_co;

    public Tipocor() {
    }

    public int getId_tipo_co() {
        return id_tipo_co;
    }

    public void setId_tipo_co(int id_tipo_co) {
        this.id_tipo_co = id_tipo_co;
    }

    public String getNombre_tipo_co() {
        return nombre_tipo_co;
    }

    public void setNombre_tipo_co(String nombre_tipo_co) {
        this.nombre_tipo_co = nombre_tipo_co;
    }

    @Override
    public String toString() {
        return "Tipocor{" + "id_tipo_co=" + id_tipo_co + ", nombre_tipo_co=" + nombre_tipo_co + '}';
    }
    
    
}
