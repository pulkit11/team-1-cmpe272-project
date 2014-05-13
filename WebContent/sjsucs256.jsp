<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%
String[] comments={
	"Course teaches OOPS, Design Patterns, Agile Methodology etc. Mostly gets full marks in Labs & Project,  mid term & final are tough."	
	,"Interesting class  and easy to understand. the labs assignments n projects are very helpful. "	
	,"Assignments and Projects are based on real world problems. Studying from his slides is enough to get a good grade."	
	,"Focuses on Design patterns, UML and Scrum. Need to work hard for the midterm and finals but the course is worth it. Use Head First Design Patterns to get an A."	
	,"You get to use bleeding edge technology at the expense of very high workload. I took too much interest in this class so my grades in other classes for that semester went down!"
	,"We used Scrum practically which was very useful. The other project which we did requires you to work on the design patterns in practice, which helps you remember them. But lectures are not focused and sometimes  gives unnecessary workload. I worked hard and got an A."
	,"Its very difficult.WORST GRADING.."
	,"I don't understand why this course is a core course. ridiculous projects, and un-necessary workload. Partial in grading. "
	,"Not consistent and covers lot of unwanted OS stuff from  other classes. Overall the material is very easy.  Even though I got an A- in this class, I lost the interst in the subject after the class."
	,"course greatly depends on the professor who is taking the course."
};



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

    <title>Narrow Jumbotron Template for Bootstrap</title>
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

          <li><a href="Front.html" style="color:#000000">Home</a></li>
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
		  <h2>Department Of Computer Science </h2><div class="page-header">
       
      </div>

<table>
<tr>
<td>
      <div class="row">
       
		
          <div class="list-group">
            <a href="sjsucs256.jsp" class="list-group-item">CS 256--Topics In Artificial Intelligence</a>
            <a href="#" class="list-group-item">CS 257--Database System principles</a>
            <a href="#" class="list-group-item">CS 258--Computer Communication Systems</a>
            <a href="#" class="list-group-item">CS 265--Cryptography And Computer Security</a>
            
          </div>
<td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>
</div>
</td>
<td>    
         <div class="row">
       
          
            
      <img data-src="holder.js/200x200" class="img-thumbnail" alt="200x200" src="images/CS.jpg"
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
            Introduction to topics in artificial intelligence such as problem solving methods, game playing, understanding natural languages, 
            pattern recognition, computer vision and the general problem of representing knowledge. 
            Students will be expected to use LISP.
            </p>
             <h4>Prerequisite:</h4>
            <p>Classified graduate standing or instructor consent.</p>
            <h4>Credits:</h4>
            <p>3</p>
            <h4>University Weblink:</h4>
            <a href="http://info.sjsu.edu/web-dbgen/catalog/courses/CS256.html">http://info.sjsu.edu/web-dbgen/catalog/courses/CS256.html</a>
        </div>
        </div>
        
        <div class="tab-pane" id="Instructor">
        <div class="well">
            <h4>Instructors:</h4>
            <p></p>
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
            
            
            
            
    <form action="sjsucs256.jsp"> 
    
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
  <script type="text/javascript" src="js/bootstrap.js"></script>

</body></html>
