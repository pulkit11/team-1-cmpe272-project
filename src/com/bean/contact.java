package com.bean;

import java.io.IOException;

import com.aws.AmazonSES.SESservice;

public class contact 

{

	private String cname;
	private String cemail;
	private String csubject;
	private String cmessage;
	/**
	 * @return the cname
	 */
	public String getCname() {
		return cname;
	}
	/**
	 * @param cname the cname to set
	 */
	public void setCname(String cname) {
		this.cname = cname;
	}
	/**
	 * @return the cemail
	 */
	public String getCemail() {
		return cemail;
	}
	/**
	 * @param cemail the cemail to set
	 */
	public void setCemail(String cemail) {
		this.cemail = cemail;
	}
	/**
	 * @return the csubject
	 */
	public String getCsubject() {
		return csubject;
	}
	/**
	 * @param csubject the csubject to set
	 */
	public void setCsubject(String csubject) {
		this.csubject = csubject;
	}
	/**
	 * @return the message
	 */

	/**
	 * @return the cmessage
	 */
	public String getCmessage() {
		return cmessage;
	}
	/**
	 * @param cmessage the cmessage to set
	 */
	public void setCmessage(String cmessage) {
		this.cmessage = cmessage;
	}
	
	public String sentmailservice() 
	{
		String result="true";
		System.out.println(cname+cemail+cmessage+csubject);
			SESservice service=new SESservice();
			try {
				//result=service.sent(cname,cemail,csubject,cmessage);
				service.dosent(cname,cemail,csubject,cmessage);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			return result;
	}
	
}
