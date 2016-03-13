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


if (isset($_GET['search_string'])) {
    $searchString = $_GET['search_string'];
}
$dateMax = date('Y-m-d');
$dateMin = '0001-01-01';
$journey = '';
if (isset($_GET['date_min'])) {
    $dateMin = $_GET['date_min'];
}
if (isset($_GET['date_max'])) {
    $dateMax = $_GET['date_max'];
}
if (isset($_GET['journey'])) {
    $journey = $_GET['journey'];
}

$conn->query("SET group_concat_max_len = 4096");

$query = $conn -> prepare("SELECT * from (
  SELECT
    'songs' as 'table_name', songs.id, title as 'name', station_id as 'station_id', songs.date as 'date', travels.name as 'journey',
    MATCH(title, songs.location, genre, origin, cast, language, recording_situation, function, content, interprets, interpret_1, recorded_by) AGAINST ('$searchString' IN BOOLEAN MODE) as relevance
    from songs
    INNER JOIN stations ON songs.station_id = stations.id
    INNER JOIN travels ON stations.travel_id = travels.id
  UNION
  SELECT
    'stations' as 'table_name',
    stations.id, location as name, stations.id as 'station_id', date as 'date', travels.name as 'journey',
    $stationRelevanceMultiplier * (MATCH(location, region) AGAINST ('$searchString' IN BOOLEAN MODE)) as relevance
    from stations
    INNER JOIN travels ON stations.travel_id = travels.id
)
as sitewide WHERE relevance > 0 AND (journey = '$journey' or '$journey' = '') AND date BETWEEN '$dateMin' AND '$dateMax' ORDER BY relevance DESC");
$query -> execute();
$results = $query->fetchAll(PDO::FETCH_ASSOC);
$query->closeCursor();

header("Content-Type: application/json");
echo json_encode($results);




?>