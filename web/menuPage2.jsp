<%-- 
    Document   : menuPage
    Created on : Sep 15, 2014, 7:49:43 PM
    Author     : jrheingans1
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="model.MenuItem"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<%
    Object obj = request.getAttribute("menuItems");
    if (obj == null) {
        response.sendRedirect("MainController?action=getOriginalList");
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form id='form1' name='form1' method='POST' action='MainController?action=processOrder'>
        <select name="menuItemSelected">
            <c:forEach var="item" items="${menuItems}" varStatus="rowCount">
                <option value="${item.name}, ${item.price}">${item.name}, ${item.price}</option>
            </c:forEach>
        </select>
            <input type="submit" name="Submit" value="Submit"/>
        </form>
    </body>
</html>
