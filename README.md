Procédure pour installer le site web en local :
1. Installer le serveur local XAMPP (https://www.apachefriends.org/fr/index.html). Il est aussi possible d'utiliser d'autres serveurs locaux, tels que MAMPP ou WAMPP.
2. Ouvrir en tant qu'administrateur XAMPP (dans l'explorateur de fichier, c:\xampp\xampp-control)
3. Une fois XAMPP ouvert, cliquer sur "Start" pour les Modules "Apache" et "MySQL".
4. Dans un navigateur, saisir l'URL "http://localhost/", sélectionner le dossier "dashboard/", puis se rendre dans phpMyAdmin (base de données locale), ou plus rapidement, saisir l'URL "http://localhost/phpmyadmin/".
5. Créer une nouvelle base de données, y insérer le document "shonen (2).sql". Les tables et leur contenu seront entrés dans la nouvelle base de données.
6. Dans l'explorateur de fichiers, "c:\xampp", allez dans le dossier "htdocs", insérer le dossier "sae_203" contenant tous les fichiers relatifs au site web.
7. Dans le document "connexion.php", modifier l'accès à la base de données de sorte à ce que le site soit lié à la base en serveur local.
Insérer une commande PHP du type : 
<?php
try
{
    // On se connecte à MySQL
    $db = new PDO('mysql:host=localhost;dbname=mirenda_shonen;port="3306";charset=utf8', 'mirenda_shonen', 'alvin14082003');
}
catch(Exception $e)
{
    // En cas d'erreur, on affiche un message et on arrête tout
        die('Erreur : '.$e->getMessage());
}
?>
8. Retourner dans le localhost sur un navigateur et ouvrir le dossier contenant le site web. Si tout fonctionne, le site web s'affiche.
9. En local, le site web est accessible depuis l'URL : "http://localhost/sae_203//" 
10. voici mon site sur o2switch : "http://resaweb.mirenda.butmmi.o2switch.site/"
