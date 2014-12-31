<%-- 
    Document   : Unregister
    Created on : 12 Oct, 2012, 10:06:45 PM
    Author     : Tejas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Unregister</title>
<link href="css1.css" rel="stylesheet" type="text/css" />  
</head>

     <body>
<div id="container">
<div id="menu">
   		<ul>
            <li><a href="logout.do">Logout</a></li>
            
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
        <p><b><i>Note: If you unregister, your bookings won't be valid any further.</b>>/i></p>
        <h4><b><i>Are you sure you want to unregister?</i></b></h4>
        <form action="Unregister.do" method="post">
            <input type="hidden" name="username" value="${CurrentUser.username}" />
            <input type="submit" value="unregister" />
        </form>
         <form action="Log.do" method="post">
            <input type="hidden" name="username" value="${CurrentUser.username}" />
            <input type="hidden" name="password" value="${CurrentUser.password}" />
            <input type="hidden" name="lastLogon" value=<%= System.currentTimeMillis() %> />
            <input type="submit" value="Back" />
        </form>  
            </div> <!-- end of main column --> 
    </div> <!-- end of content -->  
</div> <!-- end of container -->
<div id="footer">

        <ul class="footer_menu">
            <li><a href="logout.do">Logout</a></li>
            </li>
        </ul>
    
    </div> <!-- end of footer -->


                    
    </body>
</html>