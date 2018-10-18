package ArrayJS;

import java.util.Arrays;

import javax.script.ScriptEngine;
import javax.script.ScriptEngineManager;
import javax.script.ScriptException;

public class test {

	public static void main(String[] args) {
		
		ScriptEngine js = new ScriptEngineManager().getEngineByName("JavaScript");
		String ss[] = null;
		try {
			ss = (String[]) js.eval(
			    "https://misterio-deluna.000webhostapp.com/consultaUsu.php?id=99999999");
		} catch (ScriptException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println(Arrays.toString(ss));
	}

}
