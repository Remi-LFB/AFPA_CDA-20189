<?php

echo '<h1>Les bases</h1>';

echo '<h2>Exercice 1</h2>';

echo 'IP du serveur : ' . $_SERVER['SERVER_ADDR'] . '<br>';
echo 'IP du client : ' . $_SERVER['REMOTE_ADDR'] . '<br><br>';

echo '<h1>Les boucles</h1>';

echo '<h2>Exercice 1</h2>';

for ($a = 1; $a < 150; $a += 2) {
    if ($a != 149) {
        echo "$a, ";
    }
    else {
        echo "$a.";
    }
}

echo '<br><br>';

echo '<h2>Exercice 2</h2>';

$a = 1;

do {
    echo "$a. Je dois faire des sauvegardes régulières de mes fichiers <br>";
    $a++;
} while ($a <= 500);

echo '<br>';

echo '<h2>Exercice 3</h2>';

$tab = '<table border="1"><tr>';

for ($a = 0; $a <= 9; $a++) {
    $tab .= "<th>$a</th>";
}

for ($a = 1; $a <= 9; $a++) {
    $tab .= "<tr><th>$a</th>";

    for ($b = 1; $b <= 9; $b++) {
        $tab .= '<td>' . $a * $b . '</td>';
    }

    $tab .= '</tr>';
}

$tab .= '</table><br>';

echo $tab;