<?php
$db = new PDO('mysql:host=localhost;dbname=hoerburger;charset=utf8mb4', 'hoerburger', 'hoerburger');
$response = array();

foreach($db->query('SELECT * FROM locations') as $row) {

	$names = explode("/", $row['location']);
	$name = trim($names[0]);

	if (isset($names[1])) {
		$alt_name = trim($names[1]);
	} else {
		$alt_name = NULL;
	}

    $location = [
    "id" => $row['id'],
    "name" => $name,
    "altname" => $alt_name,
    "latitude" => $row['latitude'],
    "longitude" => $row['longitude']
    ];

    $response[] = $location;
}

echo json_encode($response);
?>