<%-- 
    Document   : welcome_cust
    Created on : 6 Oct, 2012, 10:28:43 PM
    Author     : Tejas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!DOCTYPE html>
<link href="style.css" rel="stylesheet" type="text/css" />

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer Welcome</title>
    </head>
    <body>


<div id="container">

	<div id="menu">
   		<ul>
            <li><a href="index.jsp">Home</a></li>
            <li><a href="Login.jsp">Login</a></li>
            <li><a href="band_form.jsp">Band Form</a></li>
            <li><a href="Customer_registration.jsp" class=current>Customer Form</a></li>
            <li><a href="about.jsp">About Us</a></li>
            <li><a href="contact.jsp">Contact Us</a></li>
        </ul>
   
    </div> <!-- end of menu -->


<div id="banner">
    
    	<div id="site_title">
            <h1>
            <a href="#">
            	<img src="images/logo.png" alt="logo" />
	            <span>One Stop for all Bands</span></a>
            </h1>
        </div>
    
  </div> <!-- end of banner -->
<div id="content">

          <div id="main_column">
        <h1>Welcome ${customer.fname}</h1>
        <hr />
	<b><i>
        <p>You have been successfully registered.<br/>To book a band please login
            <br /><br />
	
        Your details are as follows:</p>
        </b></i>
        <table width="500" border="0" cellpadding="20">
         <tr>
             <td width="120" height="7">First Name:</td>
             <td width="300" height="7">${customer.fname}</td>
         </tr>
         <tr>
              <td>Last Name:</td> 
              <td>${customer.lname}</td>
         </tr>
         <tr>
              <td>Password:</td>
              <td>${customer.password}</td>
         </tr>
         <tr>
             <td>Gender:</td>
             <td>${customer.gender}</td>
        </tr>
         <tr> 
             <td>Mobile No:</td>
             <td>${customer.mobile}</td>
         </tr>
        <tr>
              <td>Email ID:</td>
             <td>${customer.email}</td>
        </tr>
        <tr>
            <td>Address:</td>
            <td>${customer.address}</td>
        </tr>

         <tr>
              <td colspan="2" align="center"><a href="Login.jsp">Login Here</a></td>
            
         </tr>
    </table>

             
       </div> <!-- end of main column --> 
    </div> <!-- end of content -->       
 <div id="side_column">
                
                    <div class="side_column_box">
                    	<div class="bottom"></div>
                        
                        <h2><span>Latest</span> Updates</h2>
                        
                        <div class="content">
                        
                            <div class="news_section">
                                <img class="image_wrapper" src="images/image_02.jpg" alt="image" />
                                <h3>&quot;Incantation&quot; soon arriving....</h3>
                                <p>Soon, experience the magic of the much awaited juggernaut.<a href="#">Read more...</a></p>
                            </div>
                            
                            <div class="news_section">
                                <img class="image_wrapper" src="images/image_03.jpg" alt="image" />
                                <h3>&quot;Roseate&quot; to call it curtains.</h3>
                                <p>Notorious &quot;Roseate&quot; to get disbanded because of too many incompatibles.<a href="#">Read more...</a></p>
                            </div>
                            
                            <div class="button bottom_02"><a href="#">View All</a></div>   

						</div>
                        
                    </div> 
<div class="cleaner"></div>


</div> <!-- end of container -->
<div id="footer">

        <ul class="footer_menu">
			<li><a href="index.jsp">Home</a></li>
            <li><a href="Login.jsp">Login</a></li>
            <li><a href="band_form.jsp">Band Form</a></li>
            <li><a href="Customer_registration.jsp">Customer Form</a></li>
            <li><a href="about.jsp">About Us</a></li>
            <li><a href="contact.jsp">Contact Us</a></li>
        </ul>
    
    </div> <!-- end of footer -->




   </body>
</html>
