package com.aws.AmazonSES;


import java.io.IOException;

import com.amazonaws.auth.PropertiesCredentials;
import com.amazonaws.regions.Region;
import com.amazonaws.regions.Regions;
import com.amazonaws.services.simpleemail.AmazonSimpleEmailServiceClient;
import com.amazonaws.services.simpleemail.model.Body;
import com.amazonaws.services.simpleemail.model.Content;
import com.amazonaws.services.simpleemail.model.Destination;
import com.amazonaws.services.simpleemail.model.Message;
import com.amazonaws.services.simpleemail.model.SendEmailRequest;

public class SESservice


{
	
	
	
	
	public String dosent(String cname, String cemail, String csubject, String cmessage) throws IOException
	{
		String result="true";
		final String FROM ="courseratingteam@gmail.com";  
		final String TO = cemail;
		final String BODY = cmessage;
		final String SUBJECT = csubject;

		PropertiesCredentials credentials = new PropertiesCredentials(
				SESservice.class
				.getResourceAsStream("AwsCredentials.properties"));

		credentials.getAWSAccessKeyId();
		credentials.getAWSSecretKey();

		Destination destination = new Destination().withToAddresses(new String[]{TO});

		Content subject = new Content().withData(SUBJECT);
		Content textBody = new Content().withData(BODY); 
		Body body = new Body().withText(textBody);

		Message message = new Message().withSubject(subject).withBody(body);

		SendEmailRequest request = new SendEmailRequest().withSource(FROM).withDestination(destination).withMessage(message);
		try
		{        
			System.out.println("Attempting to send an email through Amazon SES by using the AWS SDK for Java...");

			AmazonSimpleEmailServiceClient client = new AmazonSimpleEmailServiceClient(credentials);

			Region REGION = Region.getRegion(Regions.US_WEST_2);
			client.setRegion(REGION);

			client.sendEmail(request);  
			System.out.println("Email sent!");
			
		}
		catch (Exception ex) 
		{
			System.out.println("The email was not sent.");
			System.out.println("Error message: " + ex.getMessage());
		result="false";
		}
		
		return result;
		
	}

}
