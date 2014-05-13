package com.bean;

import com.db.connection;

public class signup {

		String Fname;
	
	 String Lname;
	
	 String Email;
	
	
	
	 String pass;

	/**
	 * @return the fname
	 */
	public String getFname() {
		return Fname;
	}

	/**
	 * @param fname the fname to set
	 */
	public void setFname(String fname) {
		Fname = fname;
		System.out.println( " name is " + Fname);
	}

	/**
	 * @return the lname
	 */
	public String getLname() {
		return Lname;
	}

	/**
	 * @param lname the lname to set
	 */
	public void setLname(String lname) {
		Lname = lname;
	}

	/**
	 * @return the email
	 */
	public String getEmail() {
		return Email;
	}

	/**
	 * @param email the email to set
	 */
	public void setEmail(String email) {
		Email = email;
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
	
	public boolean insert()
	{
		System.out.println(Fname + Lname + pass + Email );
		connection con=new connection();
		boolean flag=con.put(Fname,Lname,pass,Email);
		System.out.println("inside insert");
		return flag;
		
	}
}
