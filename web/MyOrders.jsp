<%-- 
    Document   : MyOrders
    Created on : 11 Oct, 2012, 2:12:47 PM
    Author     : Tejas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css1.css" rel="stylesheet" type="text/css" />
<title>BOOKINGS</title>
    </head>
    <body>
          <%  
            response.setHeader("Cache-Control", "no-cache");
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
         <form action="Log.do" method="post">
            <input type="hidden" name="username" value="${CurrentUser.username}" />
            <input type="hidden" name="password" value="${CurrentUser.password}" />
            <input type="hidden" name="lastLogon" value=<%= System.currentTimeMillis() %> />
            <input type="submit" value="Back" />
        </form>  
        <p><b><i>You have Booked the following Bands</i></b></p>
        <table width="400" height="73">
            <thead>
                <th width="148">BAND CODE</th>
                <th width="113">DATE</th>
                <th width="117">OCCASION</th>
            </thead>
            <c:forEach var="band" items="${MyOrders}">
                <tr>
                     <td align="center">${band.band_user}</td>
                     <td align="center">${band.date}</td>
                     <td align="center">${band.occasion}</td>
                </tr>
            </c:forEach>
        </table>
<br />
<br />
<br />
<br />
 </div> <!-- end of main column --> 
    </div> <!-- end of content -->  
</div> <!-- end of container -->
<div id="footer">

        <ul class="footer_menu">
            <li><a href="logout.do">Logout</a></li>
            <li><a href="Unregister.jsp">Unregister</a></li>
        </ul>
    
    </div> <!-- end of footer -->


       
    </body>
</html>
