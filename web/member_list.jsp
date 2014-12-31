<%-- 
    Document   : member_list
    Created on : 14 Oct, 2012, 7:42:41 PM
    Author     : Tejas
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Member List</title>
<link href="css1.css" rel="stylesheet" type="text/css" />  
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
            <li><a href="Bandlogout.do">Logout</a></li>
            
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
        <form action="BandLog.do" method="post">
            <input type="hidden" name="username" value="${BandUser.username}" />
            <input type="hidden" name="password" value="${BandUser.password}" />
            <input type="hidden" name="lastLogin" value=<%= System.currentTimeMillis() %> />
            <input type="submit" value="Back" />
        </form>
        <h4>Registered Members are as follows:</h4>
        <c:forEach var="member" items="${MemberList}">
            ${member.name} - ${member.speciality}<br />
        </c:forEach>
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
