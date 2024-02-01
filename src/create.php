<?php
include("pdo.php");
include("header.php");

$requestsql =" SELECT * FROM `categorie`";
$result = $pdo->query($requestsql);

$categories = $result->fetchAll(PDO::FETCH_ASSOC);
var_dump($categories)

?>
<form action="" method="post" class="text-center">
   <p> </p>
        <label for="libelle">Libellée</label>
        <input value="" type="text" name="libellee" id="libellee" require/>

        <label for="url">date de création</label>
        <input value="" type="text" name="date" id="date" require/>

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
        
        
        <button type="submit" class="border border-amber-900">Crée</button>

</form>