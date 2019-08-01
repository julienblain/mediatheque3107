<%-- 
    Document   : consulter
    Created on : 31 juil. 2019, 12:20:03
    Author     : Administrateur
--%>


<%@page import="devweb.meadiathequeweb.Catalogue"%>
<%@page import="java.util.ArrayList"%>

<%@page import="devweb.meadiathequeweb.DVD"%>
<%@page import="devweb.meadiathequeweb.Livre"%>
<%@page import="devweb.meadiathequeweb.Media"%>


<%! ArrayList<Media> catalogue = Catalogue.get(); %>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html">
        
        <title>JSP Page</title>
    </head>
    <body>
         <%@ include file="menu.jsp" %>
         <h1>Consulter</h1>
        
        <table>
            <%
                String type=request.getParameter("t");
                for (Media x : catalogue) {
                     if (type.equals("f")) {
                         
                       out.println("bobobo");
                        return;
                    }
                    if (type.equals("l") && !(x instanceof Livre)) {
                        continue;
                    }
                    if (type.equals("d") && !(x instanceof DVD)) {
                        continue;
                    }        
            %>
            <tr>
                <td>
                    <%= x.getTitre() %>    
                </td>
                <td>
                    <%= x.getAuteur() %>
                </td>
            </tr>

            <%  } %>
        </table>
    </body>
</html>
