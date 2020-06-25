<?php
#Lien pour l'article de traitment pour l'upload des photos
#https://makitweb.com/how-to-upload-image-file-using-ajax-and-jquery/
$filename = $_FILES['imgProduit']['name'];
$location = "imgs/" . $filename;
$imageFileType = pathinfo($location, PATHINFO_EXTENSION);
$fileNameNoExtension = pathinfo($location, PATHINFO_FILENAME);
// 
if (strlen($fileNameNoExtension) <= 100) {
    if ($imageFileType == "png") {
        if (move_uploaded_file($_FILES['imgProduit']['tmp_name'], $location)) {
            include 'dbConnection.php';
            // 
            try {
                include 'dbConnection.php';
                $req = $cnx->prepare("INSERT INTO produit (`nom_produit`,`qt_max`,`id_image`,`id_categori`,`prix_u`) VALUES(?,?,?,?,?)");
                $req->bind_param("sssss", $_POST["nomProduit"], $_POST["qtProduit"], $fileNameNoExtension, $_POST["catProduit"], $_POST["prixProduit"]);
                if ($req->execute() == 1)
                    echo '105';
                else echo '104';
            } catch (Exception $err) {
                echo '103';
            }
        } else echo "102";
    } else echo "101";
} else {
    echo '100';
}
