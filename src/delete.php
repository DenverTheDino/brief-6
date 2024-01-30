<?php include("pdo.php");

if(isset($_GET['id_fav'])) {
    $record_id = $_GET['id_fav'];
    print_r($record_id);

    $requeteSQL = "DELETE FROM favoris WHERE id_fav =". $_GET['id_fav'];
    // A decommenter si  suprimer
    // $delete = $pdo->query($requeteSQL);
    // Votre code de suppression d'enregistrement ici...
    // Supposons que vous avez déjà supprimé l'enregistrement ici...

    // Vérifie si l'enregistrement a été supprimé avec succès
    // Par exemple, si vous avez utilisé une fonction de suppression de votre framework ORM ou une requête SQL DELETE
    // Vous pouvez remplacer cette condition par votre propre logique de suppression
    // Exemple :
    $is_deleted = true; // Supposons que l'enregistrement a été supprimé avec succès

    if ($is_deleted) {
        echo "L'enregistrement a été supprimé avec succès.";
        header("Refresh: 3; URL=index.php");
    } else {
        echo "Erreur lors de la suppression de l'enregistrement.";
        header("Refresh: 4; URL=index.php");
    }
}