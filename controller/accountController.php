<?php
    session_start();
    $isLogged = true;
    
    $title = "Mon compte";
    $subtitle = "Mes infos qu'a moi";

$navButtons = 
[
    [
        "label" => "Accueil",
        "path" => "../controller/homeController.php"
    ],
    [
        "label" => "Bibliothèque",
        "path" => "../controller/libraryController.php"
    ],
    [
        "label" => "Espace détente",
        "path" => "../controller/gameController.php"
    ],
    [
        "label" => "Qui sommes nous ?",
        "path" => "../controller/usController.php"
    ]
];


if(!isset($_SESSION['id'])) {

    require_once("../view/accountView.php");
} else {
    header("location: ../controller/homeController.php");
}


?>