<?php
    
    //var_dump($username);
    $title = "Faites voter choix";
    $subtitle = "Y en a pout tous les gouts";

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

    require_once("../view/libraryView.php")


?>


