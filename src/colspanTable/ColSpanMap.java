package colspanTable;

import java.util.HashMap;

public interface ColSpanMap {
	
	/**
     * Indica si la celda [row,column] esta expandida
     * @param row celda logica de fila
     * @param column celda logica de columna
     * @return numero de columnas expandiodas por celda
     */
    int span(int row, int column);
 
    /**
     * Devuelve el indice de las celda visibles.
     * @param row celda logica de fila
     * @param column celda logica de columna
     * @return indice de la celda visible que cubre la celda logica
     */
    int visibleCell(int row, int column);
 
    /**
     * Establece el mapeo de filas/columnas con celdas expandidas y su posicion.
     * @param spanMap Mapa
     */
    void setSpanMap(HashMap< Integer, Integer > spanMap);

}
