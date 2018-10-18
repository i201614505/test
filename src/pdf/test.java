package pdf;

import java.io.IOException;

import com.itextpdf.text.DocumentException;

public class test {

	public static void main(String[] args) {

		Imagen doc = new Imagen();
        
        try{
            // Creamos el documento Pdf
            doc.createPdf("documento.pdf");
            
        }catch(DocumentException ed)
        {
            System.err.println("Error al crear el documento Pdf");
        }
        catch(IOException ex)
        {
            System.err.println(ex +"Error General de Entrada/Salida");
        }
    }    
}

