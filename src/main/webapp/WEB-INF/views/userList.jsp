<html>
<head>
    <title>Liste des Utilisateurs</title>
</head>
<body>
    <h2>Liste des Utilisateurs</h2>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Nom</th>
            <th>Email</th>
            <th>Actions</th>
        </tr>
        <%
            List<User> users = (List<User>) request.getAttribute("users");
            for (User user : users) {
        %>
            <tr>
                <td><%= user.getId() %></td>
                <td><%= user.getName() %></td>
                <td><%= user.getEmail() %></td>
                <td>
                    <a href="users/<%= user.getId() %>">Voir</a> |
                    <a href="users/edit/<%= user.getId() %>">Editer</a> |
                    <form action="users/<%= user.getId() %>" method="POST" style="display:inline;">
                        <input type="hidden" name="_method" value="DELETE"/>
                        <input type="submit" value="Supprimer"/>
                    </form>
                </td>
            </tr>
        <% } %>
    </table>
    <br/>
    <a href="users/add">Ajouter un utilisateur</a>
</body>
</html>
