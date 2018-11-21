package listaIcon;

import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JScrollPane;
import javax.swing.JList;
import java.awt.event.ComponentListener;
import java.awt.event.ComponentEvent;

public class test extends JFrame implements ComponentListener {
	private JScrollPane scrollPane;
	private JList list;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					test frame = new test();
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the frame.
	 */
	public test() {
		addComponentListener(this);
		setBounds(100, 100, 532, 386);
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		getContentPane().setLayout(null);

		scrollPane = new JScrollPane();
		scrollPane.setBounds(10, 11, 496, 325);
		getContentPane().add(scrollPane);

		list = new JList();
		scrollPane.setViewportView(list);

	}
	
	public void componentHidden(ComponentEvent e) {
	}
	public void componentMoved(ComponentEvent e) {
	}
	public void componentResized(ComponentEvent e) {
	}
	public void componentShown(ComponentEvent e) {
		if (e.getSource() == this) {
			componentShownThis(e);
		}
	}
	protected void componentShownThis(ComponentEvent e) {
		
		Object datos[] = new Object[4];
		datos[0] = "Elemento 1";
		datos[1] = "Elemento 2";
		datos[2] = "Java Zone";
		datos[3] = "Elemento 3";
		
		list.setListData(datos);

		RenderLista rl = new RenderLista();

		list.setCellRenderer(rl);
	}
}
