<%-- 
    Document   : rechercheForm
    Created on : 1 août 2019, 09:39:31
    Author     : Administrateur
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="devweb.meadiathequeweb.Recherche" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <body>
         <%@ include file="menu.jsp" %>
        <h1>Formulaire de recherche</h1>
        
         
      
         <%-- <jsp:getProperty name="MaRecherche" property="type"  /> --%>
       
       

         <jsp:useBean id="MaRecherche" scope="session" class="devweb.meadiathequeweb.Recherche" /> 
         
      
         <form method="post" action="rechercheResultat.jsp" name="MaRecherche">
            <div class="form-group">
                <label for="exampleInputEmail1">Titre</label>
                <input name="titre" type="text" class="form-control" id="rechercheTitre" placeholder="<jsp:getProperty name="MaRecherche" property="titre"  />">
            </div>
            <div class="form-group">
                <label for="exampleInputPassword1">Auteur</label>
                <input name="auteur" type="text" class="form-control" id="rechercheAuteur" placeholder=" <jsp:getProperty name="MaRecherche" property="auteur"  />">
            </div>
            <div class="form-group">
                <label for="exampleInputPassword1">Type (L/D)</label>
                <input name="type" type="text" class="form-control w-100" id="rechercheAuteur" placeholder=" <jsp:getProperty name="MaRecherche" property="auteur"  />">
            </div>
            
            <br>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
        
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>
