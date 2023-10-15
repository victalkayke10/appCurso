<%-- 
    Document   : index
    Created on : 9 de out. de 2023, 13:53:49
    Author     : victa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Index</title>
    </head>
    <body>
        <h1>Index</h1>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        
        <form action="index.jsp">
        <input type="text" name="ra" placeholder="RA" value = "1290482212019">
        <input type="text" name="nome" placeholder="Nome" value = "Victal Kayke">
        <input type="submit" value="Enviar">
        </form>
        <%
            String ra = request.getParameter("ra");
            String nome = request.getParameter("nome");
            out.println(ra);
            out.println(nome);
            
        %>


    </body>
</html>
