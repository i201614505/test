package LimpiarJtexfield;

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

}
