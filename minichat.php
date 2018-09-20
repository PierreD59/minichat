<!doctype html>
<html class="no-js" lang="">

<head>
  <meta charset="utf-8">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <title></title>
  <meta name="description" content="">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <link rel="manifest" href="site.webmanifest">
  <link rel="apple-touch-icon" href="icon.png">
  <!-- Place favicon.ico in the root directory -->

  <link rel="stylesheet" href="css/normalize.css">
  <link rel="stylesheet" href="css/main.css">
</head>

  <body>
    <form method="post" action="minichat_post.php">
      <p>
        <label for="pseudo">Votre pseudo : </label><br>
        <input type="text" name="pseudo" id="pseudo" required/>
      </p>
      <p>
        <label for="message">Votre message : </label> <br>
        <input type="text" name="message" id="message" required/>
      </p>
      <input type="submit" value="Envoyer" />
    </form>

    <p>
      <?php

      try
      {
          $bdd = new PDO('mysql:host=localhost;dbname=minichat;charset=utf8', 'root', '');
      }

      catch(Exception $e)

      {
              die('Erreur : '.$e->getMessage());
      }

      $reponse = $bdd->query('SELECT * FROM Exo_minichat ORDER BY id DESC LIMIT 10');
      // var_dump($reponse);

      while ($donnees = $reponse->fetch())
      {
        echo '<strong>' . htmlspecialchars($donnees['pseudo']) . '</strong>' . ': ' . htmlspecialchars($donnees['message']) . '<br />';
      }

      // $reponse->closeCursor();
    ?>
  </p>
  </body>
</html>
