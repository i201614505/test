package listaIcon;

import java.awt.Component;
import java.awt.Font;
import java.util.Hashtable;

import javax.swing.ImageIcon;
import javax.swing.JLabel;
import javax.swing.JList;
import javax.swing.ListCellRenderer;

public class RenderLista extends JLabel implements ListCellRenderer {

	Hashtable<Object, ImageIcon> elementos;
	ImageIcon icononulo = new ImageIcon(System.getProperty("user.dir") + "/images.jpg");

	public RenderLista() {
		elementos = new Hashtable<Object, ImageIcon>();
		ImageIcon icono1 = new ImageIcon(System.getProperty("user.dir") + "/images.jpg");
		ImageIcon icono2 = new ImageIcon(System.getProperty("user.dir") + "/images.jpg");
		ImageIcon icono3 = new ImageIcon(System.getProperty("user.dir") + "/images.jpg");
		elementos.put("Elemento 1", icono1);
		elementos.put("Elemento 2", icono2);
		elementos.put("Elemento 3", icono3);
	}

	@Override
	public Component getListCellRendererComponent(JList list, Object value, int index, boolean isSelected,
			boolean cellHasFocus) {
		if (elementos.get(value) != null) {
			setIcon(elementos.get(value));
			setText("" + value);
			if (isSelected) {
				setFont(new Font("Verdana", Font.BOLD, 16));
			} else {
				setFont(null);
			}
		} else {
			setIcon(icononulo);
			setText("" + value);
			if (isSelected) {
				setFont(new Font("Verdana", Font.BOLD, 16));
			} else {
				setFont(null);
			}
		}
		return this;
	}
}