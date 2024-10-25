<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gestion des Devis</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
</head>
<body>
    <div class="container mt-5">
        <h2>Liste des Devis</h2>

        <table class="table table-bordered table-light">
            <thead class="thead-dark">
                <tr>
                    <th>#</th> <!-- Changer ID en # -->
                    <th>Âge</th>
                    <th>Valeur du Bien</th>
                    <th>Historique des Sinistres</th>
                    <th>Type d'Assurance</th>
                    <th>Status</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="quotation" items="${quotations}" varStatus="status">
                    <tr>
                        <td>${status.index + 1}</td> <!-- Affiche le numéro de ligne -->
                        <td>${quotation.age}</td>
                        <td>${quotation.valueOfGood}</td>
                        <td>${quotation.historyOfClaims}</td>
                        <td>${quotation.insuranceType}</td>
                        <td>${quotation.status}</td>
                        <td class="action-buttons">
                            <a href="${pageContext.request.contextPath}/quotations/edit/${quotation.id}" class="btn btn-primary btn-sm">Modifier</a>
                            <form action="${pageContext.request.contextPath}/quotations/${quotation.id}" method="post" style="display:inline;">
                                <input type="hidden" name="_method" value="DELETE">
                                <button type="submit" class="btn btn-danger btn-sm" onclick="return confirm('Êtes-vous sûr de vouloir supprimer ce devis ?');">Supprimer</button>
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.0.11/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
