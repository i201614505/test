package httpPost;

public class Usuario {
	
	//GO
	private String id;
	private String usu;
	private String pass;
	//END
	
	public Usuario() {
		super();
	}

	public Usuario(String id, String usu, String pass) {
		super();
		this.id = id;
		this.usu = usu;
		this.pass = pass;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getUsu() {
		return usu;
	}

	public void setUsu(String usu) {
		this.usu = usu;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", usu=" + usu + ", pass=" + pass + "]";
	}

}
