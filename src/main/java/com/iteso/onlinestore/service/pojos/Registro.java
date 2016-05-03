package com.iteso.onlinestore.service.pojos;

/**
 * Created by luis_ on 03/05/2016.
 */
public class Registro {
    private String nombre;
    private String apellido;
    private String email;

    public Registro(){}
    public Registro(String nombre, String apellido, String email){
        this.nombre=nombre;
        this.apellido=apellido;
        this.email=email;
    }
    public String getApellido() {
        return apellido;
    }
    public String getEmail() {
        return email;
    }
    public String getNombre() {
        return nombre;
    }
    public void setApellido(String apellido) {
        this.apellido = apellido;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
}
