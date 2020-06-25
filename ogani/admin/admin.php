<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Gestion de stock</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
    <link rel="stylesheet" href="css/toasts.css">
    <!--  -->
    <script src="js/jquery-3.3.1.min.js"></script>
</head>

<body>
    <header class="header">
        <div class="container">
            <div class="row">
                <div class="m-auto">
                    <div class="header__logo">
                        <a href="./login.php"><img src="img/logo.png" alt=""></a>
                    </div>
                </div>
            </div>
    </header>
    <!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-section set-bg" data-setbg="img/breadcrumb.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>Gestion de stock</h2>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

    <!-- Product Section Begin -->
    <section class="product spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-5">
                    <div class="sidebar">
                        <div class="sidebar__item featured__controls" style="text-align: left">
                            <h4>Catégories</h4>
                            <ul>
                                <li class="active mb-1" data-filter="*">Tous</li>
                                <?php
                                include 'functions.php';
                                // 
                                $categories = getAllDataFromTable('categorie');
                                while ($row = $categories->fetch_assoc()) {
                                    $categId = $row["id_categorie"];
                                    $categName = $row["nom_categorie"];
                                    echo "<li class='mb-1' data-filter='.$categName' data-categId=$categId style='display: block;width: fit-content;'>$categName</li>";
                                }
                                ?>
                            </ul>
                        </div>
                        <div class="sidebar__item sort-controls flex-column align-items-start" style="text-align: left">
                            <h4>Filtrer</h4>
                            <div class="controls-component m-0">
                                <span>Stock :</span>
                                <button type="button" class="control-sort sort-asc" data-sort="stock:asc"></button>
                                <button type="button" class="control-sort sort-desc" data-sort="stock:desc"></button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-9 col-md-7">
                    <div class="w-100" style="margin-bottom: 20px;">
                        <div class="row justify-content-around">
                            <div class="hero__search__form ">
                                <form class="searchCont">
                                    <input type="text" placeholder="Rechercher un produit..." id="sort-srch-input">
                                    <span class="site-btn">
                                        chercher
                                    </span>
                                </form>
                            </div>
                            <button class="site-btn" id="btnAddProduct" data-filter="*" data-toggle="modal" data-target="#addProductModal">
                                Ajouter un Porduit
                            </button>
                        </div>
                    </div>
                    <div class="row featured__filter">
                        <?php
                        // include 'functions.php';
                        // 
                        $produits = getAllDataFromTable('produit');
                        $index = 0;
                        while ($row = $produits->fetch_assoc()) {
                            $prodId = $row["id_produit"];
                            $prodName = $row["nom_produit"];
                            $prodCategId = $row["id_categori"];
                            $prodPrice = $row["prix_u"];
                            $prodImage = $row["id_image"];
                            $categName = null;
                            $qt = $row["qt_max"];
                            // 
                            $categs = getAllDataFromTable('categorie');
                            while ($row = $categs->fetch_assoc()) {
                                if ($prodCategId == $row["id_categorie"])
                                    $categName = $row["nom_categorie"];
                            }
                            // 
                            echo "<div class='col-lg-4 col-md-6 col-sm-6 mix $categName prodBox' data-stock=$qt data-id='prod-$index'>";
                            // 
                            echo "<div class='featured__item'>";
                            // 
                            echo "<div class='featured__item__pic set-bg' data-setbg='imgs/$prodImage.png'>";
                            // 
                            // 
                            echo "<ul class='featured__item__pic__hover'>";
                            echo "<li><a onclick='deleteProd(this,$prodId)'><i class='fa fa-trash'></i></a></li>";
                            echo "</ul>";
                            // 
                            echo "</div>";
                            echo "<div class='featured__item__text' style='text-align:left'>";
                            // 
                            echo "<div class='row justify-content-between align-items-center m-0 mb-2'>";
                            echo "<h6 class='m-0'><a contenteditable='false' class='prodNameText'>$prodName</a></h6>";
                            // echo "<i class='fa fa-cross' style='cursor:pointer;' onclick='deleteProd($prodId)'></i>";
                            echo "</div>";
                            // 
                            echo "<div class='row justify-content-between align-items-center m-0 mb-2'>";
                            echo "<h5 class='m-0'><span contenteditable='false' class='prodPrixText'>$prodPrice</span> <span>DH</span></h5>";
                            echo "<i class='fa fa-edit' style='cursor:pointer;' onclick='editSwitch(this,`price`,`prod-$index`,$prodId)'></i>";
                            echo "</div>";
                            // 
                            echo "<div class='row justify-content-between align-items-center m-0'>";
                            echo "<h6 class='m-0'><span>Quantité en stock : </span><a contenteditable='false' class='prodQuantityText'>$qt</a></h5>";
                            echo "<i class='fa fa-edit' style='cursor:pointer;' onclick='editSwitch(this,`qt`,`prod-$index`,$prodId)'></i>";
                            echo "</div>";
                            // 
                            echo "</div>";
                            // 
                            echo "</div>";
                            // 
                            echo "</div>";
                            // 
                            $index++;
                        }
                        ?>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--  -->
    <div class="modal fade" id="addProductModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLongTitle">Ajouter un produit</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form>
                        <div class="form-group">
                            <label for="addProductName" class="col-form-label">Nom produit:</label>
                            <input type="text" class="form-control" id="addProductName">
                        </div>
                        <div class="form-group d-flex flex-column">
                            <label for="addCategorie" class="col-form-label">Categorie:</label>
                            <select id="addCategorie" class="w-auto">
                                <?php
                                $categories = getAllDataFromTable('categorie');
                                while ($row = $categories->fetch_assoc()) {
                                    $categId = $row["id_categorie"];
                                    $categName = $row["nom_categorie"];
                                    echo "<option value=$categId>$categName</option>";
                                }
                                ?>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="addProductPrice" class="col-form-label">Prix Unitaire:</label>
                            <input type="text" class="form-control" id="addProductPrice">
                        </div>
                        <div class="form-group">
                            <label for="addProductQt" class="col-form-label">Quantité:</label>
                            <input type="number" class="form-control" id="addProductQt">
                        </div>
                        <div class="form-group">
                            <label for="addProductImage" class="col-form-label">Image de produit:</label>
                            <input type="file" class="form-control" id="addProductImage">
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Annuler</button>
                    <button type="button" class="btn btn-primary" id="btnAddProductExecute">Ajouter</button>
                </div>
            </div>
        </div>
    </div>
    <!-- Product Section End -->

    <!-- Footer Section Begin -->
    <?php
    include 'footer.php';
    ?>
    <!-- Footer Section End -->

    <!-- Js Plugins -->
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/jquery-ui.min.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/mixitup.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/main.js"></script>
    <!--  -->
    <script src="myJs/admin.js"></script>
    <script src="myJs/toast.js"></script>
</body>

</html>