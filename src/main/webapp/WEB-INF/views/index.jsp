<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Assurance - Page d'accueil</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/index.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body>

    <!-- Header Section -->
    <header>
        <div class="logo">
            <img src="${pageContext.request.contextPath}/img/ax.png" alt="Logo Assurance">
        </div>
        <nav>
            <ul>
                <li><a href="#">Accueil</a></li>
                <li><a href="#">Produits</a></li>
                <li><a href="#">Services</a></li>
                <li><a href="#">Contact</a></li>
            </ul>
        </nav>
    </header>

    <!-- Banner Section -->
    <section class="banner">
        <div class="banner-content">
            <h1>Protégez ce qui compte le plus</h1>
            <p>Découvrez nos offres d'assurance adaptées à vos besoins.</p>
            <a href="#" class="btn-primary">Voir les offres</a>
        </div>
    </section>

    <!-- Hero Banner Section -->
    <section>
        <div class="o-herobanner full-width p-relative">
            <div class="o-herobanner__img">
                <picture>
                    <img src="/content/dam/axa-fr-convergence/transverse/HP/Hero%20banner/Header-les-aidants.jpg" class="a-image--responsive a-image--square a-image--cover" alt="">
                </picture>
            </div>
            <div class="o-herobanner__contentWrapper">
                <div class="container-fluid">
                    <div class="o-herobanner__content p-relative">
                        <h2 class="text-white m-h1 m-h1--encoding">Ensemble, nous inventons l'assurance qui vous ressemble</h2>
                    </div>
                </div>
            </div>
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12">
                        <div class="o-herobanner__tiles d-flex flex-wrap justify-content-center">
                            <!-- Auto -->
                            <form action="${pageContext.request.contextPath}/quotations" method="get">
                                <input type="hidden" name="insuranceType" value="Auto">
                                <div class="m-tile p-06-t p-06-b d-flex flex-column align-items-center">
                                    <div class="m-tile__img m-02-b">
                                        <i class="fas fa-car fa-3x"></i>
                                    </div>
                                    <p class="m-tile__surtitle">DEVIS</p>
                                    <p class="m-tile__title"><button type="submit" class="btn btn-link">Auto</button></p>
                                </div>
                            </form>

                            <!-- Habitation -->
                            <form action="${pageContext.request.contextPath}/quotations" method="get">
                                <input type="hidden" name="insuranceType" value="House">
                                <div class="m-tile p-06-t p-06-b d-flex flex-column align-items-center">
                                    <div class="m-tile__img m-02-b">
                                        <i class="fas fa-home fa-3x"></i>
                                    </div>
                                    <p class="m-tile__surtitle">DEVIS</p>
                                    <p class="m-tile__title"><button type="submit" class="btn btn-link">Habitation</button></p>
                                </div>
                            </form>

                            <!-- Santé -->
                            <form action="${pageContext.request.contextPath}/quotations" method="get">
                                <input type="hidden" name="insuranceType" value="Health">
                                <div class="m-tile p-06-t p-06-b d-flex flex-column align-items-center">
                                    <div class="m-tile__img m-02-b">
                                        <i class="fas fa-heartbeat fa-3x"></i>
                                    </div>
                                    <p class="m-tile__surtitle">DEVIS</p>
                                    <p class="m-tile__title"><button type="submit" class="btn btn-link">Santé</button></p>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Hero Banner -->

    <!-- Additional Info Section -->
    <section class="additional-info">
        <h2>Pourquoi Choisir Nos Services ?</h2>
        <div class="info-cards">
            <div class="info-card">
                <img src="img/expertise.jpg" alt="Expertise">
                <h3>Expertise</h3>
                <p>Plus de 20 ans d'expérience dans le domaine des assurances pour vous offrir le meilleur.</p>
            </div>
            <div class="info-card">
                <img src="img/support.jpg" alt="Support">
                <h3>Support 24/7</h3>
                <p>Notre équipe de support est disponible à tout moment pour vous assister.</p>
            </div>
            <div class="info-card">
                <img src="img/flexibility.jpg" alt="Flexibilité">
                <h3>Flexibilité</h3>
                <p>Des solutions d'assurance flexibles qui s'adaptent à vos besoins spécifiques.</p>
            </div>
        </div>
    </section>

    <!-- Footer Section -->
    <footer>
        <div class="footer-content">
            <div class="social-media">
                <a href="#"><img src="img/facebook-icon.png" alt="Facebook"></a>
                <a href="#"><img src="img/twitter-icon.png" alt="Twitter"></a>
                <a href="#"><img src="img/linkedin-icon.png" alt="LinkedIn"></a>
            </div>
            <p>&copy; 2024 Assurance | Tous droits réservés</p>
        </div>
    </footer>

</body>
</html>
