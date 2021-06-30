package com.emergentes.modelo;

public class Cargo {
    private int id_cargo;
    private String nombre_cargo;

    public Cargo() {
    }

    public int getId_cargo() {
        return id_cargo;
    }

    public void setId_cargo(int id_cargo) {
        this.id_cargo = id_cargo;
    }

    public String getNombre_cargo() {
        return nombre_cargo;
    }

    public void setNombre_cargo(String nombre_cargo) {
        this.nombre_cargo = nombre_cargo;
    }

    @Override
    public String toString() {
        return "Cargo{" + "id_cargo=" + id_cargo + ", nombre_cargo=" + nombre_cargo + '}';
    }
    
    
}
