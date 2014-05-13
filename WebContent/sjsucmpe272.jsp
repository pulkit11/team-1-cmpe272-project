<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<jsp:useBean id="t" class="com.bean.rating"></jsp:useBean>
<jsp:setProperty property="*" name="t"/>


<%
String[] comments={
		"Course gives a good broad overview of enterprise software topics. The project is in a team. Overall I learned a lot. Kept my interest level high for this subject.",

"		Course introduced us to all the testing techniques & gave us full freedom to explore tools ourselves. The class project helps you the most.",

"		Practically enlightens you with the latest upcoming technologies. Course motivates you to find solutions to real world problems. Do not miss an opportunity to learn this course.",

		"This course has a midterm, final, and team research paper or project. We need to memorize a lot for the midterm and final. The fun part is the research paper.",

		" Course is a huge waste of time and money. Sadly, it is one of the core courses. Easy to score if you have a good memory. Otherwise, you learn absolutely nothing in this course.",

		"Midterm and final exam are multiple choice question, very confusing and difficult. Make sure you read each and every word in the diagram as well.Previous question paper is definitely useful, u will get few questions from them, try to collect from ur seniors.Grading is ok, if u have real time experience,this course will be easy.",

		"You should know database and linux for this course prior to taking this course."
};

String course="sjsucmpe272";
String message=request.getParameter("cmessage");
String easiness=request.getParameter("easyrb");
System.out.println("easy is"+ easiness);
String scope=request.getParameter("clarityrb");
String staff=request.getParameter("helpfulrb");
String material=request.getParameter("interestrb");
t.setEasiness(easiness);
t.setMaterial(material);
t.setScope(scope);
t.setStaff(staff);
System.out.println("message is" + message);


boolean flag1=t.insertrating(course, message);

if(flag1==false)
{
	response.sendRedirect("error.html");
	
	}


%>


<!DOCTYPE html>

<html lang="en">



<head>


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   
 <meta charset="utf-8">
 
   <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="http://getbootstrap.com/assets/ico/favicon.ico">

    <title>University Course Rating</title>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css">
    <!-- Bootstrap core CSS -->
    <link href="http://getbootstrap.com/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="/resources/demos/style.css">
    <!-- Custom styles for this template -->
    <link href="http://getbootstrap.com/examples/jumbotron-narrow/jumbotron-narrow.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy this line! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
	
    <![endif]-->
<link href="css/bootstrap.css" rel="stylesheet">
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.js"></script>

  </head>

  <body background="images/im11.jpg">

    <div class="container">
      <div class="header">
        <ul class="nav nav-pills pull-right">

          <li ><a href="Front.html" style="color:#000000">Home</a></li>
          <li><a href="Aboutus.html" style="color:#000000">About</a></li>
          <li><a href="contactUs.html" style="color:#000000">Contact</a></li>
		<li><a href="Signin.html" style="color:#000000">SignIn</a></li>

        </ul>
        <h3 style="color:#000000">University Course Rating</h3>
      </div>

      <div class="jumbotron">
        


      <!-- Example row of columns -->
     <!--   <div class="row">
       <div class="col-md-4"> -->
		  <h2>Department Of Software Engineering </h2><div class="page-header">
       
      </div>

<table>
<tr>
<td>
     <div class="row">
       
		
          <div class="list-group">
            <a href="sjsucmpe272.jsp" class="list-group-item active">CMPE 272--Enterprise Software Platforms</a>
            <a href="sjsucmpe202.jsp" class="list-group-item">CMPE 202--Software System Engineering</a>
            <a href="#" class="list-group-item">CMPE 281--Cloud Technologies</a>
            <a href="#" class="list-group-item">CMPE 239--Web And Data Miningy</a>
            
          </div>
			<td> &nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>
	</div>
</td>
<td>    
         <div class="row">
       
          
            
      <img data-src="holder.js/200x200" class="img-thumbnail" alt="200x200" src="images/SE1.jpg"
	  style="width: 400px; height: 260px;">
          
       
		</div>
</td>		
    </tr>


</table  >
     
    </div>



      <div class="jumbotron">
        

 
