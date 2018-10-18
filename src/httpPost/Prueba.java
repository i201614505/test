package httpPost;

import java.io.IOException;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

public class Prueba {

public static void main(String[] args) throws IOException {
	
	PeticionPost post = new PeticionPost ("https://misterio-deluna.000webhostapp.com/consultaUsu.php?id=99999999");
	//post.add("id", "99999999");
	//post.add("ruc", "10464121345");
	String respuesta = post.getRespueta();
	
	JsonParser parser = new JsonParser();

    // Obtain Array
    JsonArray gsonArr = parser.parse(respuesta).getAsJsonArray();

    // for each element of array
    for (JsonElement obj : gsonArr) {

        // Object of array
        JsonObject gsonObj = obj.getAsJsonObject();

        // Primitives elements of object
        String dorsal = gsonObj.get("id").getAsString();
        String name = gsonObj.get("usu").getAsString();
        String team = gsonObj.get("pass").getAsString();

        // List of primitive elements
       /* JsonArray demarcation = gsonObj.get("demarcation").getAsJsonArray();
        List listDemarcation = new ArrayList();
        for (JsonElement demarc : demarcation) {
            listDemarcation.add(demarc.getAsString());
        }*/

        // Object Constructor
        Usuario iniesta = new Usuario(dorsal, name, team);
        System.out.println(iniesta.getPass());
	
	//String [] myArray = {"JavaFX", "HBase", "JOGL", "WebGL"};
    
    //JSONArray jsArray = new JSONArray();

	//String jsonArrayString = "[\"Russian\",\"English\",\"French\"]";
	/*Gson googleJson = new Gson();
	Usuario javaArrayListFromGSON = googleJson.fromJson(respuesta, Usuario.class);
	 
	System.out.println(javaArrayListFromGSON.getPass());*/
   
   /*String[] array = new String[respuesta.length()];
   for (int i = 0; i < respuesta.length(); i++) {
      array[i] = (String)jsArray.get(i);
   }
   System.out.println("Contents of the array :: "+ array[1]);*/
	
	
	/*JsonParserFactory factory=JsonParserFactory.getInstance();
	JSONParser parser=factory.newJsonParser();
	Map jsonMap = parser.parseJson(respuesta);*/
	
	//System.out.println(list.get(0).getBytes("usu"));
	
	
	//System.out.println(jsonMap.get("pass"));
	
	/*JSONObject json = new JSONObject();
	JSONArray arrayJSON = json.getJSONArray(respuesta);
	
	int size = arrayJSON.size();
    ArrayList<JSONObject> arrays = new ArrayList<JSONObject>();
    for (int i = 0; i < size; i++) {
        JSONObject another_json_object = arrayJSON.getJSONObject(i);
            //Blah blah blah...
            arrays.add(another_json_object);
    }

    //Finally
    JSONObject[] jsons = new JSONObject[arrays.size()];
    arrays.toArray(jsons);
	*/
	}
	}
}