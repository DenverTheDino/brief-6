<?php include("header.php");?>
<?php include("pdo.php");?>




<?php $result = $pdo->query("SELECT * FROM favoris ");
$favoris = $result->fetchALL(PDO::FETCH_ASSOC); 

?>
<?php $result = $pdo->query("SELECT * FROM domaine ");
$domaines = $result->fetchALL(PDO::FETCH_ASSOC); 

?>
<?php
    $result = $pdo->query("SELECT * FROM domaine ");
    $domaines = $result->fetchALL(PDO::FETCH_ASSOC);
    
?>
<?php
    $result = $pdo->query("SELECT * FROM categorie ");
    $categorie = $result->fetchALL(PDO::FETCH_ASSOC);
    
?>


    <section id="bookmark">
    <?php
    if (isset($_GET['filtre']))
    {
        
    }
      
    
?>
 <?php
          // Affichage (SELECT) :
        if(!empty($_GET['search'])){
          $result = $pdo->query("SELECT domaine.nom_dom, favoris.libelle, favoris.url, favoris.date_creation, favoris.id_fav FROM favoris INNER JOIN domaine ON favoris.id_dom = domaine.id_dom WHERE libelle LIKE '%".$_GET['search']."%' OR nom_dom LIKE '%".$_GET['search']."%' OR url LIKE '%".$_GET['search']."%'");
        } else{
            if(isset($_GET['categorie'],$_GET['categorie']) && $_GET['categorie'] !== "none" && $_GET['domaine'] !== "none"){
                $result = $pdo->query("SELECT * FROM favoris INNER JOIN cat_fav ON favoris.id_fav=cat_fav.id_fav INNER JOIN domaine ON favoris.id_dom=domaine.id_dom INNER JOIN categorie ON cat_fav.id_cat=categorie.id_cat WHERE categorie.id_cat=".$_GET['categorie']." AND domaine.id_dom=".$_GET['domaine'].";");
             }else{
                if(isset($_GET['domaine']) && $_GET['domaine'] !== "none" && $_GET['categorie'] == "none"){
                    $result = $pdo->query("SELECT * FROM favoris INNER JOIN domaine ON favoris.id_dom=domaine.id_dom WHERE domaine.id_dom=".$_GET['domaine']." ORDER BY id_fav ASC;");
            }else{
                if(isset($_GET['categorie']) && $_GET['categorie'] !== "none" && $_GET['domaine'] == "none"){
                    $result = $pdo->query("SELECT * FROM favoris INNER JOIN cat_fav ON favoris.id_fav=cat_fav.id_fav INNER JOIN domaine ON favoris.id_dom=domaine.id_dom INNER JOIN categorie ON cat_fav.id_cat=categorie.id_cat WHERE categorie.id_cat=".$_GET['categorie'].";");  
            }else{
                $requestsql= "SELECT * FROM favoris INNER JOIN domaine ON favoris.id_dom=domaine.id_dom ORDER BY id_fav ASC";
                $result = $pdo->query($requestsql);
                
            }
    
          }
    
          }}
    



      
      $favoris = $result->fetchAll(PDO::FETCH_ASSOC);
    ?> 
    <form action="" method="get" class="text-center mb-5  ">
        <select id="monselect" name="categorie" class="border border-amber-900" >
            <option value="none">cat</option>
            <?php foreach ($categorie as $unecat) { ?>
                
            <option value="<?php echo $unecat['id_cat']?>"><?php echo $unecat['nom_cat']?></option>            
        <?php
        }
        ?>
        </select>
        <select id="monselect" name="domaine"  class="border border-amber-900">
            <option value="none" autofocus >dom </option>
            =<?php foreach ($domaines as $undom) { ?>
                
            <option value="<?php echo $undom['id_dom']?>"><?php echo $undom['nom_dom']?></option>            
        <?php
        }
        ?>
        </select>
        
        <label class="border border-amber-900" for="site-search">Search the site:</label>
        <input type="search" id="" name="search" placeholder="html"/>
        <button type="submit" class="border border-amber-900">Filtrer</button>
        
    </form>  
        <table class="flex justify-center mb-5 mt-5">
            <tr class="border border-2-red-200">
                <th>ID Favori</th>
                <th>Libellée</th>
                <th>Date ajout</th>
                <th>Url</th>
                <th>Nom de domaine</th>
                <th>Update</th>
                <th>Delete</th>
                <th>Voir </th>
            </tr>
            <?php
            foreach ($favoris as $fav){
            ?>
            <tr class=" border border-2-red-200 hover:bg-sky-200 odd:bg-white even:bg-slate-200 ">
                <td class="border border-2-red-200"><?php echo $fav['id_fav'] ?></td>
                <td class="border border-2-red-200"><?php echo $fav['libelle'] ?></td>
                <td class="border border-2-red-200"><?php echo $fav['date_creation']?></td>
                <td class="border border-2-red-200"><a href="<?php echo $fav['url']?>"> <?php echo $fav['url']?></a></td>
                <td class="border border-2-red-200"><?php echo $fav['nom_dom'] ?></td>
                <td class=" border border-2-red-200hover:bg-sky-200 text-2xl" ><button class="mx-4 1/5"><i class="fa-solid fa-rotate"></i></button></td>
                <td class=" border border-2-red-200hover:bg-sky-200 text-2xl"><button class="mx-4 1/5"><i class="fa-solid fa-trash"></i></i></button></td>
                <td class=" border border-2-red-200hover:bg-sky-200 text-2xl"><button class="mx-4 1/5"><i class="fa-solid fa-eye"></i></button></td>
            </tr>
            <?php
           }
           ?>
        </table>
        
        <!-- <table class="bookmark__table flex justify-center">
            <tr class=" border border-amber-900 bg-emerald-300">
                <th class=" border border-amber-900">ID_nom</th>
                <th class=" border border-amber-900">Nom_Dom</th>   
            </tr>
            <?php
            foreach ($domaines as $fav){
            ?>
            <tr class="border-amber-900 hover:bg-sky-200">
                <td class=" border-2 border-amber-200 text-center underline"><?php echo $fav['id_dom'] ?></td>
                <td class=" border-2 border-amber-200"><?php echo $fav['nom_dom'] ?></td>
            </tr>
            
            <?php
           }
           ?>
        </table>  -->

    </section>
    
    <?php include("footer.php");?>  