package com.emergentes.modelo;

public class Accion {
    private int id_accion;
    private String nombre_accion;

    public Accion() {
    }

    public int getId_accion() {
        return id_accion;
    }

    public void setId_accion(int id_accion) {
        this.id_accion = id_accion;
    }

    public String getNombre_accion() {
        return nombre_accion;
    }

    public void setNombre_accion(String nombre_accion) {
        this.nombre_accion = nombre_accion;
    }

    @Override
    public String toString() {
        return "Accion{" + "id_accion=" + id_accion + ", nombre_accion=" + nombre_accion + '}';
    }

}
