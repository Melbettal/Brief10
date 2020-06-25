<?php
function getAllDataFromTable($table)
{
    include 'dbConnection.php';
    $req = "SELECT * FROM $table";
    $res = $cnx->query($req);
    // 
    return $res;
}
// 
if (isset($_POST["idProduit"])) {
    try {
        include 'dbConnection.php';
        $colName = $_POST['colName'];
        $req = $cnx->prepare("UPDATE product SET $colName = ? WHERE id = ?");
        $req->bind_param("ss", $_POST["colValue"], $_POST["idProduit"]);
        echo $req->execute();
    } catch (Exception $err) {
        echo 'error';
    }
}
// delete
if (isset($_POST["deleteProdId"])) {
    try {
        include 'dbConnection.php';
        $req = $cnx->prepare("DELETE FROM product WHERE id = ?");
        $req->bind_param("s", $_POST["deleteProdId"]);
        echo $req->execute();
    } catch (Exception $err) {
        echo 'error';
    }
}
// Login
if (isset($_POST["emailUser"])) {
    session_start();
    try {
        include 'dbConnection.php';
        $retValue = 'null';
        $req = $cnx->prepare("SELECT id_admin FROM `admin` WHERE email_admin = ? AND pass_admin = ?");
        $req->bind_param("ss", $_POST["emailUser"], $_POST["passUser"]);
        $req->execute();
        $req->bind_result($retValue);
        $req->fetch();
        // 
        if ($retValue != 'null') {
            $_SESSION['idAdmin'] = $retValue;
            header("location: admin.php");
        } else {
            header("location: login.php?err=1");
        }
        // 
        // echo $retValue;
    } catch (Exception $err) {
        echo 'error';
    }
}
