<?php
$db = new PDO('mysql:host=localhost;dbname=hoerburger;charset=utf8mb4', 'hoerburger', 'hoerburger');

if (isset($_GET['location_id'])) {
    $location_id = $_GET['location_id'];
}

$db->query("SET group_concat_max_len = 4096");

$query = $db -> prepare("SELECT locations.*, GROUP_CONCAT(DISTINCT images.id) AS images, GROUP_CONCAT(DISTINCT songs.id) AS songs, GROUP_CONCAT(DISTINCT videos.id) AS videos FROM locations LEFT JOIN images ON images.location_id = locations.id LEFT JOIN songs ON songs.location_id = locations.id LEFT JOIN videos ON videos.location_id = locations.id WHERE locations.id = '$location_id'");
$query -> execute();
$location = $query->fetch();

$image_ids = $location['images'];
$query = $db -> prepare("SELECT url FROM images WHERE id IN (" . $image_ids . ") AND url is not null");
$query -> execute();
$images = $query->fetchAll(PDO::FETCH_COLUMN, 0);

$song_ids = $location['songs'];
$query = $db -> prepare("SELECT url FROM songs WHERE id IN (" . $song_ids . ") AND url is not null");
$query -> execute();
$songs = $query->fetchAll(PDO::FETCH_COLUMN, 0);

$video_ids = $location['videos'];
$query = $db -> prepare("SELECT url FROM videos WHERE id IN (" . $video_ids . ") AND url is not null");
$query -> execute();
$videos = $query->fetchAll(PDO::FETCH_COLUMN, 0);

$response = [
	"id" => $location['id'],
	"name" => $location['location'],
	"latitude" => $location['latitude'],
    "longitude" => $location['longitude'],
    "images" => $images,
    "songs" => $songs,
    "videos" => $videos
	];

echo json_encode($response);
?>
