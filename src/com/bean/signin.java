package com.bean;

import com.db.connection;

public class signin 
{
	boolean flag;
	public String email;
	public String pass;
	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}
	/**
	 * @param email the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
		System.out.println("email of user is :" + email);
	}
	/**
	 * @return the pass
	 */
	public String getPass() {
		return pass;
	}
	/**
	 * @param pass the pass to set
	 */
	public void setPass(String pass) {
		this.pass = pass;
	}

	
	public boolean chkuser()
	{
		connection con=new connection();
		flag=con.chkuser(email, pass);
		
		return flag;
	}
}
