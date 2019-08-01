<%-- 
    Document   : demo.jsp
    Created on : 31 juil. 2019, 11:35:31
    Author     : Administrateur
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%! ArrayList<String> s; %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%= getServletConfig().getServletContext().getContextPath() %>
    </body>
</html>
