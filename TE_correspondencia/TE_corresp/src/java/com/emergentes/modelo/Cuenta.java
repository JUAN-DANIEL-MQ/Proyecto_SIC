package com.emergentes.modelo;

public class Cuenta {
    private int id_usuario;
    private String nombre_user;
    private String password;
    private int nivel_user;
    private int id_persona;

    public Cuenta() {
    }

    public int getId_usuario() {
        return id_usuario;
    }

    public void setId_usuario(int id_usuario) {
        this.id_usuario = id_usuario;
    }

    public String getNombre_user() {
        return nombre_user;
    }

    public void setNombre_user(String nombre_user) {
        this.nombre_user = nombre_user;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getNivel_user() {
        return nivel_user;
    }

    public void setNivel_user(int nivel_user) {
        this.nivel_user = nivel_user;
    }

    public int getId_persona() {
        return id_persona;
    }

    public void setId_persona(int id_persona) {
        this.id_persona = id_persona;
    }

    @Override
    public String toString() {
        return "Cuenta{" + "id_usuario=" + id_usuario + ", nombre_user=" + nombre_user + ", password=" + password + ", nivel_user=" + nivel_user + ", id_persona=" + id_persona + '}';
    }
    
}
