package ClaseEspecial;

import java.util.ArrayList;
import java.util.List;

public class ksClass {

	private List<Object> obj;
	
	public ksClass(int cant) {
		super();
		this.obj = new ArrayList<>(cant);
	}
	
	public void addObj(Object val) {
		obj.add(val);
	}

	public List<Object> getObj() {
		return obj;
	}

}
