<%-- 
    Document   : utilisationBean
    Created on : 31 juil. 2019, 16:32:38
    Author     : Administrateur
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="devweb.meadiathequeweb.Recherche"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
          <%@ include file="menu.jsp" %>
        <h1>Utilisation Bean</h1>
        <jsp:useBean id="MaRecherche" scope="session" class="devweb.meadiathequeweb.Recherche" /> 
        <jsp:getProperty name="MaRecherche" property="titre"  />
        <jsp:getProperty name="MaRecherche" property="auteur"  />
        <jsp:getProperty name="MaRecherche" property="type"  />
        
    </body>
</html>
