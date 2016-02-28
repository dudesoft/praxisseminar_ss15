<?php
$db = new PDO('mysql:host=localhost;dbname=hoerburger;charset=utf8mb4', 'hoerburger', 'hoerburger');

if (isset($_GET['location'])) {
    $location_name = $_GET['location'];
}

$query = $db -> prepare("SELECT locations.*, GROUP_CONCAT(url) AS images FROM locations LEFT JOIN images ON images.location_id = locations.id WHERE location = '$location_name'");
$query -> execute();
$location = $query->fetch();

$images = explode(",", $location['images']);

$response = [
	"name" => $location['location'],
	"latitude" => $location['latitude'],
    "longitude" => $location['longitude'],
    "images" => $images
	];

echo json_encode($response);
?>
