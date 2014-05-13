package com.bean;

import com.db.connection;

public class rating 
{
	
	 private String easiness;
	 private String scope;
	 private String staff;
	 private String material;
	
	
	public boolean insertrating(String course, String message)
	{
		System.out.println("course is"+course);
		connection con = new connection();
		System.out.println("message is"+message);
		con.insertrate(course,easiness, scope, staff, material,message);
		return true;
		
	}


	/**
	 * @return the easiness
	 */
	public String getEasiness() {
		return easiness;
	}


	/**
	 * @param easiness the easiness to set
	 */
	public void setEasiness(String easiness) {
		this.easiness = easiness;
	}


	/**
	 * @return the staff
	 */
	public String getStaff() {
		return staff;
	}


	/**
	 * @param staff the staff to set
	 */
	public void setStaff(String staff) {
		this.staff = staff;
	}


	/**
	 * @return the scope
	 */
	public String getScope() {
		return scope;
	}


	/**
	 * @param scope the scope to set
	 */
	public void setScope(String scope) {
		this.scope = scope;
	}


	/**
	 * @return the material
	 */
	public String getMaterial() {
		return material;
	}


	/**
	 * @param material the material to set
	 */
	public void setMaterial(String material) {
		this.material = material;
	}


	/**
	 * @return the message
	 */
	
	
}