<!-------->
<div id="content">
    <ul id="tabs" class="nav nav-tabs" data-tabs="tabs">
        <li class="active"><a href="#Description" data-toggle="tab">Description</a></li>
        <li><a href="#Instructor" data-toggle="tab">Instructor</a></li>
        <li><a href="#Comments" data-toggle="tab">Comments</a></li>
        <li><a href="#Rating" data-toggle="tab">Rating</a></li>
        
    </ul>
    <div id="my-tab-content" class="tab-content">
        <div class="tab-pane active" id="Description">
        <div class="well">
            <h4>Details:</h4>
            <p align="left">
            Enterprise software, system and virtualized platforms. Covers OSs, NOS, security, databases 
            (OLTP, Big Data, Analytics), transactions, groupware, components, web services, web, systems management and 
            app development. Covers standards and emerging technologies.
            </p>
             <h4>Prerequisite:</h4>
            <p>Classified graduate standing or instructor consent.</p>
            <h4>Credits:</h4>
            <p>3</p>
            <h4>University Weblink:</h4>
            <a href="http://info.sjsu.edu/web-dbgen/catalog/courses/CMPE272.html">http://info.sjsu.edu/web-dbgen/catalog/courses/CMPE272.html</a>
        </div>
        </div>
        
        <div class="tab-pane" id="Instructor">
        <div class="well">
            <h4>Instructors:</h4>
            <p>Prof Rakesh Ranjan & Prof Dan Harkey</p>
        </div></div>
        
        
        <div class="tab-pane" id="Comments">
<div class="well">


<marquee behavior="scroll" direction="down">

<%for(int i=0;i<comments.length;i++)
	{
	
	
%>
<p align="left"><%out.println(comments[i]); %></p>
</br>

<%} %>

</marquee>








