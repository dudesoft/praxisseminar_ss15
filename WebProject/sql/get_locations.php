<?php
$db = new PDO('mysql:host=localhost;dbname=hoerburger;charset=utf8mb4', 'hoerburger', 'hoerburger');
$response = array();

$query = $db -> prepare("SELECT * FROM travels ORDER BY id");
$query -> execute();
$travels = $query->fetchAll(PDO::FETCH_OBJ);

foreach($db->query('SELECT *, GROUP_CONCAT(stations.id) AS station_id, GROUP_CONCAT(stations.travel_id) AS travel_id, GROUP_CONCAT(stations.date) AS station_date FROM locations INNER JOIN stations ON stations.location_id = locations.id GROUP BY locations.id') as $row) {

	$names = explode("/", $row['location']);
	$name = trim($names[0]);

	if (isset($names[1])) {
		$alt_name = trim($names[1]);
	} else {
		$alt_name = NULL;
	}

    $station_ids = explode(",", $row['station_id']);
    $station_dates = explode(",", $row['station_date']);
    $travel_ids = explode(",", $row['travel_id']);

    $stations = array();
    
    for ($i = 0; $i < count($station_ids); $i++) {
        $stations[] = [
            "id" => $station_ids[$i],
            "date" => $station_dates[$i],
            "travel" => $travels[$travel_ids[$i]-1]
        ];
    }

    $location = [
        "id" => $row['id'],
        "name" => $name,
        "stations" => $stations,
        "altname" => $alt_name,
        "latitude" => $row['latitude'],
        "longitude" => $row['longitude']
    ];

    $response[] = $location;
}

echo json_encode($response);
?>