<?php

$host = 'localhost';
$dbName = 'jarditou';
$user = 'root';
$password = 'admin';

try {
    $db = new PDO('mysql:host=' . $host . ';charset=utf8;dbname=' . $dbName, $user, $password);
    $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $exception) {
    print 'Erreur : ' . $exception->getMessage() . '<br>';
    die();
}

$req = $db->query('SELECT * FROM produits');
$tab = $req->fetchAll(PDO::FETCH_OBJ);

foreach ($tab as $row) {
    echo "<li>$row->pro_libelle</li>";
}