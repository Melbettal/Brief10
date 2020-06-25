<?php
if (isset($_POST['checkout-submit'])) {

    require 'dbh.php';

    $first_name = $_POST['first_name'];
    $last_name = $_POST['last_name'];
    $Country = $_POST['Country'];
    $Adress = $_POST['adress'];
    $City = $_POST['City'];
    $Postcode = $_POST['Postcode'];
    $Phone = $_POST['Phone'];
    $pass_client = $_POST['Mdp'];
    $Details = $_POST['Details'];

//insertion into the database
    $sql = "INSERT INTO checkoutinfo (id_client, first_name, last_name, Country, Adress, City, Postcode, Phone, pass_client, Details) VALUES
    ('', '$first_name', '$last_name', '$Country', '$Adress', '$City', '$Postcode', '$Phone', '$pass_client', '$Details');";
    mysqli_query($conn, $sql); 

    //check if fields are empty
    if (empty($first_name) || empty($last_name) || empty($Country) || empty($Address) || empty($City) || empty($Postcode) || empty($Phone) || empty($Mdp) ) 
    {
        header("Location: ./checkout.php?error=emptyfields&prenom=".$first_name."&nom=".$last_name);
        exit();
    }
    else {

        $sql = "SELECT id_client FROM client WHERE pass_client=?";
        $stmt = mysqli_stmt_init($conn);
        if (!mysqli_stmt_prepare($stmt, $sql)) {
            header("Location: ./checkout.php?error=sqlerror");
            exit();
        }
        else {
            mysqli_stmt_bind_param($stmt, "s", $pass_client);
            mysqli_stmt_execute($stmt);
            mysqli_stmt_store_result($stmt);
            $resultcheck = mysqli_stmt_run_rows($stmt);  
            if ($resultcheck = 0) {
                header("Location: ./checkout.php?error=usernotexisting&prenom=".$first_name);
                exit();
            }
        }
    }
}

