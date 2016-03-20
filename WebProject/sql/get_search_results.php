<?php
$servername = "localhost";
$username = "hoerburger";
$password = "hoerburger";

$stationRelevanceMultiplier = 1.5;

try {
    $conn = new PDO("mysql:host=$servername;dbname=hoerburger;charset=utf8mb4", $username, $password);
    // set the PDO error mode to exception
    //$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
}
catch(PDOException $e) {
    die("Could not connect to the database:" . $pe->getMessage());
}


$dateMax = date('Y-m-d');
$dateMin = '0001-01-01';
$journey = '';
$resultType = '';
$searchString = '';
if (isset($_GET['search_string'])) {
    $searchString = $_GET['search_string'];
}

if (isset($_GET['date_min'])) {
    $dateMin = $_GET['date_min'];
}
if (isset($_GET['date_max'])) {
    $dateMax = $_GET['date_max'];
}
if (isset($_GET['journey'])) {
    $journey = $_GET['journey'];
}
if (isset($_GET['result_type'])) {
    $resultType = $_GET['result_type'];
}

$conn->query("SET group_concat_max_len = 4096");

if ($searchString != '') {
    $query = $conn -> prepare("SELECT * from (
    SELECT
      'songs' as 'table_name', songs.id, title as 'name', station_id as 'station_id', songs.date as 'date', travels.name as 'journey', 'null' as 'url', NULL as 'has_images', NULL as 'has_songs', NULL as 'has_videos', 
      MATCH(title, songs.location, genre, origin, cast, language, recording_situation, function, content, interprets, interpret_1, recorded_by) AGAINST ('$searchString' IN BOOLEAN MODE) as relevance
      from songs
      INNER JOIN stations ON songs.station_id = stations.id
      INNER JOIN travels ON stations.travel_id = travels.id
    UNION
    SELECT
      'stations' as 'table_name',
      stations.id, location as name, stations.id as 'station_id', date as 'date', travels.name as 'journey', 'null' as 'url', stations.has_images, stations.has_songs, stations.has_videos,
      $stationRelevanceMultiplier * (MATCH(location, region) AGAINST ('$searchString' IN BOOLEAN MODE)) as relevance
      from stations
      INNER JOIN travels ON stations.travel_id = travels.id
    UNION
    SELECT
      'images' as 'table_name',
      images.id, 'Bild' as name, stations.id as 'station_id', stations.date as 'date', travels.name as 'journey', images.url, NULL as 'has_images', NULL as 'has_songs', NULL as 'has_videos',
      (MATCH(take, images.location, attributes, take_position, situation, musician, hoerburger_notes, spectators, comments) AGAINST ('$searchString' IN BOOLEAN MODE)) as relevance
      from images
      INNER JOIN stations ON images.station_id = stations.id
      INNER JOIN travels ON stations.travel_id = travels.id
    )
    as sitewide WHERE relevance > 0 AND (journey = '$journey' or '$journey' = '') AND (table_name = '$resultType' or '$resultType' = '') AND date BETWEEN '$dateMin' AND '$dateMax' ORDER BY relevance DESC");
  $query -> execute();
} else {
  $query = $conn -> prepare("SELECT * from (
    SELECT
      'songs' as 'table_name', songs.id, title as 'name', station_id as 'station_id', songs.date as 'date', travels.name as 'journey', 'null' as 'url', NULL as 'has_images', NULL as 'has_songs', NULL as 'has_videos',
      1 as relevance
      from songs
      INNER JOIN stations ON songs.station_id = stations.id
      INNER JOIN travels ON stations.travel_id = travels.id
    UNION
    SELECT
      'stations' as 'table_name', stations.id, location as name, stations.id as 'station_id', date as 'date', travels.name as 'journey', 'null' as 'url', stations.has_images, stations.has_songs, stations.has_videos,
      $stationRelevanceMultiplier * 1 as relevance
      from stations
      INNER JOIN travels ON stations.travel_id = travels.id
    UNION
    SELECT
      'images' as 'table_name', images.id, 'Bild' as name, stations.id as 'station_id', stations.date as 'date', travels.name as 'journey', images.url, NULL as 'has_images', NULL as 'has_songs', NULL as 'has_videos',
      1 as relevance
      from images
      INNER JOIN stations ON images.station_id = stations.id
      INNER JOIN travels ON stations.travel_id = travels.id  
    )
    as sitewide WHERE (journey = '$journey' or '$journey' = '') AND (table_name = '$resultType' or '$resultType' = '') AND date BETWEEN '$dateMin' AND '$dateMax' ORDER BY relevance DESC");
  $query -> execute();
}


$results = $query->fetchAll(PDO::FETCH_ASSOC);
$query->closeCursor();

header("Content-Type: application/json");
echo json_encode($results);
?>