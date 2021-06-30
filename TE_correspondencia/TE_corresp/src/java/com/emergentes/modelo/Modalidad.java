package com.emergentes.modelo;

public class Modalidad {
    private int id_modalidad;
    private String nombre_modalidad;

    public Modalidad() {
    }

    public int getId_modalidad() {
        return id_modalidad;
    }

    public void setId_modalidad(int id_modalidad) {
        this.id_modalidad = id_modalidad;
    }

    public String getNombre_modalidad() {
        return nombre_modalidad;
    }

    public void setNombre_modalidad(String nombre_modalidad) {
        this.nombre_modalidad = nombre_modalidad;
    }

    @Override
    public String toString() {
        return "Modalidad{" + "id_modalidad=" + id_modalidad + ", nombre_modalidad=" + nombre_modalidad + '}';
    }
    
    
}
