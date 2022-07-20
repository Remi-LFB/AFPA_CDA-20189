<?php

$host = 'localhost';
$dbName = 'ajax_regions';
$user = 'root';
$password = 'admin';

try {
    $db = new PDO('mysql:host=' . $host . ';charset=utf8;dbname=' . $dbName, $user, $password);
    $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $exception) {
    print 'Erreur : ' . $exception->getMessage() . '<br>';
    die();
}

$req = $db->query('SELECT reg_id, reg_v_nom FROM regions');
$tab = $req->fetchAll(PDO::FETCH_OBJ);

header("Access-Control-Allow-Origin: *");
header('Content-Type: application/json');
echo json_encode($tab);