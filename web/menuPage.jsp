<%-- 
    Document   : menuPage
    Created on : Sep 15, 2014, 7:49:43 PM
    Author     : jrheingans1
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
<%@page import="model.MenuItem"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <select>
            <%
                List<MenuItem> items = new ArrayList<MenuItem>();
                Object obj = request.getAttribute("menuItems");
                if (obj != null) {
                    items = (List<MenuItem>) obj;
                }

                for (MenuItem item : items) {
                    out.println("<option value='" + item.getName()
                            + ", " + item.getPrice() + "'>"
                            + item.getName() + ", " + item.getPrice() + "</option>");
                }
            %>
        </select>
    </body>
</html>
