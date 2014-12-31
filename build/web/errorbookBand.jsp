<%-- 
    Document   : errorBand
    Created on : 11 Oct, 2012, 1:11:56 PM
    Author     : Tejas
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
   <%  
            response.setHeader("Cache-Control", "no-cache");
            response.setHeader("Cache-Control", "no-store");
            response.setDateHeader("Expires", 0);
            response.setHeader("pragma", "no-cache");
        %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css1.css" rel="stylesheet" type="text/css" /> 
        <script language="javascript" type="text/javascript">
         function valid() {
        var bn = document.book_band.bandname.value
        var un = document.book_band.band_user.value
      
       
       if (bn == null || bn == "")
        { alert("Fill out the appropriate field"); return false; }

       if (un == null || un == "")
        { alert("Fill out the appropriate field"); return false; }
        
         
        document.book_band.action = "Book.do"
        }
        </script>
    </head>
      
    <body>
       
        
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
       <h4><b><i> The band is already booked on that date....<br />
       Please Select another band</b></i></h4>
        
         <form action="List.do" method="get">
            <table>
            	<tr>
                <td>Budget:</td>
                <td>
            <select name ="budget" onchange="this.form.submit();">
                <option value="10000">&lt 10000</option>
                <option value="20000">&lt 20000</option>
                <option value="100000">&gt 20000</option>
            </select></td>
            </tr>
            </table><br />
            <table>
                <c:forEach var="band" items="${List_bands}">
                    <tr>
                        <td>${band.bandname}</td>
                        <td>${band.username}</td>
                        <td>${band.price}</td>
                    </tr>
            </c:forEach>
            <hr />
            <br />
        </form>
       
       
        <form  name="book_band" method="post" onsubmit="return valid();">
        <table width="377" border="0">
        <tr>
        	<td colspan="2"><h2>Order Information</h2></td>
    	</tr>
    <td height="36" align="right" valign="top">Band Name:</td>
    <td><input name="bandname" type="text" ></td>
  </tr>
  <tr>
    <td height="31" align="right" valign="top">Band Code:</td>
    <td><input type="text" name="band_user" ></td>
  </tr>
  <tr>
    <td height="36" align="right">Date:</td>
    <td align="left"><select name="day">
    <option value="01">1</option>
    <option value="02">2</option>
    <option value="03">3</option>
    <option value="04">4</option>
    <option value="05">5</option>
    <option value="06">6</option>
    <option value="07">7</option>
    <option value="08">8</option>
    <option value="09">9</option>
    <option value="10">10</option>
    </select><select name="month">
    <option value="01">Jan</option></select><select name="year"><option>2012</option></select></td>
  </tr>
  <tr>
    <td height="32" align="right" valign="top">Occasion:</td>
    <td><input name="occasion" type="radio" value="birthday" checked>Birthday
    <br /><input name="occasion" type="radio" value="concert">Concert
    <br /><input name="occasion" type="radio" value="marriage">Marriage
    <br /><input name="occasion" type="radio" value="other">Other</td>
  </tr>
  <tr>
    <td height="36" colspan="2" align="center"><input type="submit" value="Book" /></td>
  </tr>
  <input type="hidden" name="customer_user" value="${sessionScope.CurrentUser.fname}" />
</table>

    </form>
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
