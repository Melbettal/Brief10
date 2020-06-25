    <?php
    include_once 'dbh.php';
    ?>
    <!DOCTYPE html>
    <html lang="zxx">

    <head>
        <meta charset="UTF-8">
        <meta name="description" content="Ogani Template">
        <meta name="keywords" content="Ogani, unica, creative, html">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Ogani</title>

        <!-- Google Font -->
        <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

        <!-- Css Styles -->
        <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
        <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
        <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
        <link rel="stylesheet" href="css/nice-select.css" type="text/css">
        <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
        <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
        <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
        <link rel="stylesheet" href="css/style.css" type="text/css">

    </head>

    <body>
        <?php
        include 'top.php';
        ?>

        <!-- Breadcrumb Section Begin -->
        <section class="breadcrumb-section set-bg" data-setbg="img/breadcrumb.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <div class="breadcrumb__text">
                            <h2>Checkout</h2>
                            <div class="breadcrumb__option">
                                <a href="./index.html">Home</a>
                                <span>Checkout</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Breadcrumb Section End -->

        <!-- Checkout Section Begin -->
        <section class="checkout spad">
            <div class="container">
                <div class="checkout__form">
                    <h4>Details de livraison</h4>
                    <form action="features.php" method="post">
                        <div class="row">
                            <div class="col-lg-8 col-md-6">
                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="checkout__input">
                                            <p>Prénom<span>*</span></p>
                                            <input type="text" name="first_name">
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="checkout__input">
                                            <p>Nom<span>*</span></p>
                                            <input type="text" name="last_name">
                                        </div>
                                    </div>
                                </div>
                                <div class="checkout__input">
                                    <p>Mot de passe du compte<span>*</span></p>
                                    <input type="text" name="mdp">
                                </div>
                                <div class="checkout__input">
                                    <p>Address<span>*</span></p>
                                    <input type="text" placeholder="Street Address" class="checkout__input__add" name="adress">
                                    <input type="text" placeholder="Apartment, suite, unite ect (optinal)" name="adress">
                                </div>
                                <div class="checkout__input">
                                    <p>Postcode / ZIP<span>*</span></p>
                                    <input type="text" name="Postcode">
                                </div>
                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="checkout__input">
                                            <p>Téléphone<span>*</span></p>
                                            <input type="text" name="Phone">
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="checkout__input">
                                            <p>Pays<span>*</span></p>
                                            <input type="text" name="Country">
                                        </div>
                                    </div>
                                </div>
                                <div class="checkout__input">
                                    <p>Ville<span>*</span></p>
                                    <input type="text" name="City">
                                </div>
                                <div class="checkout__input">
                                    <p>Details commande</p>
                                    <input type="text" placeholder="Plus de details sur votre commande et la livraison." name="Details">
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <div class="checkout__order">
                                    <table id="table">
                                        <tr>
                                            <h4>Ta commande</h4>
                                        </tr>
                                        <t>
                                            <th>Produit</th>
                                            <th>Total</th>
                                        </t>
                                        <?php
                                        $sql = "SELECT * FROM shopping_cart;";
                                        $result = mysqli_query($con, $sql);
                                        $show = mysqli_num_rows($result);
                                        // 
                                        $totalPrice = 0;
                                        if (!isset($_GET["azerty"])) {
                                            while ($rows = mysqli_fetch_assoc($result)) {
                                                $totalPrice += $rows['produit_prix'];
                                        ?>
                                                <tr>
                                                    <input type="hidden" name="prodId[]" value="<?php echo $rows['id_produit'] ?>">
                                                    <td><?php echo $rows['produit_nom']; ?></td>
                                                    <td class="Prix"><?php echo $rows['produit_prix']; ?><span>DH<span></td>
                                                </tr>
                                        <?php
                                            }
                                        }
                                        ?>
                                    </table>
                                    <!-- <h3> Total  &#8369<span id="sum">0</span></h3>  -->


                                    <div class="checkout__order__total" id="Totalprix">Total <span id="sum"><?php echo $totalPrice ?>DH</span></div>
                                    <?php



                                    //   if (!empty($_SESSION['gcCart'])){ 

                                    //     echo '<script>totalprice()</script>';

                                    //       $count_cart = count($_SESSION['gcCart']);

                                    //     for ($i=0; $i < $count_cart  ; $i++) { 

                                    //            $query = $query = "SELECT * FROM `produit` p , `categorie` c
                                    //            WHERE p.`PROID`=c.`PROID` AND  p.`CATEGID` = c.`CATEGID`  and p.`PROID` = '".@$_SESSION['gcCart'][$i]['productid']."'";
                                    //                 $mydb->setQuery($query);
                                    //           $cur = $mydb->loadResultList();


                                    //      foreach ($cur as $result) 

                                    ?>
                                    <button type="submit" class="site-btn" name="checkout-submit">Commander</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </section>
        <!-- Checkout Section End -->

        <!-- show product from cart to checkout -->
        <!--  -->

        <!-- Js Plugins -->
        <script src="js/jquery-3.3.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.nice-select.min.js"></script>
        <script src="js/jquery-ui.min.js"></script>
        <script src="js/jquery.slicknav.js"></script>
        <script src="js/mixitup.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/main.js"></script>
        <script src="js/sum.js"></script>

        <script>
            function totalprice() {
                var table = document.getElementById('table');
                var items = table.getElementsByTagName('output');

                var sum = 0;
                for (var i = 0; i < items.length; i++)
                    sum += parseFloat(items[i].value);

                var output = document.getElementById('sum');
                output.innerHTML = sum.toFixed(2);

                var deliveryfee = document.getElementById('deliveryfee').value;
                var pickupfee = document.getElementById('pickupfee').value;
                var fee = 0.00;
                // alert(paymethod);
                if (deliveryfee.checked == true) {
                    document.getElementById('fee').innerHTML = document.getElementById('BRGY').value;

                } else if (pickupfee.checked == true) {
                    document.getElementById('fee').innerHTML = 0.0;

                }

                // over all price
                var overall = 0;

                overall = sum + parseFloat(fee);

                var overallprice = document.getElementById('overall');

                overallprice.innerHTML = overall.toFixed(2);

                document.getElementById("alltot").value = overallprice.innerHTML;


            }
        </script>



        <?php
        include 'footer.php';
        ?>
    </body>

    </html>