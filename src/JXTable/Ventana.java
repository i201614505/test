/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package JXTable;

import com.jktoolkit.table.JKColumn;
import com.jktoolkit.table.JKPopupMenuItem;
import com.jktoolkit.table.JKTable;
import com.jktoolkit.table.datasource.impl.JKDataSourceList;
import java.awt.event.KeyEvent;
import java.util.ArrayList;
import java.util.List;
import javax.swing.JFrame;
import javax.swing.JOptionPane;

/**
 *
 * @author Jack
 */
public class Ventana extends JFrame{

    public Ventana() {
        setSize(500, 500);
        setDefaultCloseOperation(EXIT_ON_CLOSE);
        setLocationRelativeTo(null);

        List<Persona> personas = new ArrayList<Persona>();
        personas.add(new Persona("Carlos Alberto", "Marin Lopez", new Ciudad("Bogota")));
        personas.add(new Persona("Juan Esteban", "Rodriguez Velasquez", new Ciudad("Medellin")));
        personas.add(new Persona("Luisa Fernanda", "Ortiz Zapata", new Ciudad("Cartagena")));
        personas.add(new Persona("Carlos Alberto", "Marin Lopez", new Ciudad("Bogota")));
        personas.add(new Persona("Juan Esteban", "Rodriguez Velasquez", new Ciudad("Medellin")));
        personas.add(new Persona("Luisa Fernanda", "Ortiz Zapata", new Ciudad("Cartagena")));
        personas.add(new Persona("Carlos Alberto", "Marin Lopez", new Ciudad("Bogota")));
        personas.add(new Persona("Juan Esteban", "Rodriguez Velasquez", new Ciudad("Medellin")));
        personas.add(new Persona("Luisa Fernanda", "Ortiz Zapata", new Ciudad("Cartagena")));
        personas.add(new Persona("Carlos Alberto", "Marin Lopez", new Ciudad("Bogota")));
        personas.add(new Persona("Juan Esteban", "Rodriguez Velasquez", new Ciudad("Medellin")));
        personas.add(new Persona("Luisa Fernanda", "Ortiz Zapata", new Ciudad("Cartagena")));
        personas.add(new Persona("Carlos Alberto", "Marin Lopez", new Ciudad("Bogota")));
        personas.add(new Persona("Juan Esteban", "Rodriguez Velasquez", new Ciudad("Medellin")));
        personas.add(new Persona("Luisa Fernanda", "Ortiz Zapata", new Ciudad("Cartagena")));
        personas.add(new Persona("Carlos Alberto", "Marin Lopez", new Ciudad("Bogota")));
        personas.add(new Persona("Juan Esteban", "Rodriguez Velasquez", new Ciudad("Medellin")));
        personas.add(new Persona("Luisa Fernanda", "Ortiz Zapata", new Ciudad("Cartagena")));
        personas.add(new Persona("Carlos Alberto", "Marin Lopez", new Ciudad("Bogota")));
        personas.add(new Persona("Juan Esteban", "Rodriguez Velasquez", new Ciudad("Medellin")));
        personas.add(new Persona("Luisa Fernanda", "Ortiz Zapata", new Ciudad("Cartagena")));


        //Creamos el datasource con una lista de datos 
        JKDataSourceList<Persona> dataSource = new JKDataSourceList<Persona>(personas);

        //creamos el jktable y le pasamos el datasource que creamos anteriormente
        final JKTable<Persona> table = new JKTable<Persona>(dataSource);
        //agregamos las diferentes columnas a la tabla
        //los atributos son los mismos de la clase Persona
        table.addColumn(new JKColumn("Nombre", "nombre", true));
        table.addColumn(new JKColumn("Apellido", "apellido", true));
        table.addColumn(new JKColumn("Ciudad", "ciudad.nombre", true));

        //Le agregamos un menucontextual a la tabla
        table.addPopupMenuItem(new JKPopupMenuItem("Mostrar", KeyEvent.VK_ENTER, new Runnable() {
            @Override
            public void run() {
                List<Persona> selectedObjects = table.getSelectedObjects();
                for (int i = 0; i < selectedObjects.size(); i++) {
                    Persona persona = selectedObjects.get(i);
                    JOptionPane.showMessageDialog(null, "La persona seleccionada es " + persona.getNombre() + " " + persona.getApellido());
                }
            }
        }));
        
        //pintamos los cambios en la tabla
        table.draw();
        setContentPane(table);
    }
    
    
    public static void main(String args[]){
        new Ventana().setVisible(true);
    }
    
}
