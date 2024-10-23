<html>
<head>
    <title>Détails Utilisateur</title>
</head>
<body>
    <h2>Détails de l'Utilisateur</h2>
    <p><strong>ID:</strong> <%= ((User) request.getAttribute("user")).getId() %></p>
    <p><strong>Nom:</strong> <%= ((User) request.getAttribute("user")).getName() %></p>
    <p><strong>Email:</strong> <%= ((User) request.getAttribute("user")).getEmail() %></p>
    <br/>
    <a href="users">Retour à la liste</a>
</body>
</html>
