<%-- 
    Document   : Profile
    Created on : 7 Oct, 2012, 3:18:51 PM
    Author     : Tejas
--%>

<%@page import="Model.Customer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css1.css" rel="stylesheet" type="text/css" />
        <title>Customer Welcome</title>
    </head>
      <body> 
      <%  response.setHeader("Cache-Control", "no-cache");
            response.setHeader("Cache-Control", "no-store");
            response.setDateHeader("Expires", 0);
            response.setHeader("pragma", "no-cache");
        %>
<div id="container">
<div id="menu">
   		<ul>
            <li><a href="logout.do">Logout</a></li>
            <li><a href="Unregister.jsp">Unregister</a></li>
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
       
          
        <h1>${sessionScope.CurrentUser.fname} ${sessionScope.CurrentUser.lname}</h1>
        <hr />
        <fieldset><legend>User info</legend>
        <table width=314 height=139>
            <tr>
                <td width="105" height="30">Gender:</td>
                <td width="175">${CurrentUser.gender}</td>
            </tr>
            <tr>
                <td height="29">Mobile no:</td>
                <td>${CurrentUser.mobile}</td>
            </tr>
            <tr>
                <td height="32">E-mail:</td>
                <td>${CurrentUser.email}</td>
            </tr>
            <tr>
                <td height="36">Address:</td>
                <td>${CurrentUser.address}</td>
            </tr>
        </table>
		</fieldset>
	    <br/>
        <p>To Book a band ....Please select your budget 
        <table width="290">
       		<tr>
            	<td width="82" align="right">Budget:</td>
                <td width="97"> <form action="List.do" method="get">
                <select name ="budget" onchange="this.form.submit();">
                <option value="10000">0</option>
                <option value="10000">&lt 10000</option>
                <option value="20000">&lt 20000</option>
                <option value="100000">&gt 20000</option>
                </select></form></td>
            </tr>
         </table></p>
        <form action="MyOrders.do">
            <input type="hidden" name="customer_user" value="${sessionScope.CurrentUser.username}" />
            <input type="submit" value="My Bookings" />
        </form>
          </div>
</div> 
<!-- end of content -->  
</div> <!-- end of container -->
<div id="footer">

        <ul class="footer_menu">
            <li><a href="logout.do">Logout</a></li>
            <li><a href="Unregister.jsp">Unregister</a></li>
        </ul>
    
    </div> <!-- end of footer -->
    </body>
</html>