<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>ShônenZone</title>
    <script src="js/script.js"></script>
    <script src="js/slider.js"></script>
    <link rel="stylesheet" href="css/style.css" />
    <link rel="stylesheet" href="css/slider.css" />
    <link rel="icon" href="img/logo.png" type="logo">
  </head>

<?php
include "connexion.php";?>

<body>
<a class="botton botton1" href="#popo01">Mention Légales</a>

<section>
<nav class="barre">
    <ul class="lf">
        <li><a href="index.php" class="nav"> accueil </a></li>
        <li><a href="Nouveau.php" class="nav"> Nouveau </a></li>
        <li><a href="propos.html" class="nav"> À propos </a></li>              
    </ul>
</nav>
</section>

<section class="back2">
<?php
    $requete="SELECT * FROM produit WHERE id_produit={$_GET["id_produit"]}";
    $stmt=$db->query($requete);
    $resultat=$stmt->fetchall(PDO::FETCH_ASSOC);
    foreach ($resultat as $produit){
        echo "<section class=\"corp\">
            <a href=\"produit.php?id_produit={$produit['id_produit']}\" style=\"background: url({$produit["image_produit"]}) no-repeat center/cover;\" class=\"card\">
            <div class=\"info\">
            <h1 class=\"title\">{$produit["titre_produit"]}</h1>
            <p class=\"description\"> <strong>Auteur:</strong>  {$produit["auteur_produit"]}<br><strong>Contient : </strong>{$produit["description_produit"]}</p>
            <h5>Prix :   {$produit["prix_produit"]}€</h5><br>
            </div>  
            </a>  
          </section>
          <a href=\"formulaire.php\" class=\"btn2\">Louer ?</a>
        \n";
    }
      ?>
</section>


    
<div class="overlay" id="popo01">
        <div class="popo popo1">
          <a class="close" href="#">&times;</a>
          <div class="content">
            <h1> Mentions Légales</h1>
            <p>Informations Dévellopeur : Projet SAÉ 203 réalisé par Alvin Mirenda <br> 2 rue Albert Einstein, 77420
              Champs-sur-Marne, France <br>
              <br> Informations hébergeur : <br> Identité : Université Gustave Eiffel <br> Adresse : 2 rue Albert
              Einstein, 77420 Champs-sur-Marne, France <br> Téléphone : 01 60 95 75 00 <br> Adresse mail :
              webmaster@univ-eiffel.fr <br> Conformément
              à l'article 15 du Règlement général sur la protection des données (RGPD) du 27 avril 2016, vous disposez
              d'un droit d'accès aux informations vous concernant. Si vous trouvez que ces informations sont incorrectes,
              l'article. <br> 16 du
              RGPD vous permet de les modifier ou de les supprimer. Dans ce cas, merci de contacter le Directeur de la
              Communication : com@univ-eiffel.fr. <br> Pour toute question relative à la collecte ou au traitement de vos
              données personnelles par
              le site web, vous pouvez contacter le respnsable de la protection des données du projet :
              philippe.gambette@univ-eiffel.fr. <br> Les fichiers détenus par l'Université Gustave Eiffel et Philippe
              Gambette qui comportent des données à caractère
              personnel ne seront jamais transmis à des tiers et ne feront jamais l'objet d'une commercialisation. <br>
              Lors de la création de votre propre analogie, vos informations seront envoyées dans une base de données.
              Pour les supprimer veuillez
              contacter philippe.gambette@univ-eiffel.fr. Les données seront supprimées durant l’été qui suivra de janvier
              2022.<br>
              © 2022 Shônen, Inc. Tous droits réservés

          </div>
        </div>
      </div>
</body>
</html>