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

<?php include "connexion.php";?>

<body>

  <a class="botton botton1" href="#popo01">Mention Légales</a>

  <section>
    <nav class="barre">
      <ul class="lf">
        <li><a href="index.php" class="nav"> accueil </a></li>
        <li><a href="nouveau.php" class="nav"> Nouveau </a></li>
        <li><a href="propos.html" class="nav"> À propos </a></li>
        <div class="search_bar">
          <form method="GET">
            <label for="search"></label>
            <input type="text" name="search" placeholder="Recherche">
          </form>
        </div>
      </ul>
    </nav>
  </section>
  <div class="logowrap">
    <img src="img/logo.png" alt="" class="logo">
  </div>

  <div class="js-slider">
    <div class="js-photos">
      <div class="js-photo green"></div>
      <div class="js-photo green-dark"></div>
      <div class="js-photo green-plus"></div>
      <div class="js-photo green clone"></div>
    </div>
  </div>
  <div class="js-slider">
    <div class="js-photos" id="decaleGauche">
      <div class="js-photo1">
        <!-- photo 1 -->
      </div>
      <div class="js-photo2">
        <!-- photo 2 -->
      </div>
      <div class="js-photo3">
        <!-- photo 3 -->
      </div>
    </div>
    <div class="nav-slider">
      <button class="btn-slider-d">
        <svg viewBox="0 0 24 24">
          <path d="M16.67 0l2.83 2.829-9.339 9.175 9.339 9.167-2.83 2.829-12.17-11.996z" />
        </svg>
      </button>
      <button class="btn-slider-g">
        <svg viewBox="0 0 24 24">
          <path d="M5 3l3.057-3 11.943 12-11.943 12-3.057-3 9-9z" />
        </svg>
      </button>
    </div>
  </div>
  </div>


  <!-- <h1 class="accroche">Choisissez le shônen qui vous fait le plus envie puis grâce à shônen-zone vous pourrez le louer à un prix abordable.</h1> -->

  <section class="back">
    <?php
    $requete="SELECT * FROM produit";
    $stmt=$db->query($requete);
    $resultat=$stmt->fetchall(PDO::FETCH_ASSOC);
    foreach ($resultat as $produit){
        echo "<section class=\"corp\">
            <a href=\"produit.php?id_produit={$produit['id_produit']}\" style=\"background: url({$produit["image2_produit"]}) no-repeat center/cover;\" class=\"card\">
            <div class=\"info\">
            <h1 class=\"title\">{$produit["titre_produit"]}</h1>
            <p class=\"description\">Auteur:  {$produit["auteur_produit"]}<br><br><strong>synopsis :  </strong><br>{$produit["synopsis_produit"]}</p>
            <h5>Prix :   {$produit["prix_produit"]}€</h5><br>
            </div>   
            </a>  
          </section>
        \n";



    //     include("connexion.php");
    //        $requete = "SELECT * FROM titre_produit";
    //        $stmt = $db->query($requete);
    //        $resultat = $stmt->fetchall(PDO::FETCH_ASSOC);
    //     if (isset($_GET['search']) OR !empty($_GET['search'])) {
    //          $resultat = $stmt->fetchall(PDO::FETCH_ASSOC);
    //          $recherche = htmlspecialchars($_GET['search']);
    //          $resultat = $db->query('SELECT * FROM titre_produit AND nom LIKE "%'.$recherche.'%" ORDER BY nom ASC');};

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
          © 2022 Shônen, Inc. Tous droits réservéss
      </div>
    </div>
  </div>



  <script src="./slider.js"></script>
</body>

</html>