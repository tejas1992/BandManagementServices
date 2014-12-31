<%-- 
    Document   : noOrders
    Created on : 12 Oct, 2012, 5:20:29 PM
    Author     : Tejas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="Log.do" method="post">
            <input type="hidden" name="username" value="${CurrentUser.username}" />
            <input type="hidden" name="password" value="${CurrentUser.password}" />
            <input type="hidden" name="lastLogon" value=<%= System.currentTimeMillis() %> />
            <input type="submit" value="Back" />
        </form>  
            <h1>No Bookings yet.</h1>
    </body>
</html>
