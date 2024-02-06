
<?php
include("pdo.php");
include("header.php");

$requestsql =" SELECT libelle, url FROM `favoris` WHERE id_fav = " . $_GET["id_fav"];
$result = $pdo->query($requestsql);

$favoris = $result->fetch(PDO::FETCH_ASSOC);

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
           
         $requestsql = " UPDATE favoris SET libelle = '".$_POST['libellee'] . "', url = '".$_POST['url'] . "', id_dom = ".$_POST['domaines'] . "  WHERE id_fav= " . $_GET['id_fav'];
                  $result = $pdo->query($requestsql);
        $deletecatfav = " DELETE  FROM cat_fav WHERE id_fav =  " . $_GET['id_fav'];
                $result = $pdo->query($deletecatfav);
        $updatecatfav = "INSERT INTO cat_fav VALUES ( " . $_GET['id_fav'] . ",  ".$_POST['categorie'] . " ); ";           
                $pdo->query($updatecatfav);
        header('Location: index.php');


        }

}
?>
<form action="" method="post" class="text-center  sm:text-left grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3">
   <p> </p>
        <label for="libelle">Modifier le libelee</label>
        <input value="<?php echo $favoris['libelle']?>" type="text" name="libellee" id="libellee" require/>

        <label for="url">modifier l'url: </label>
        <input value="<?php echo $favoris['url']?>" type="text" name="url" id="url" require/>
        
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

        
        <button type="submit" value="modifier">Modifier</button>

</form>
