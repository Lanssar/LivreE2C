<?php

class Model {
    private PDO $bdd;

    public function __construct()
    {
        try {
            $this->bdd = new PDO ('mysql:host=localhost;dbname=livres_e2C;charset=utf8','livres_e2C_admin','Lanssar21');
        }catch(Exception $e) {
            echo('problème de connexion : '.$e->getMessage());

        }
        
    }

    public function getUserByEmail (string $email){
        $sqlQuery = "SELECT id, pseudo, mot_de_passe FROM Users WHERE email = :email";
        $statement = $this->bdd->prepare($sqlQuery);
        $statement->execute([
            'email' => $email
        ]);
        $req = $statement->fetch();//ou fetchAll()

        return $req;

    }

    public function getAllBooks() {
        $sqlQuery = "SELECT titre, auteur, genre, date, id FROM livres_vw";
        $statement = $this->bdd->prepare($sqlQuery);
        $statement->execute();
        $req = $statement->fetchAll();

        return $req;
    }
}