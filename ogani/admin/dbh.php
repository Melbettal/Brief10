<?php 

// $dbServername = "localhost";
// $dbUsername = "root";
// $dbPassword = "";
// $dbName = "brief9";

// $con = mysqli_connect($dbServername, $dbUsername, $dbPassword, $dbName);

// if (!$con) {
//     die("Connection non effectuer: ".mysqli_connect_error());
//}
if(!isset($_SESSION)) 
    { 
        session_start(); 
$con=mysqli_connect("localhost","root","","brief9");
define('SERVER_PATH',$_SERVER['DOCUMENT_ROOT'].'/php/Brief-09/');
define('SITE_PATH','http://127.0.0.1/php/Brief-09/');
    
define('PRODUCT_IMAGE_SERVER_PATH',SERVER_PATH.'media/product/');
define('PRODUCT_IMAGE_SITE_PATH',SITE_PATH.'media/product/');
    }
// ?>
