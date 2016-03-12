<?php
$servername = "localhost";
$username = "hoerburger";
$password = "hoerburger";

$stationRelevanceMultiplyer = 1.5;

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
if (isset($_GET['date_min'])) {
    $dateMin = $_GET['date_min'];
}
if (isset($_GET['date_max'])) {
    $dateMax = $_GET['date_max'];
}

$conn->query("SET group_concat_max_len = 4096");

$query = $conn -> prepare("SELECT * from (
  SELECT
    'songs' as 'table_name', id, title as 'name', station_id as 'station_id', date as 'date',
    MATCH(title, location, genre, origin, cast, language, recording_situation, function, content, interprets, interpret_1, recorded_by) AGAINST ('$searchString' IN BOOLEAN MODE) as relevance
    from songs
  UNION
  SELECT
    'stations' as 'table_name',
    id, location as name, id as 'station_id', date as 'date',
    $stationRelevanceMultiplyer * (MATCH(location, region) AGAINST ('$searchString' IN BOOLEAN MODE)) as relevance
    from stations
)
as sitewide WHERE relevance > 0 AND date BETWEEN '$dateMin' AND '$dateMax' ORDER BY relevance DESC");
$query -> execute();
$results = $query->fetchAll(PDO::FETCH_ASSOC);
$query->closeCursor();

header("Content-Type: application/json");
echo json_encode($results);




?>