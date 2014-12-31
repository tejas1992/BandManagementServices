<%-- 
    Document   : band_profile
    Created on : 13 Oct, 2012, 10:09:31 PM
    Author     : Tejas
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css1.css" rel="stylesheet" type="text/css" />  
    </head>
     <body>
<div id="container">
<div id="menu">
   		<ul>
            <li><a href="Bandlogout.do">Logout</a></li>
            </li>
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
         <%  response.setHeader("Cache-Control", "no-cache");
            response.setHeader("Cache-Control", "no-store");
            response.setDateHeader("Expires", 0);
            response.setHeader("pragma", "no-cache");
        %>
        <h1>${BandUser.bandname}</h1>
        <hr />
        <table width="310" height="78">
            <tr><td width="93" align="center">Genre:</td>
                <td width="114" align="left"><ul>
            <c:forEach var="genre" items="${BandUser.bandtype}">
                <li>${genre}</li>
            </c:forEach>
                    </ul></td>
            </tr>
            <tr>
                <td align="center">Email:</td>
                <td align="center">${BandUser.email}</td>
            </tr>
        </table>
          <a href="Member.jsp"><input type="button" value="Add a member"></a>
            <form action="upcoming.do" method="Post">
                <input type="hidden" name="bandname" value="${BandUser.username}" />
                <input type="submit" value="Upcoming Events" />
            </form>
            
            <form action="ListMembers.do" method="Post">
                <input type="hidden" name="bandname" value="${BandUser.bandname}" />
                <input type="submit" value="ListMembers" />
            </form>
           
</div> <!-- end of main column --> 
    </div> <!-- end of content -->  
</div> <!-- end of container -->
<div id="footer">

        <ul class="footer_menu">
            <li><a href="Bandlogout.do">Logout</a></li>
           </li>
        </ul>
    
    </div> <!-- end of footer -->


       
    </body>
</html>
