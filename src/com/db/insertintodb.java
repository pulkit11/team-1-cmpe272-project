
public class insertintodb
{
public boolean insertrate(String course, String easiness, String scope, String staff, String material, String message)
	{
		//JSONObject jo = new JSONObject();
		Document ratedoc = studentCouchDb.getDocument(course);
		//Object o=ratedoc.getJSONArray("comments");
		//Object o=ratedoc.getJSONObject("comments");
		//System.out.println("o is"+ o);
		//jo.put("user", message);
		Map<String , String> properties1 = new HashMap<String,String>();
		
		properties1.put("comments", message);
		properties1.put("easiness", easiness);
		properties1.put("scope", scope);
		properties1.put("staff", staff);
		properties1.put("material", material);
		
		ratedoc.putAll(properties1);
		
		studentCouchDb.saveDocument(ratedoc);
		
		return true;

	}


}