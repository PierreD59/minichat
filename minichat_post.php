<?php

try
{
  $bdd = new PDO('mysql:host=localhost;dbname=minichat;charset=utf8', 'root', '');
}

catch(Exception $e)
{
  die('Erreur : '.$e->getMessage());
}

$pseudo = addslashes(strip_tags($_POST['pseudo']));
$message = addslashes(strip_tags($_POST['message']));

if(isset($pseudo) && !empty($pseudo) && isset($message) && !empty($message))
{
$req = $bdd->prepare('INSERT INTO Exo_minichat(pseudo, message) VALUES(:pseudo, :message)');
$req->execute(array(
    'pseudo' => $pseudo,
    'message' => $message
    ));
header('Location: minichat.php');
}
else {
header('Location: minichat.php');
}
?>
<!-- $create = $bdd->exec("INSERT INTO minichat(pseudo, message) VALUES("$pseudo", "$message")"); -->
