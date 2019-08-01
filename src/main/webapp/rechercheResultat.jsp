<%-- 
    Document   : rechercheResultat
    Created on : 1 août 2019, 09:48:28
    Author     : Administrateur
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="devweb.meadiathequeweb.Recherche" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%@ include file="menu.jsp" %>
        
         <jsp:useBean id="MaRecherche" scope="session" class="devweb.meadiathequeweb.Recherche" />
         <jsp:setProperty name="MaRecherche" property="*"  />
         <%-- <jsp:setProperty name="MaRecherche" property="auteur" param="auteur" /> --%>
        
         <h1>Résultats de recherche</h1>
       
         <jsp:include page="/filtrerCatalogue" />
         
         
        <a href="rechercheForm.jsp">
            <button>Nouvelle recherche</button>
        </a>
    </body>
</html>
