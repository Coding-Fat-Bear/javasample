<%@page import="com.mycompany.temp.model.id"%>
<%-- 
    Document   : result
    Created on : Feb 21, 2022, 1:15:57 AM
    Author     : AGI03
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor="orange">
        <% id a1 = (id)request.getAttribute("id");
            out.println(a1.getUsername()); %>
    </body>
</html>
