<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Formulaire Utilisateur</title>
</head>
<body>
    <h1><%= (request.getAttribute("user") != null) ? "Modifier" : "Créer" %> un utilisateur</h1>

    <form action="<%= (request.getAttribute("user") != null) ? '/users/update/' + ((com.example.entity.User) request.getAttribute("user")).getId() : '/users' %>" method="post">
        <label for="name">Nom :</label>
        <input type="text" id="name" name="name" value="<%= (request.getAttribute("user") != null) ? ((com.example.entity.User) request.getAttribute("user")).getName() : "" %>"/><br/>

        <label for="email">Email :</label>
        <input type="email" id="email" name="email" value="<%= (request.getAttribute("user") != null) ? ((com.example.entity.User) request.getAttribute("user")).getEmail() : "" %>"/><br/>

        <button type="submit">Enregistrer</button>
    </form>
</body>
</html>
