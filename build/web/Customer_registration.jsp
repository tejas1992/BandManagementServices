<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Customer Registration</title>
<link href="style.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript">
    function valid() {
        var fn = document.cust_reg.fname.value
        var ln = document.cust_reg.lname.value
        var mob = document.cust_reg.mobile.value
        var mail = document.cust_reg.email.value
		var add = document.cust_reg.address.value
		var pass = document.cust_reg.password.value
		var un = document.cust_reg.uname.value
		
        if (fn == null || fn == "")
        { alert("Enter First Name"); return false; }
		
		if (ln == null || ln == "")
        { alert("Enter Last Name"); return false; }
		
		if (un == null || un == "")
        { alert("Enter User Name"); return false; }
		
		if (mob == null)
        { alert("Enter Mobile no"); return false; }
		
		 if (mob.length == 0)
        { alert("Enter Mobile Number"); return false; }

        if (mob.length <= 9 )
        { alert("Invalid Mobile Number"); return false; }
        
        if (isNaN(mob))
        { alert("Invalid Mobile Number"); return false; }
		
		if (mail == null || mail == "")
        { alert("Enter Email"); return false; }
		
		if (add == null || add == "")
        { alert("Enter address"); return false; }
		
		if (pass == null || pass == "")
        { alert("Enter Password"); return false; }
		
		
		
		
        document.cust_reg.action = "CustReg.do"
        }
</script>
    
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
                
                    <div class="section_w560">
                       <form name="cust_reg" method='POST' onsubmit="return valid();">
          <table width="602" border="0" cellpadding="20">
            <tr>
           	<td colspan="2" align="center"><h2>Customer Registeration</h2></td>
            </tr>
            <tr>
                <td width="121" align="right" valign="top"><label for="fname">First Name:</label></td>
                <td width="395" height="10"><input type="text" name="fname" id="fname" size="50"  /></td>
            </tr>
            <tr>
                <td align="right" valign="top"><label for="lname">Last Name:</label></td> 
                <td><input type="text" name="lname" id="lname" size="50" /></td>
            </tr>
            <tr>
                <td width="121" align="right" valign="top"><label for="uname">Username:</label></td>
                <td width="395" height="10"><input type="text" name="username" id="uname" size="50" /></td>
            </tr>
            <tr>
                <td align="right" valign="top">Gender:</td>
                <td><input type="radio" name="gender" value="Male" checked="checked">Male<br />
                    <input type="radio" name="gender" value="Female">Female</td>
            </tr>
            <tr> 
               <td align="right" valign="top"><label for="mobno">Mobile No:</label></td>
               <td><input type="text" size="50" maxlength="10" name="mobile" id="mobno" /></td>
            </tr>
            <tr>
               <td align="right" valign="top"><label for="email">E-mail ID:</label></td>
               <td><input type="email" size="50" name="email" id="email" /></td>
            </tr>
            <tr>
               <td align="right" valign="top"><label for="add">Address:</label></td>
               <td><textarea name="address" id="add" cols="50" rows="5" ></textarea></td>
            </tr>
            <tr>
               <td align="right" valign="top"><label for="passwd">Password:</label></td>
               <td><input type="password" size="50" maxlength="16" name="password" id="passwd" /></td>
            </tr>
            <tr>
               <td align="center"><input type="submit" value="Submit"  /></td>
               <td align="center"><input type="reset" /></td>
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
      </div ><!-- end of side column -->
    
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
