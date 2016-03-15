<?php
$db = new PDO('mysql:host=localhost;dbname=hoerburger;charset=utf8mb4', 'hoerburger', 'hoerburger');
$response = array();

$query = $db -> prepare("SELECT * FROM travels ORDER BY id");
$query -> execute();
$travels = $query->fetchAll(PDO::FETCH_OBJ);

foreach($db->query('SELECT *, GROUP_CONCAT(stations.id) AS station_id, GROUP_CONCAT(stations.travel_id) AS travel_id, GROUP_CONCAT(stations.date) AS station_date, GROUP_CONCAT(stations.has_images) AS has_images, GROUP_CONCAT(stations.has_songs) AS has_songs, GROUP_CONCAT(stations.has_videos) AS has_videos FROM locations INNER JOIN stations ON stations.location_id = locations.id GROUP BY locations.id') as $row) {

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
    $has_images = explode(",", $row['has_images']);
    $has_songs = explode(",", $row['has_songs']);
    $has_videos = explode(",", $row['has_videos']);

    $stations = array();
    
    for ($i = 0; $i < count($station_ids); $i++) {
        $stations[] = [
            "id" => $station_ids[$i],
            "date" => $station_dates[$i],
            "travel" => $travels[$travel_ids[$i]-1],
            "has_images" => (bool) $has_images[$i],
            "has_songs" => (bool) $has_songs[$i],
            "has_videos" => (bool) $has_videos[$i]
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