package Util;

public class DateUser {

	private static String USER = "";
	private static String PASS = "";

	public DateUser(String user, String pass) {
		this.USER = user;
		this.PASS = pass;
	}

	public static String getUSER() {
		return USER;
	}

	public static void setUSER(String uSER) {
		USER = uSER;
	}

	public static String getPASS() {
		return PASS;
	}

	public static void setPASS(String pASS) {
		PASS = pASS;
	}

}
