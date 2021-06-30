package com.emergentes.modelo;

public class UsuarioE {
    private int ci;
    private String ap_paterno;
    private String ap_materno;
    private String nombre;
    private int telefono; 
    private int id_modingreso;
    private String cargo;

    public UsuarioE() {
        this.telefono = 0;
        this.cargo = "Estudiante";
    }

    public int getCi() {
        return ci;
    }

    public void setCi(int ci) {
        this.ci = ci;
    }

    public String getAp_paterno() {
        return ap_paterno;
    }

    public void setAp_paterno(String ap_paterno) {
        this.ap_paterno = ap_paterno;
    }

    public String getAp_materno() {
        return ap_materno;
    }

    public void setAp_materno(String ap_materno) {
        this.ap_materno = ap_materno;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getTelefono() {
        return telefono;
    }

    public void setTelefono(int telefono) {
        this.telefono = telefono;
    }

    public int getId_modingreso() {
        return id_modingreso;
    }

    public void setId_modingreso(int id_modingreso) {
        this.id_modingreso = id_modingreso;
    }

    public String getCargo() {
        return cargo;
    }

    public void setCargo(String cargo) {
        this.cargo = cargo;
    }

    @Override
    public String toString() {
        return "UsuarioE{" + "ci=" + ci + ", ap_paterno=" + ap_paterno + ", ap_materno=" + ap_materno + ", nombre=" + nombre + ", telefono=" + telefono + ", id_modingreso=" + id_modingreso + ", cargo=" + cargo + '}';
    }

}
