<%-- 
    Document   : disciplinas
    Created on : 14 de out. de 2023, 16:27:32
    Author     : victa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Disciplinas</title>
        <script src="https://cdn.jsdelivr.net/npm/alpinejs@2.8.2/dist/alpine.js"></script>
    </head>
    <body>
        
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <h3>Disciplinas:</h3>
        <ul id="disciplinas"></ul>

    <script src="https://cdn.jsdelivr.net/npm/alpinejs@2.8.2/dist/alpine.js"></script>
    <script>
    fetch('victal.json')
        .then(response => response.json())
        .then(data => {
            const disciplinasLista = document.getElementById('disciplinas');
            data.disciplinas.forEach(disciplina => {
                const linha = document.createElement('li');
                linha.textContent = disciplina;
                disciplinasLista.appendChild(linha);
            });
        });
</script>

    </body>
</html>
