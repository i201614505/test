package colspanTable;

import java.util.HashMap;

class TableColSpanMap implements ColSpanMap {
	 
    /** Columnas a expandir por celda. */
    private static final int CELLS_TO_SPAN = 5;
 
    /** Mapeo de las celdas a expandir. */
    private HashMap< Integer, Integer > spanMap;
 
    @Override
    public int span(int row, int column) {
        if (spanMap != null && spanMap.containsKey(row)) {
            if (spanMap.get(row) == column) {
                return CELLS_TO_SPAN;
            }
        }
        return 1;
    }
 
    @Override
    public int visibleCell(int row, int column) {
        if (spanMap != null && spanMap.containsKey(row)) {
            if (column >= spanMap.get(row) && column < spanMap.get(row) + CELLS_TO_SPAN) {
                return spanMap.get(row);
            }
        }
        return column;
    }
 
    @Override
    public void setSpanMap(HashMap< Integer, Integer > spanMap) {
        this.spanMap = spanMap;
    }
}