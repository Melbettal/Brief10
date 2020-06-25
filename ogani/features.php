<?php
if (isset($_POST['checkout-submit'])) {

    require 'dbh.php';

    // $first_name = $_POST['first_name'];
    // $last_name = $_POST['last_name'];
    // $Country = $_POST['Country'];
    // $Adress = $_POST['adress'];
    // $City = $_POST['City'];
    // $Postcode = $_POST['Postcode'];
    // $Phone = $_POST['Phone'];
    // $pass_client = $_POST['Mdp'];
    // $Details = $_POST['Details'];

    // //insertion into the database
    // $sql = "INSERT INTO checkoutinfo (id_client, first_name, last_name, Country, Adress, City, Postcode, Phone, pass_client, Details) VALUES
    // ('', '$first_name', '$last_name', '$Country', '$Adress', '$City', '$Postcode', '$Phone', '$pass_client', '$Details');";
    // mysqli_query($con, $sql);

    //check if fields are empty
    if (empty($first_name) || empty($last_name) || empty($Country) || empty($Address) || empty($City) || empty($Postcode) || empty($Phone) || empty($Mdp)) {
        // header("Location: ./checkout.php?error=emptyfields&prenom=" . $first_name . "&nom=" . $last_name);
        // exit();
        // echo "qsdqsd";

        // $req = $con->prepare("UPDATE product SET ");
        // $req->bind_param("s", $_POST["deleteProdId"]);
        // echo $req->execute();
        $execution = "";
        for ($i = 0; $i < count($_POST['prodId']); $i++) {
            $id = $_POST['prodId'][$i];
            $execution .= "UPDATE product SET qty = qty - 1 WHERE id = $id; ";
        }
        if (mysqli_multi_query($con, $execution)) {
            // $idis = join(",", $_POST['prodId']);
            // $execution = "DELETE FROM shopping_cart WHERE id_produit in ($idis);"; // THIS DID NOT WORK WHICH IS OMEGA RETARDED BTW 20min DEBUGING AND NO RESULT AAAAAAAAAAAAAAAAA

            // mysqli_query($con, $execution);
            header("Location: ./checkout.php?azerty=true");
            exit();
        } else {
            header("Location: ./checkout.php?err=100");
            exit();
        }
    } else {

        // $sql = "SELECT id_client FROM client WHERE pass_client=?";
        // $stmt = mysqli_stmt_init($con);
        // if (!mysqli_stmt_prepare($stmt, $sql)) {
        //     header("Location: ./checkout.php?error=sqlerror");
        //     exit();
        // } else {
        //     mysqli_stmt_bind_param($stmt, "s", $pass_client);
        //     mysqli_stmt_execute($stmt);
        //     mysqli_stmt_store_result($stmt);
        //     $resultcheck = mysqli_stmt_run_rows($stmt);
        //     if ($resultcheck = 0) {
        //         header("Location: ./checkout.php?error=usernotexisting&prenom=" . $first_name);
        //         exit();
        //     }
        // }
    }
}
