<?php
include("pdo.php");
include("header.php");

$requestsql =" SELECT * FROM `categorie`";
$result = $pdo->query($requestsql);


$categories = $result->fetchAll(PDO::FETCH_ASSOC);

$requestsql =" SELECT * FROM `domaine`";
$result = $pdo->query($requestsql);


$domaines = $result->fetchAll(PDO::FETCH_ASSOC);

if (!empty($_POST)) {
    $formup = true;
    if    (empty($_POST['libellee'])){
        $formup = false;
    }
    if    (empty($_POST['url'])){
        $formup = false;
    }

    if ($formup == true) {
       
        $requestsql = " INSERT INTO favoris (libelle, url, id_dom) VALUES ('" . $_POST['libellee'] ."',  '" . $_POST['url'] ."', " . $_POST['domaines'] ."   )";
        $result = $pdo->query($requestsql);
        $lastId = $pdo -> lastinsertId();
        $requestsql = " INSERT INTO cat_fav (id_cat, id_fav) VALUES (" .$_POST['categorie'].", " . $lastId .")";
        $result = $pdo->query($requestsql);
        header('Location: index.php');
    }


    
       
}


?>
<form action="" method="post" class="text-center">
   <p> </p>
        <label for="libelle">Libellée</label>
        <input value="" type="text" name="libellee" id="libellee" require/>

        <label for="url">url</label>
        <input value="" type="text" name="url" id="url" require/>

        <label for="url">categorie</label>
        <select name="categorie" id="categorie">
            <?php
            foreach ($categories as $cat) {
                ?>
                    <option value="<?php echo $cat['id_cat'] ?>"><?php echo $cat['nom_cat'] ?></option>
                <?php       
                }   
                
                ?>
        </select>
        <select name="domaines" id="domaines">
            <?php
            foreach ($domaines as $dom) {
                ?>
                    <option  value="<?php echo $dom['id_dom'] ?>"><?php echo $dom['nom_dom'] ?></option>
                <?php       
                }   
                
                ?>
        </select>
        
        
        <button type="submit" class="border border-amber-900">Crée</button>

</form>