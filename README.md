
# Application de Gestion des Contrats d'Assurance

## Contexte du Projet

Cette application a été développée pour une compagnie d'assurance fictive, avec pour objectif de simplifier la gestion des contrats d'assurance pour les clients. L'application permet aux utilisateurs d'accéder facilement à divers services liés à leurs polices d'assurance, y compris l'assurance automobile, habitation et santé. Cela améliore l'expérience utilisateur et réduit les coûts administratifs.

## Fonctionnalités

1. **Inscription et Connexion**
   - Création d'un compte utilisateur avec des informations personnelles (nom, adresse, email, numéro de téléphone).
 
2. **Obtenir des Devis d'Assurance**
   - Demande de devis en remplissant un formulaire avec des détails sur le type d'assurance souhaité.
   - Calcul des devis en fonction de divers critères (âge, valeur du bien, historique de sinistres, etc.).

3. **Souscription à des Contrats**
   - Souscription au contrat d'assurance après acceptation du devis, avec la possibilité de télécharger des documents nécessaires (permis de conduire, justificatif de domicile, etc.).

4. **Gestion des Contrats**
   - Modification des informations de contrat (adresse, véhicule, etc.) et résiliation des contrats directement via l'application.

## Règles de Calcul des Devis

### 1. Assurance Automobile
- **Paramètres** : Âge du conducteur, type de véhicule, utilisation du véhicule, historique de conduite.
- **Exemple de calcul** :
  - Base : 500 MAD
  - +10 % si le conducteur a moins de 25 ans.
  - +15 % pour un véhicule de luxe.
  - +10 % pour l'utilisation professionnelle.
  - -20 % pour un conducteur sans sinistre depuis 3 ans, +10 % sinon.

### 2. Assurance Habitation
- **Paramètres** : Valeur du bien, type de logement, localisation, système de sécurité.
- **Exemple de calcul** :
  - Base : 300 MAD
  - +2 % si le bien est une maison.
  - +5 % si le logement est situé dans une zone à risque.
  - +10 % si la valeur du bien dépasse 200 000 MAD.
  - -15 % si l'assuré dispose d'un système de sécurité, +15 % sinon.

### 3. Assurance Santé
- **Paramètres** : Âge, état de santé, type de couverture.
- **Exemple de calcul** :
  - Base : 150 MAD
  - +20 % pour les personnes de plus de 60 ans.
  - +30 % pour les antécédents de maladies chroniques.
  - -10 % pour une couverture de base, +5 % pour premium.

## Technologies Utilisées

- **Spring Core**
- **Spring Web**
- **JSP**
- **JPA**
- **JUnit / Mockito**
