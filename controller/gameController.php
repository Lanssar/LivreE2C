<?php
    session_start();
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

    if(isset($_SESSION["id"])) {
        $navButtons[]= [
            "label" => "Mon compte",
            "path" => "../controller/accountController.php"
        ];
    }

    require_once("../view/accountView.php")
?>




