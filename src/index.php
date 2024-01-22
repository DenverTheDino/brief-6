<?php include("header.php");?>
<?php include("pdo.php");?>  



<?php $result = $pdo->query("SELECT * FROM favoris ");
$favoris = $result->fetchALL(PDO::FETCH_ASSOC); 

?>
<?php $result = $pdo->query("SELECT * FROM domaine ");
$domaines = $result->fetchALL(PDO::FETCH_ASSOC); 

?>

    <section id="bookmark">
        <table class="flex justify-center mb-5 odd:bg-white even:bg-orange-200">
            <tr class=" border border-amber-900 bg-emerald-300 " >
                <th class=" border border-amber-900 text-fuchsia-600">ID Favori</th>
                <th class=" border border-amber-900 text-fuchsia-600">Libellée</th>
                <th class=" border border-amber-900 text-fuchsia-600">Date ajout</th>
                <th class=" border border-amber-900 text-fuchsia-600">Url</th>
                <th class=" border border-amber-900 text-fuchsia-600">ID Domaine</th>
                <th class=" border border-amber-900 text-fuchsia-600">Update</th>
                <th class=" border border-amber-900 text-fuchsia-600">Delete</th>
            </tr>
            <?php
            foreach ($favoris as $fav){
            ?>
            <tr class=" border border-amber-900 hover:bg-sky-200 odd:bg-white even:bg-slate-200">
                <td class=" border-2 border-amber-200 text-center underline"><?php echo $fav['id_fav'] ?></td>
                <td class=" border-2 border-amber-200 "><?php echo $fav['libelle'] ?></td>
                <td class=" border-2 border-amber-200"><?php echo $fav['date_creation']?></td>
                <td class=" border-2 border-amber-200"><?php echo $fav['url']?></td>
                <td class=" border-2 border-amber-200 text-center"><?php echo $fav['id_dom']?></td>
                <td class=" border-2 border-amber-200 bg-green-400 hover:bg-sky-700" > <button class="mx-4 1/5"><i class="fa-solid fa-lemon"></i></button></td>
                <td class=" border-2 border-amber-200 bg-red-700 hover:bg-sky-700"> <button class="mx-4 1/5"><i class="fa-solid fa-feather"></i></i></button></td>
            </tr>
            <?php
           }
           ?>
        </table>
        
        <table class="bookmark__table flex justify-center">
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
        </table>

    </section>
    
</body>
</html>