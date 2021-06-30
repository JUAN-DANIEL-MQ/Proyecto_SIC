package com.emergentes.modelo;

public class NivelCuenta {
    private int id_nivcuenta;
    private String nombre_nivel;

    public NivelCuenta() {
    }

    public int getId_nivcuenta() {
        return id_nivcuenta;
    }

    public void setId_nivcuenta(int id_nivcuenta) {
        this.id_nivcuenta = id_nivcuenta;
    }

    public String getNombre_nivel() {
        return nombre_nivel;
    }

    public void setNombre_nivel(String nombre_nivel) {
        this.nombre_nivel = nombre_nivel;
    }

    @Override
    public String toString() {
        return "NivelCuenta{" + "id_nivcuenta=" + id_nivcuenta + ", nombre_nivel=" + nombre_nivel + '}';
    }
    
}
