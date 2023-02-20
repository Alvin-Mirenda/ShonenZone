<!DOCTYPE html>
<html lang="fr">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Nouveau</title>
  <link rel="stylesheet" href="js/script.js" />
  <link rel="stylesheet" href="css/formulaire.css" />
  <link rel="icon" href="img/logo.png" type="logo">
</head>

<body>

  <?php
include "connexion.php";
?>


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


  <!-- ----------------------------------------------------------------------------------- -->
  <!-- 
    <form action="" method="POST">
        <input type="text" name="reservation">
        <input type="submit" value="Envoyer email">
    </form> -->

  <!-- ----------------------------------------------------------------------------------- -->

  <div class="container"></div>
  <form action="" method="POST" class="form">
    <div class="form-example">
      <label for="name"> Nom: </label>
      <input type="text" name="nom_reservation" required>
    </div>

    <div class="form-example">
      <label for="name"> Prénom: </label>
      <input type="text" name="prenom_reservation" required>
    </div>

    <div class="form-example">
      <label for="name"> Télephone: </label>
      <input type="number" name="tel_reservation	" required>
    </div>

    <div class="form-example">
      <label for="email"> Email: </label>
      <input type="email" name="mail_reservation" required>
    </div>

    <div class="form-example">
      <label for="adresse"> Adresse : </label>
      <input type="text" name="adresse_reservation" required>
    </div>

    <div>
      <h1 class="label">Date de réservartion<span class="important"></span></h1>
      <div>
        <label for="date1">Du : </label>
        <input max="2025-12-31" type="date" name="debutdate_reservation" id="debutdate_reservation" required="" min=""
          value="">
        <label for="date1">Au : </label>
        <input max="2025-12-31" type="date" name="findate_reservation	" id="findate_reservation	" required="" min=""
          value="">
      </div>


      <div class="form-example">
        <input type="submit" value="CONFIRMATION" name="reservation">
      </div>
  </form>
  <?php
      if(isset($_POST['reservation'])){
        $nom_reservation=$_POST['nom_reservation'];
        $prenom_reservation=$_POST['prenom_reservation'];
        $tel_reservation=$_POST['tel_reservation'];
        $mail_reservation=$_POST['mail_reservation'];
        $adresse_reservation=$_POST['adresse_reservation'];
        $debutdate_reservation=$_POST['debutdate_reservation'];
        $findate_reservation=$_POST['findate_reservation'];
        
        $requete="INSERT INTO reservation (nom_reservation, prenom_reservation, tel_reservation, mail_reservation, adresse_reservation,  debutdate_reservation, findate_reservation) VALUES ('$nom_reservation' , '$prenom_reservation' , '$tel_reservation' , '$mail_reservation' , '$adresse_reservation' , '$debutdate_reservation' , '$findate_reservation')";
        $stmt=$db->query($requete);
        $resultat=$stmt->fetchall(PDO::FETCH_ASSOC);

        echo "<h1 class='label'>Réservation validée</h1>";
        
          $contenu="<p>Merci d'avoir réservé .</p>
                    <h2>". $prenom_reservation ."</h2>
                    <h2>". $nom_reservation ."</h2>
                    <h2>". $tel_reservation ."</h2>
                    <br>
                    <h1>Vouv venez de reserver chez Shônen-Zone à ces date:</h1>
                    <h2>". $debutdate_reservation ."</h2>
                    <h2>". $findate_reservation ."</h2>
                    <h1>Nous vous remercions de votre confiance.</h1>

          ";
          $headers[] = 'MIME-Version: 1.0';
          $headers[] = 'Content-type: text/html; charset=UTF-8';
        
        mail($mail_reservation,'Mail confirmation de réservation',$contenu,implode("\r\n", $headers));
        }
        ?>
  </div>





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