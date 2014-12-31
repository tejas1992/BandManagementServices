<%-- 
    Document   : bookband_form
    Created on : 9 Oct, 2012, 12:10:24 PM
    Author     : Tejas
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BOOK BAND</title>
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
        
        <form action="List.do" method="get">
            <table>
            	<tr>
                <td width="78" align="center">Budget:</td>
                <td width="97">
            <select name ="budget" onchange="this.form.submit();">
                <option value="10000">&lt 10000</option>
                <option value="20000">&lt 20000</option>
                <option value="100000">&gt 20000</option>
            </select></td>
            </tr>
            </table><br />
            <table width="408">
                 <tr>
                    <td width="114" height="26" align="center">BAND NAME</td>
                    <td width="110" align="center">BAND CODE</td>
                    <td width="81" align="center">PRICE</td>
              </tr>
                <c:forEach var="band" items="${List_bands}">
                    <tr>
                        <td height="31" align="center">${band.bandname}</td>
                        <td align="center">${band.username}</td>
                        <td align="center">${band.price}</td>
                  </tr>
                </c:forEach>
            </table>
          </form>
        <hr />
        <form  name="book_band" method="post" onsubmit="return valid();"> 
         <table width="377" border="0">
        <tr>
        	<td colspan="2" align="center" valign="baseline"><h2>Order Information</h2></td>
    	</tr>
        <tr>
    <td width="119" height="44" align="right" valign="middle">Band Name:</td>
    <td width="248"><input name="bandname" type="text" ></td>
  </tr>
  <tr>
    <td height="31" align="right" valign="middle">Band Code:</td>
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
     <option value="11">11</option>
      <option value="12">12</option>
       <option value="13">13</option>
        <option value="14">14</option>
         <option value="15">15</option>
          <option value="16">16</option>
           <option value="17">17</option>
            <option value="18">18</option>
             <option value="19">19</option>
              <option value="20">20</option>
               <option value="21">21</option>
                <option value="22">22</option>
                 <option value="23">23</option>
                  <option value="24">24</option>
                   <option value="25">25</option>
                    <option value="26">26</option>
                     <option value="27">27</option>
                      <option value="28">28</option>
                       <option value="29">29</option>
                        <option value="30">30</option>
                         
                         
    </select><select name="month">
    <option value="01">Jan</option>
    <option value="02">Feb</option>
    <option value="03">Mar</option>
    <option value="04">Apr</option>
    <option value="05">May</option>
    <option value="06">Jun</option>
    <option value="07">Jul</option>
    <option value="08">Aug</option>
    <option value="09">Sep</option>
    <option value="10">Oct</option>
    <option value="11">Nov</option>
    <option value="12">dec</option>
    </select><select name="year"><option value="2012">2012</option>
        <option value="2013">2013</option></select></td>
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
    <input type="hidden" name="customer_user" value="${sessionScope.CurrentUser.username}" />
</tr>
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

       
    </body>
</html>
