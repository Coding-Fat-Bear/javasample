<%@page import="com.mycompany.temp.model.Id"%>
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
        <% Id a1 = (Id)request.getAttribute("id");
            out.println(a1.getId()); %>
    </body>
</html>
