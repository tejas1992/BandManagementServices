<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script language="javascript" type="text/javascript">
         function valid() {
        var bn = document.add_member.name.value
        var un = document.add_member.speciality.value
      
       
       if (bn == null || bn == "")
        { alert("Fill out the appropriate field"); return false; }

       if (un == null || un == "")
        { alert("Fill out the appropriate field"); return false; }
        
         
        document.add_member.action = "Addmember.do"
        }
            </script>
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

        <div id="main_column">    <%  response.setHeader("Cache-Control", "no-cache");
            response.setHeader("Cache-Control", "no-store");
            response.setDateHeader("Expires", 0);
            response.setHeader("pragma", "no-cache");
        %>
       <form action="BandLog.do" method="post">
            <input type="hidden" name="username" value="${BandUser.username}" />
            <input type="hidden" name="password" value="${BandUser.password}" />
            <input type="hidden" name="lastLogin" value=<%= System.currentTimeMillis() %> />
            <input type="submit" value="Back" />
        </form>
       <br />
        
        	 <form name="add_member" method="get" onsubmit="return valid();">
   <table width="408" border="0">
    <tr>
    <th colspan="2">Member Info</th>
    </tr>
  <tr>
    <td width="92" height="63" align="right">Name:</td>
    <td width="175"><input name="name" type="text" /></td>
  </tr>
  <tr>
    <td height="63" align="right">Instrument:</td>
    <td><input name="speciality" type="text" /></td>
  </tr>
  <tr>
    <td height="70" colspan="2" align="center"><input name="" type="submit" />
        <input name="bandname" type="hidden" value="${BandUser.bandname}" /></td>
  </tr>
</table>
                </form>
</div> <!-- end of main column --> 
    </div> <!-- end of content -->  
</div> <!-- end of container -->
<div id="footer">

        <ul class="footer_menu">
            <li><a href="Bandlogout.do">Logout</a></li>
            </ul>
    
    </div> <!-- end of footer -->
    </body>
</html>
