<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Contact Us</title>
<link href="style.css" rel="stylesheet" type="text/css" />

    
</head>
<body>

<div id="container">

	<div id="menu">
   		<ul>
            <li><a href="index.jsp">Home</a></li>
            <li><a href="Login.jsp">Login</a></li>
            <li><a href="band_form.jsp">Band Form</a></li>
            <li><a href="Customer_registration.jsp">Customer Form</a></li>
            <li><a href="about.jsp">About Us</a></li>
            <li><a href="contact.jsp" class=current>Contact Us</a></li>
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
                
                    <div class="section_w560">
   
<form  method="post" name="sendmail" onsubmit="if(document.sendmail.subject.value == '' || document.sendmail.message.value == ''){alert('Fill out all required fields');return false}"action="">
			<h1>Contact Us</h1>
	<pre>

<label>Your Full Name:</label>
<input type="text" maxlength="35" name="name" />

<label>Your E-mail ID:</label>
<input type="text" maxlength="35" name="email" />

<label>Subject:</label>
<input type="text" maxlength="45" name="subject" />

<label>Message:</label>
<textarea name="message" style="width:530px; height:160px"></textarea>

	

<input class="button" name="send_btn" type="submit" value="Send message" />
	</pre>
</form>

                    </div>
                </div>
        <!-- end of main column -->
                
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
                    
        <div class="cleaner_h20"></div>
      </div <!-- end of side column -->
    
        <div class="cleaner"></div>
    
	</div> <!-- end of content -->
    
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

</div> <!-- end of container -->

</body>
</html>
