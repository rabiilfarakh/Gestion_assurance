<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Accueil</title>
</head>
<body>
    <h1><%= request.getAttribute("message") != null ? request.getAttribute("message") : "Bienvenue!" %></h1>
</body>
</html>
