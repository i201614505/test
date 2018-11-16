/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package JXTable;

/**
 *
 * @author jack
 */
public class Persona {
    
    private String nombre;
    
    private String apellido;
    
    private Ciudad ciudad;

    public Persona(String nombre, String apellido, Ciudad ciudad) {
        this.nombre = nombre;
        this.apellido = apellido;
        this.ciudad = ciudad;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public Ciudad getCiudad() {
        return ciudad;
    }

    public void setCiudad(Ciudad ciudad) {
        this.ciudad = ciudad;
    }
    
    
    
}
