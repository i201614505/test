package colspanTable;

import java.util.HashMap;

import javax.swing.JFrame;
import javax.swing.JScrollPane;
import javax.swing.table.DefaultTableModel;
import javax.swing.table.TableModel;
 
public class Test {
 
    private static void createAndShowGUI() {
        JFrame frame = new JFrame("Tabla con celdas expandidas");
 
        ColSpanMap m = new TableColSpanMap();
        HashMap< Integer, Integer > cellSpanMap = new HashMap<Integer, Integer>();
        // Aqui los indices [fila,columna] de las celdas que queremos expandir
        cellSpanMap.put(3, 3);
        cellSpanMap.put(4, 7);
        cellSpanMap.put(9, 5);
        m.setSpanMap(cellSpanMap);
        TableModel tm=new DefaultTableModel(15,20);
        SpanTable table = new SpanTable(m,tm);
 
        frame.getContentPane().add(new JScrollPane(table));
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setSize(500, 295);
        frame.setVisible(true);
    }
 
    public static void main(String[] args) {
 
        javax.swing.SwingUtilities.invokeLater(new Runnable() {
            public void run() {
                createAndShowGUI();
            }
        });
    }
}
