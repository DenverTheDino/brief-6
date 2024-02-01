
<?php
include("pdo.php");

$requestsql =" SELECT libelle, url FROM `favoris` WHERE id_fav = " . $_GET["id_fav"];
$result = $pdo->query($requestsql);

$favoris = $result->fetch(PDO::FETCH_ASSOC);
var_dump($favoris)

?>
<form action="" method="post">
   <p> </p>
        <label for="libelle">Modifier le libelee</label>
        <input value="<?php echo $favoris['libelle']?>" type="text" name="libellee" id="libellee" require/>

        <label for="url">modifier l'url: </label>
        <input value="<?php echo $favoris['url']?>" type="text" name="url" id="url" require/>
        
        <input type="submit" value="modifier" />

</form>
