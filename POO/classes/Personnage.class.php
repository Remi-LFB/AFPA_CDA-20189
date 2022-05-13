<?php

class Personnage
{
    private string $_nom;
    private string $_prenom;
    private int $_age;
    private string $_sexe;
    private $test;

    public function getNom(): string
    {
        return $this->_nom;
    }

    public function getPrenom(): string
    {
        return $this->_prenom;
    }

    public function getAge(): int
    {
        return $this->_age;
    }

    public function getSexe(): string
    {
        return $this->_sexe;
    }

    public function setNom($nom): void
    {
        $this->_nom = $nom;
    }

    public function setPrenom($prenom): void
    {
        $this->_prenom = $prenom;
    }

    public function setAge($age): void
    {
        $this->_age = $age;
    }

    public function setSexe($sexe)
    {
        $this->_sexe = $sexe;
    }

    public function __toString() {
        return "Nom : $this->_nom<br>Prénom : $this->_prenom<br>Âge : $this->_age<br>Sexe : $this->_sexe<br><br>";
    }
}

$p = new Personnage();
$p->setNom('Courant');
$p->setPrenom('Theo');
$p->setAge(18);
$p->setSexe('Masculin');

echo $p;

echo 'Je m\'appelle ' . $p->getPrenom() . ' ' . $p->getNom();