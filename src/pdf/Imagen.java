package pdf;

import java.awt.Font;
import java.io.FileOutputStream;
import java.io.IOException;

import com.itextpdf.awt.geom.Dimension;
import com.itextpdf.awt.geom.Dimension2D;
import com.itextpdf.awt.geom.Rectangle;
import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Element;
import com.itextpdf.text.Font.FontFamily;
import com.itextpdf.text.Image;
import com.itextpdf.text.PageSize;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.BaseFont;
import com.itextpdf.text.pdf.PdfWriter;

public class Imagen {
    
    /**
     * Crea un documento con encabezado y conteo de
     * paginas, para este ejemplo se crean 100 paginas
     * @param filename Nombre del archivo
     */
	public void createPdf(String filename) throws IOException, DocumentException{  
		
		//Document document = new Document(PageSize.LETTER , 36, 36, 54, 36);
		Document document = new Document(PageSize._11X17 , 200, 200, 200, 200);
        Paragraph parrafo, parrafo2, parrafo3;
        
        Image imagen1 = Image.getInstance("images.jpg"); 
        imagen1.scaleToFit(120.0f, 200.0f);
        Image imagen2 = Image.getInstance("codebar.png"); 
        
        Rectangle fondo = new Rectangle(120, 240);
        //fondo.setSize(120, 220);
        
        PdfWriter.getInstance(document, new FileOutputStream("Image.pdf"));

        document.open();
        
        //Creamos una cantidad significativa de paginas para probar el encabezado
        parrafo = new Paragraph("SOSCLI - PLUS", new com.itextpdf.text.Font(FontFamily.COURIER , 24, Font.BOLD, new BaseColor(0, 168, 192)));
        parrafo.setAlignment(Element.ALIGN_CENTER);

        imagen1.setAlignment(Element.ALIGN_CENTER);
        imagen2.setAlignment(Element.ALIGN_CENTER);
        

        document.add(parrafo);
        document.add(imagen1);
        document.add(imagen2);
        document.add((Element) fondo);
        
       /* document.newPage();
        parrafo2 = new Paragraph("En esta pagina estamos usando posicionamiento absoluto, por lo que el texto queda encima de la imagen1");
        
        imagen1.setAbsolutePosition(150f, 650f);
        document.add(imagen1);
        document.add(parrafo2);    
        
        document.newPage();
        parrafo3 = new Paragraph("Aqui podemos observar el origen del sistema de cordenadas que iText usa para los posicionamientos absolutos");
        imagen1.setAbsolutePosition(0f, 0f);

        document.add(imagen1);
        document.add(parrafo3); */  
        
        document.close();        
    }
  
}