package ClaseEspecial;

import java.awt.EventQueue;
import java.util.List;

import javax.swing.JDialog;
import javax.swing.JScrollPane;
import javax.swing.JTable;
import javax.swing.table.DefaultTableModel;

public class test extends JDialog {
	private JScrollPane scrollPane;
	private JTable table;
	
	ModelksClass mc = new ModelksClass();

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
		setBounds(100, 100, 657, 485);
		getContentPane().setLayout(null);
		
		scrollPane = new JScrollPane();
		scrollPane.setBounds(10, 11, 621, 424);
		getContentPane().add(scrollPane);
		
		table = new JTable();
		table.setModel(new DefaultTableModel(
			new Object[][] {
			},
			new String[] {
				"New column", "New column", "New column", "New column", "New column"
			}
		));
		scrollPane.setViewportView(table);
		
		Listar();

	}
	
	private void Listar(){
		
		List<ksClass> date = mc.listksClass("select a.nom, a.dir, dp.des, a.ruc, a.tel from aseguradora a inner join departamentoperu dp on dp.id = a.dep", 5);
		DefaultTableModel dtm = (DefaultTableModel) table.getModel();
		dtm.setRowCount(0);

		for (ksClass a : date) {
				Object[] lista = { 
						a.getObj().get(0),
						a.getObj().get(1),
						a.getObj().get(2),
						a.getObj().get(3),
						a.getObj().get(4)
				};
			dtm.addRow(lista);
		}
		dtm.fireTableDataChanged();
		
	}
}
