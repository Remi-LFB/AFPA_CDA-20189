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

echo '<h1>Les tableaux</h1>';

echo '<h2>Exercice 1</h2>';

$tabMoisJours = array(
    "Janvier" => 31,
    "Février" => 28,
    "Mars" => 31,
    "Avril" => 30,
    "Mai" => 31,
    "Juin" => 30,
    "Juillet" => 31,
    "Août" => 31,
    "Septembre" => 30,
    "Octobre" => 31,
    "Novembre" => 30,
    "Décembre" => 31
);

asort($tabMoisJours);
?>

<table border="1">
    <tr>
        <th>Mois</th>
        <th>Jours</th>
    </tr>
    <?php foreach ($tabMoisJours as $mois => $jours): ?>
    <tr>
        <td><?= $mois ?></td>
        <td><?= $jours ?></td>
    </tr>
    <?php endforeach; ?>
    </tr>
</table>

<?php

echo '<h2>Exercice 2</h2>';

$capitales = array(
    "Bucarest" => "Roumanie",
    "Bruxelles" => "Belgique",
    "Oslo" => "Norvège",
    "Ottawa" => "Canada",
    "Paris" => "France",
    "Port-au-Prince" => "Haïti",
    "Port-d'Espagne" => "Trinité-et-Tobago",
    "Prague" => "République tchèque",
    "Rabat" => "Maroc",
    "Riga" => "Lettonie",
    "Rome" => "Italie",
    "San José" => "Costa Rica",
    "Santiago" => "Chili",
    "Sofia" => "Bulgarie",
    "Alger" => "Algérie",
    "Amsterdam" => "Pays-Bas",
    "Andorre-la-Vieille" => "Andorre",
    "Asuncion" => "Paraguay",
    "Athènes" => "Grèce",
    "Bagdad" => "Irak",
    "Bamako" => "Mali",
    "Berlin" => "Allemagne",
    "Bogota" => "Colombie",
    "Brasilia" => "Brésil",
    "Bratislava" => "Slovaquie",
    "Varsovie" => "Pologne",
    "Budapest" => "Hongrie",
    "Le Caire" => "Egypte",
    "Canberra" => "Australie",
    "Caracas" => "Venezuela",
    "Jakarta" => "Indonésie",
    "Kiev" => "Ukraine",
    "Kigali" => "Rwanda",
    "Kingston" => "Jamaïque",
    "Lima" => "Pérou",
    "Londres" => "Royaume-Uni",
    "Madrid" => "Espagne",
    "Malé" => "Maldives",
    "Mexico" => "Mexique",
    "Minsk" => "Biélorussie",
    "Moscou" => "Russie",
    "Nairobi" => "Kenya",
    "New Delhi" => "Inde",
    "Stockholm" => "Suède",
    "Téhéran" => "Iran",
    "Tokyo" => "Japon",
    "Tunis" => "Tunisie",
    "Copenhague" => "Danemark",
    "Dakar" => "Sénégal",
    "Damas" => "Syrie",
    "Dublin" => "Irlande",
    "Erevan" => "Arménie",
    "La Havane" => "Cuba",
    "Helsinki" => "Finlande",
    "Islamabad" => "Pakistan",
    "Vienne" => "Autriche",
    "Vilnius" => "Lituanie",
    "Zagreb" => "Croatie"
);

?>

<?php ksort($capitales); ?>

<h3>2.1</h3>

<table border="1">
    <tr>
        <th>Capitale</th>
        <th>Pays</th>
    </tr>
    <?php foreach ($capitales as $capitale => $pays): ?>
        <tr>
            <td><?= $capitale ?></td>
            <td><?= $pays ?></td>
        </tr>
    <?php endforeach; ?>
    </tr>
</table>

<h3>2.2</h3>

<?php asort($capitales); ?>

<table border="1">
    <tr>
        <th>Pays</th>
        <th>Capitale</th>
    </tr>
    <?php foreach ($capitales as $capitale => $pays): ?>
        <tr>
            <td><?= $pays ?></td>
            <td><?= $capitale ?></td>
        </tr>
    <?php endforeach; ?>
    </tr>
</table>

<h3>2.3</h3>

<?= "Il y a " . count($capitales) . " pays." ?>

<h3>2.4</h3>

<?php

foreach ($capitales as $capitale => $pays) {
    if ($capitale[0] != 'B') {
        unset($capitales[$capitale]);
    }
}

?>

<table border="1">
    <tr>
        <th>Capitale</th>
        <th>Pays</th>
    </tr>
    <?php foreach ($capitales as $capitale => $pays): ?>
        <tr>
            <td><?= $capitale ?></td>
            <td><?= $pays ?></td>
        </tr>
    <?php endforeach; ?>
    </tr>
</table>

<h2>Exercice 3</h2>
<h3>3.1</h3>

<?php

$departements = array(
    "Hauts-de-france" => array("Aisne", "Nord", "Oise", "Pas-de-Calais", "Somme"),
    "Bretagne" => array("Côtes d'Armor", "Finistère", "Ille-et-Vilaine", "Morbihan"),
    "Grand-Est" => array("Ardennes", "Aube", "Marne", "Haute-Marne", "Meurthe-et-Moselle", "Meuse", "Moselle", "Bas-Rhin", "Haut-Rhin", "Vosges"),
    "Normandie" => array("Calvados", "Eure", "Manche", "Orne", "Seine-Maritime")
);

asort($departements);

?>

<table border="1">
    <tr>
        <th>Région</th>
        <th>Départements</th>
    </tr>
    <?php foreach ($departements as $region => $departement): ?>
    <tr>
        <td><?= $region ?></td>
        <td>
            <?= $departement ?>
        </td>
    </tr>
    <?php endforeach; ?>
</table>