package com.db;

import java.util.HashMap;
import java.util.List;
import java.util.Map;



import net.sf.json.JSONObject;

import com.fourspaces.couchdb.Database;
import com.fourspaces.couchdb.Document;
import com.fourspaces.couchdb.Session;
import com.fourspaces.couchdb.ViewResults;

public class connection 

{
	Object id1;
	
	
	Document newdoc;
	String ip2;
	Session dbSession;
		Database studentCouchDb; 
		Document d;
		ViewResults couchViewResults;
		List<Document> studentDocuments;
		String name;

	public connection()
	{
		ip2="54.186.84.76";
		Session dbSession = new Session(ip2, 5984);
		
		studentCouchDb = dbSession.getDatabase("university");
		
			couchViewResults = studentCouchDb.getAllDocuments();
		
		 studentDocuments = couchViewResults.getResults();
	}
	
	
	public boolean put(String uname, String lname, String pass, String email)
	{
		boolean flag1=true;
		newdoc = new Document();
		
		Map<String , String> properties = new HashMap<String,String>();
		
		properties.put("Firstname", uname);
		properties.put("Lastname", lname);
		
		properties.put("Password", pass);
		properties.put("Email", email);
		try{
			System.out.println("inside try");
		newdoc.putAll(properties);
		
		studentCouchDb.saveDocument(newdoc, email);
		
		}catch(Exception e)
		{
			e.printStackTrace();
			flag1=false;
		}
		
		return flag1;
	}
	
	
	
	
	public boolean chkuser(String email)
	{
		boolean flag=false;
		
		for(Document couchDocument: studentDocuments)
		{
			
			 
			String id = couchDocument.getJSONObject().getString("id");
			Document studentRow = studentCouchDb.getDocument(id);
			Object username=studentRow.get("Email");
			
			
			if(username.equals(email))
			{
				flag=false;
			}
			else
			{
				flag=true;
			}
		}
		
		return flag;
	}
		
		
	
	
	public boolean chkuser(String email, String pass)
	{
	boolean flag=false;
		for(Document couchDocument: studentDocuments)
		{
			
			 
			String id = couchDocument.getJSONObject().getString("id");
			Document studentRow = studentCouchDb.getDocument(id);
			 id1=studentRow.get("_id");
			Object username=studentRow.get("Email");
			Object password=studentRow.get("Password");
			System.out.println("ID : " + id1);
			System.out.println("username : " + username);
			System.out.println("password : " + password);
			
			if(username.equals(email) && password.equals(pass))
			{
				flag=true;
			}
			else
			{
				flag=false;
			}
		}
		
	return flag;
	
	}
	
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
