<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formulaire de Quotation</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <div class="container mt-5">
        <h2>Créer une Quotation</h2>
        <form action="${pageContext.request.contextPath}/quotations/addQuotation" method="post">
            <div class="form-group">
                <label for="age">Âge</label>
                <input type="number" class="form-control" id="age" name="age" required>
            </div>
            <div class="form-group">
                <label for="valueOfGood">Valeur du Bien</label>
                <input type="text" class="form-control" id="valueOfGood" name="valueOfGood" required>
            </div>
            <div class="form-group">
                <label for="historyOfClaims">Historique des Sinistres</label>
                <input type="text" class="form-control" id="historyOfClaims" name="historyOfClaims">
            </div>
            <div class="form-group">
                <label for="insuranceType">Type d'Assurance</label>
                <input type="text" class="form-control" id="insuranceType" name="insuranceType" value="${insuranceType != null ? insuranceType : ''}" readonly>
            </div>
            <button type="submit" class="btn btn-primary">Soumettre</button>
        </form>
    </div>
</body>
</html>
