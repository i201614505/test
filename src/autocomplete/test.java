package autocomplete;

import java.awt.EventQueue;

import javax.swing.JDialog;
import javax.swing.JTextField;

import com.mxrck.autocompleter.TextAutoCompleter;
import javax.swing.JButton;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;

public class test extends JDialog implements ActionListener {
	private JTextField txt_texto;
	private JButton btnPrint;
	private TextAutoCompleter auto;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					test dialog = new test();
					dialog.setDefaultCloseOperation(JDialog.DISPOSE_ON_CLOSE);
					dialog.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the dialog.
	 */
	public test() {
		setBounds(100, 100, 653, 426);
		getContentPane().setLayout(null);

		txt_texto = new JTextField();
		txt_texto.setBounds(118, 131, 423, 31);
		getContentPane().add(txt_texto);
		txt_texto.setColumns(10);

		auto = new TextAutoCompleter(txt_texto);
		
		btnPrint = new JButton("print");
		btnPrint.addActionListener(this);
		btnPrint.setBounds(280, 173, 89, 32);
		getContentPane().add(btnPrint);
		auto.addItem("sede");
		auto.addItem("dni");
		auto.addItem("nombre");
		auto.addItem("apellido");
		auto.addItem("direccion");
		auto.addItem("fecNac");
		auto.addItem("sexo");
		auto.addItem("pais");
		auto.addItem("depar");
		auto.addItem("provincia");
		auto.addItem("cel");
		auto.addItem("tel");
		auto.addItem("grupSan");

		auto.setMode(-1);
		auto.setCaseSensitive(false);

	}
	public void actionPerformed(ActionEvent arg0) {
		if (arg0.getSource() == btnPrint) {
			actionPerformedBtnPrint(arg0);
		}
	}
	protected void actionPerformedBtnPrint(ActionEvent arg0) {
		System.out.println(auto.getItemSelected());
	}
}
