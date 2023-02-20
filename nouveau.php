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





<section class="back3">
    <?php
    $requete="SELECT * FROM nouveau";
    $stmt=$db->query($requete);
    $resultat=$stmt->fetchall(PDO::FETCH_ASSOC);
    foreach ($resultat as $nouveau){
        echo "<section class=\"corp2\">
        <a href=\"\" style=\"background: url({$nouveau["image_nouveau"]}) no-repeat center/cover;\" class=\"card2\">
        <div class=\"info2\">
        <h1 class=\"title\">{$nouveau["titre_nouveau"]}</h1>
        <p class=\"description\"> <strong>Auteur :   </strong>  {$nouveau["auteur_nouveau"]}<br>{$nouveau["description_nouveau"]}<br><br>{$nouveau["datesortie_nouveau"]}<br><br>{$nouveau["durée_nouveau"]} min
        <br><br><br></p>
        </div>    
      </section>
      <a href=\"{$nouveau["lien_nouveau"]}\" class=\"btn\">Prochainement au cinéma!</a>
      </a>  
    \n";
        // {$nouveau["image_nouveau"]}
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