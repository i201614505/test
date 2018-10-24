package LimpiarJtexfield;

import java.awt.Component;
import java.awt.Container;

import javax.swing.JPanel;
import javax.swing.JTextField;

public class Clear {

	public static void ClearJtexfield(JPanel panel) {
		for(int i = 0; panel.getComponents().length > i; i++){
			if(panel.getComponents()[i] instanceof JTextField){
                ((JTextField)panel.getComponents()[i]).setText("0.0");
            }
	    }
	}
	
	public void enableComponents(Container container, boolean enable) {
		Component[] components = container.getComponents();
		for (Component component : components) {
			component.setEnabled(enable);
			if (component instanceof Container) {
				enableComponents((Container) component, enable);
			}
		}
	}

}
