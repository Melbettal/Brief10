<?php
if (!empty($_POST) && !empty($_POST['username']) && !empty($_POST['password'])) {
    require_once 'inc/functions.php';
    require_once 'inc/db.php';
    $req = $pdo->prepare('SELECT * FROM client WHERE email_client = :username');
    $req->execute(['username' => $_POST['username']]);
    $user = $req->fetch();
    echo $user->pass_client;
    if (password_verify($_POST['password'], $user->pass_client)) {
        $_SESSION['auth'] = $user;

        $_SESSION['flash']['success'] = 'Vous êtes maintenant connecté';

        header('Location: confirm.php');
        exit();
    } else {
        $_SESSION['flash']['danger'] = 'Identifiant ou mot de passe incorrecte';
    }
}
?>
<?php require 'inc/header.php'; ?>

<h1>Se connecter</h1>

<form action="" method="POST">

    <div class="form-group">
        <label for="">Pseudo ou email</label>
        <input type="text" name="username" class="form-control" />
    </div>

    <div class="form-group">
        <label for="">Mot de passe <a href="forget.php">(J'ai oublié mon mot de passe)</a></label>
        <input type="password" name="password" class="form-control" />
    </div>

    <div class="form-group">
        <label>
            <input type="checkbox" name="remember" value="1" /> Se souvenir de moi
        </label>
    </div>

    <button type="submit" class="btn btn-primary">Se connecter</button>

</form>

<?php require 'inc/footer.php'; ?>