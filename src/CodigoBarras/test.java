package CodigoBarras;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;

import javax.imageio.ImageIO;

import net.sourceforge.jbarcodebean.JBarcodeBean;
import net.sourceforge.jbarcodebean.model.Interleaved25;

public class test {

	public static void main(String[] args) {

		JBarcodeBean barcode = new JBarcodeBean();

        // nuestro tipo de codigo de barra
        barcode.setCodeType(new Interleaved25());
        //barcode.setCodeType(new Code39());

        // nuestro valor a codificar y algunas configuraciones mas
        barcode.setCode("46412134");
        barcode.setCheckDigit(false);
        barcode.setLabelPosition(0);
        //barcode.setBarcodeHeight(80);
        //barcode.setNarrowestBarWidth(2);

        BufferedImage bufferedImage = barcode.draw(new BufferedImage(100, 100, BufferedImage.TYPE_INT_RGB));

        // guardar en disco como png
        File file = new File("codebar.png");
        try {
			ImageIO.write(bufferedImage, "png", file);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
