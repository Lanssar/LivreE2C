<?php

    $title = "Mon compte";
    $subtitle = "Mes infoss à moi";

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

    require_once("../view/accountView.php")
?>




