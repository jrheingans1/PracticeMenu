<%-- 
    Document   : orderConfirmationPage
    Created on : Sep 15, 2014, 9:13:32 PM
    Author     : jrheingans1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Thank you for your order. Verify this is correct</h1>
        <%
            Object obj = session.getAttribute("order");
            if(obj == null){
                out.println("Could not find order");
            } else {
                out.println(obj.toString());
            }
        %>
    </body>
</html>
