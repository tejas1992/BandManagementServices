<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Band Form</title>
<link href="style.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript">
    function valid() {
        var bn = document.band_reg.bandname.value
        var un = document.band_reg.username.value
       var p = document.band_reg.price.value
       var mail = document.band_reg.band_email.value
       var pass = document.band_reg.password.value
       
       if (bn == null || bn == "")
        { alert("Enter Band Name"); return false; }

       if (un == null || un == "")
        { alert("Enter User Name"); return false; }
        
       if (p == null || p == "")
        { alert("Enter Price"); return false; }
        
        if(isNaN(p))
            {alert("Invalid Price"); return false;}
            
        if (mail == null || mail == "")
        { alert("Enter Email"); return false; }
        
        if (pass == null || pass == "")
        { alert("Enter Password"); return false; }
        
        document.band_reg.action = "BandReg.do"
        }
</script>
    
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
                
                    <div class="section_w560">
<form  name="band_reg" method='POST' onsubmit="return valid();">
<table width="554" border="0" cellpadding="15">
	<tr>
   		<td colspan="2" align="center" valign="baseline"><h2>Band Registration</h2></td>
    </tr>
    <tr>
      <td width="128" align="right" valign="top"><label for="bandname">Band Name: </label></td>
      <td width="339">
        <input name="bandname" type="text" id="bandname" size="50" />
     </td>
    </tr>
    <tr>
      <td width="128" align="right" valign="top"><label for="username">Username:</label></td>
      <td width="339">
        <input name="username" type="text" id="username" size="50" />
     </td>
    </tr>
    <tr>
      <td align="right" valign="top">Genre:</td>
      <td><label>
              <input type="checkbox" name="bandtype" id="checkbox" value="Rock" checked />
        Rock<br />
        <input type="checkbox" name="bandtype" id="checkbox2" value="Jazz"/>
      Jazz<br />
       <input type="checkbox" name="bandtype" id="checkbox3" value="Pop"/>
       Pop<br />
       <input type="checkbox" name="bandtype" id="checkbox4" value="Indian"/>
       Indian<br />
      </label></td>
    </tr>
    <tr>
      <td width="128" align="right" valign="top"><label for="price">Price(in Rs.):</label></td>
      <td width="339">
        <input name="price" type="text" id="price" size="50" />
     </td>
    <tr>
        <td align="right" valign="top"><label for="email">Band Email:</label></td>
      <td width="339" align="left" valign="top"><input name="band_email" type="email" id="email" size="50" /></td>
        
    </tr>
    <tr>
      <td align="right" valign="top"><label for="password">Password:</label></td>
      <td><input name="password" type="password" id="password" size="30" /></td>
    </tr>
    
    <tr>
    	<td colspan="2" align="center" valign="middle"><input name="submit" type="submit" value="Submit" /></td>
    </tr>
    </table>
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
      </div><!-- end of side column -->
    
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