</div>
        </div>
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        <div class="tab-pane" id="Rating">
            
      
      
           
            <div class="well">
            
            
            
            
    <form action="sjsucmpe272.jsp"> 
    
	   <h2 style="color: #000">Course Rating</h2> 
     
       		   
        					
        			<input type="hidden" name="sid" value="881">	
						<input type="hidden" name="tid" value="997345">	
						<input type="hidden" name="error" value="false">
          
				
				<table id="addRating" width="445" border="0" cellspacing="0" cellpadding="0">
	<tr><td colspan="5" style="border-bottom: none; "></td></tr>				
	<tr><td colspan="5" class="rating_even" align="center"><h4> Easiness</h4></td></tr>
				<tr class="rating_even">
					<td width="20%">
                                          <ul>
                                            
                                              <label> <input name="easyrb" type="radio" value="1" tabindex="1"> 1</label>
                                             
                                              
                                             
											</ul>
                                           
                                        </td>
					<td width="20%" align="center">
                                           <ul>
                                             
                                              <label>
                                                <input name="easyrb" type="radio" value="2"> 2
                                              </label>
                                             
                                               
                                             
                                           </ul>
                                         </td>
					<td width="20%" align="center">
                                           <ul>
                                            
                                              <label>
                                                <input name="easyrb" type="radio" value="3"> 3
                                              </label>
                                            
                                          
                                                
                                            
                                           </ul>
                                        </td>
					<td width="20%" align="center">
                                           <ul>
                                             
                                              <label>
                                                 <input name="easyrb" type="radio" value="4"> 4
                                              </label>
                                             
                                        
                                            
                                           </ul>
                                         </td>
					<td width="20%">
                                           <ul>
                                            
                                              <label class="rating_span_right">
                                                 <input name="easyrb" type="radio" value="5"> 5
                                              </label>
                                             
                                                
                                            
                                           </ul>
                                         </td>
				</tr>
				<tr><td colspan="5"  style="border-bottom: none; "><span for="easyrb" class="error"></span></td></tr>
				<tr><td colspan="5" class="rating_even" align="center"><h4> Staff</h4></td></tr>
				<tr>
					<td width="20%">
                                           <ul>
                                          
                                             <label><input name="helpfulrb" type="radio" value="1" tabindex="2"> 1 </label>
                                            
                                            
                                            
                                           </ul>
                                        </td>
					<td width="20%" align="center">
                                           <ul>
                                        
                                              <label> <input name="helpfulrb" type="radio" value="2"> 2 </label>
                                            
                                              
                                             
                                           </ul>
                                        </td>
					<td width="20%" align="center">
                                           <ul>
                                            
                                              <label> <input name="helpfulrb" type="radio" value="3"> 3 </label>
                                            
                                            
                                             
                                           
                                           </ul>
                                        </td>
					<td width="20%" align="center">
                                           <ul>
                                            
                                              <label> <input name="helpfulrb" type="radio" value="4"> 4 </label>
                                            
                                             
                                            
                                           </ul>
                                        </td>
					<td width="20%">
                                           <ul>
                                          
                                              <label> <label class="rating_span_right"><input name="helpfulrb" type="radio" value="5"> 5</label>
                                           
                                              
                                           
                                           </ul>
                                        </td>
				</tr>
				<tr><td colspan="5" style="border-bottom: none; "><span for="helpfulrb" class="error"></span></td></tr>				
				<tr><td colspan="5" class="rating_even"><label class="formCat"><a href="/categories.jsp" target="categories"><h5 style="color: #000">Style scope in industry</h5></a></label></td></tr>
				<tr class="rating_even">
					<td width="20%">
                                           <ul>
                                           
                                              <label> <label><input name="clarityrb" type="radio" value="1" tabindex="3"> 1</label>
                                             
                                            
                                            
                                           </ul>
                                        </td>
					<td width="20%" align="center">
                                           <ul>
                                            
                                              <label>
                                               <input name="clarityrb" type="radio" value="2"> 2
                                               </label>
                                             
                                             
                                            
                                           </ul>
                                        </td>
					<td width="20%" align="center">
                                           <ul>
                                            
                                              <label>
                                               <input name="clarityrb" type="radio" value="3"> 3
                                               </label>
                                             
                                            
                                           </ul>
                                        </td>
					<td width="20%" align="center">
                                           <ul>
                                           
                                              <label>
                                               <input name="clarityrb" type="radio" value="4"> 4
                                               </label>
                                             
                                             
                                             
                                            
                                           </ul>
                                        </td>
					<td width="20%">
                                           <ul>
                                            
                                              <label class="rating_span_right">
                                               <input name="clarityrb" type="radio" value="5"> 5
                                               </label>
                                             
                                            
                                            
                                           </ul>
                                        </td>
				</tr>
				<tr><td colspan="5"  style="border-bottom:none; "><span for="clarityrb" class="error"></span></td></tr>
				<tr><td colspan="5" class="rating_odd"><label class="formCat"><a href="/categories.jsp" target="categories"><h5 style="color: #000">Course material</h5></a></label></td></tr>
				<tr>
					<td width="20%">
                                           <ul>
                                            
                                              <label>
                                               <input name="interestrb" type="radio" value="1" tabindex="4"> 1
                                               </label>
                                             
                                               
                                             
                                           </ul>
                                        </td>
					<td width="20%" align="center">
                                           <ul>
                                             
                                              <label>
                                               <input name="interestrb" type="radio" value="2"> 2
                                               </label>
                                           
                                            
                                            
                                            
                                           </ul>
                                        </td>
					<td width="20%" align="center">
                                           <ul>
                                             
                                              <label>
                                               <input name="interestrb" type="radio" value="3"> 3
                                               </label>
                                             
                                             
                                             
                                           </ul>
                                        </td>
					<td width="20%" align="center">
                                           <ul>
                                            
                                              <label>
                                               <input name="interestrb" type="radio" value="4"> 4
                                               </label>
                                            
                                           
                                             
                                           </ul>
                                        </td>
					<td width="20%">
                                           <ul>
                                             
                                              <label class="rating_span_right">
                                               <input name="interestrb" type="radio" value="5"> 5
                                               </label>
                                           
                                           </ul>
                                           	
                                        </td>
                                  
				</tr>
	
	<tr>
	<div class="required-field-block">
            <textarea rows="3" class="form-control" placeholder="Message" name="cmessage"></textarea>
            <div class="required-icon">
                
            </div>
        </div>
	</tr>
	
	
	    </table>
        
        <input type="submit" name="sjsucmpe202"  value="submit" class="btn btn-xs btn-primary" id="submit">
        
   </form>     </div>
         
            
        </div>
        
    </div>
</div>
 
 
<script type="text/javascript">
    jQuery(document).ready(function ($) {
        $('#tabs').tab();
    });
</script>    

 
 
<script type="text/javascript" src="js/bootstrap.js"></script>








      </div>



      <div class="footer">
        <p>© Company 2014</p>
      </div>



</div> <!-- /container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
  

</body></html>
