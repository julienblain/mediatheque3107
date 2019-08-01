<%-- 
    Document   : connection
    Created on : 31 juil. 2019, 16:07:02
    Author     : Administrateur
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@ include file="menu.jsp" %>
        <h1>Connection</h1>

        <div style="width: 800px;margin-left:auto; margin-right:auto;font-size:30px">
            <form method="POST"  action="/mediatheque/Authentifier">
                <label for="identifiant">Identifiant 
                    <input type="text" name="identifiant" id="identifiant">
                </label>
                <br>
                <label for="mdp">Mot de passe 
                    <input type="password" name="mdp" id="mdp">
                </label>
                <br>
                <input type="submit" value="Ok">
            </form>
        </div>

        <%@ include file="pied.html" %>
    </body>
</html>
