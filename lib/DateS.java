package Class;

import java.text.DateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;

public class DateS {
	
	static Locale LOCALE_MX = new Locale("es", "MX");
	
	static String dt = DateFormat.getDateInstance(DateFormat.FULL, LOCALE_MX).format(new Date());

	public static String dateA(){
		return dt;
	}

}
