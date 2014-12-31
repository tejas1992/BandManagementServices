<%-- 
    Document   : band_success
    Created on : 6 Oct, 2012, 4:29:18 PM
    Author     : Tejas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!DOCTYPE html>
<link href="style.css" rel="stylesheet" type="text/css" />

    <title>Band Success</title>
    </head>
    <body>


<div id="container">

	<div id="menu">
         <ul>
            <li><a href="index.jsp">Home</a></li>
            <li><a href="Login.jsp">Login</a></li>
            <li><a href="band_form.jsp" class=current>Band Form</a></li>
            <li><a href="Customer_registration.jsp">Customer Form</a></li>
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
        <h1>Welcome ${bandinfo.bandname}</h1>
        <p><b><i>Please Login to add more information</i></b> </p>
        <table width="575" border="0" cellpadding="20">
    <tr>
      <td width="274">Band Name:</td>
      <td width="392">${bandinfo.bandname}</td>
    </tr>
    <tr>
      <td>genre:</td>
      <td><ul>
              <c:forEach var="genre" items="${bandinfo.bandtype}">
                  <li>${genre}</li>              
              </c:forEach></ul>
      
    </tr>
    <tr>
        <td>Band Email:</td>
        <td>${bandinfo.email}</td>
    </tr>
    <tr>
    </tr>
        </table>
    <a href="Login.jsp"><input name="" type="button" value="Login"></a>
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