package ClaseEspecial;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Util.ConnectionSQL;

public class ModelksClass {
	
	public ModelksClass(){}
	
	public List<ksClass> listksClass(String scrip, int cant){

		List<ksClass> dat = new ArrayList<>();

		Connection con = null;
		PreparedStatement call = null;
		ResultSet rs = null;

		try{

			con = new ConnectionSQL().getCnx();
			String val = scrip;
			call = con.prepareCall(val);
			rs = call.executeQuery();

			ksClass obj;

			while(rs.next()){

				obj = new ksClass(cant);
				for(int i=1; i<=cant; i++) {
					obj.addObj(rs.getObject(i));
				}			

				dat.add(obj);

			}
		}catch(Exception e){
			e.printStackTrace();
		}finally {
			try{
				if(con != null)con.close();
				if(call != null)call.close();
				if(rs != null)rs.close();
			}catch(SQLException e){
				e.printStackTrace();
			}
		}
		return dat;
	}

}
