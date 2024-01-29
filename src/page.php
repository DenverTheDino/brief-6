

<?php
require("pdo.php");
include ("header.php");

$result = $pdo->query("SELECT * FROM `favoris` WHERE id_fav = " . $_GET['id_favori']);
$favoris = $result->fetch(PDO::FETCH_ASSOC);
?>

<table class="border border-pink-500 mx-36 mt-40 justify center " >
  <thead>
    <tr>
      <th class=" ">ID favori</th>
      <th class=" ">Libellée</th>
      <th class=" ">Date de création</th>
      <th class=" ">Url</th>
      <th class=" ">ID Domaines</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td class="border border-2-red-200"><?php echo $favoris['id_fav']?></td>
      <td class="border border-2-red-200"><?php echo $favoris['libelle']?></td>
      <td class="border border-2-red-200"><?php echo $favoris['date_creation']?></td>
      <td class="border border-2-red-200"><?php echo $favoris['url']?></td>
      <td class="border border-2-red-200"><?php echo $favoris['id_dom']?></td>
    </tr>
   


  </tbody>
</table>