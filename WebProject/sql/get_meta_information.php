<?php
$servername = "localhost";
$username = "hoerburger";
$password = "hoerburger";

try {
    $conn = new PDO("mysql:host=$servername;dbname=hoerburger;charset=utf8mb4", $username, $password);
}
catch(PDOException $e) {
    die("Could not connect to the database:" . $pe->getMessage());
}

if (isset($_GET['table'])) {
    $tableName = $_GET['table'];
}
if (isset($_GET['id'])) {
    $id = $_GET['id'];
}

$conn->query("SET group_concat_max_len = 4096");


if ($tableName == 'stations') {
    $query = $conn -> prepare("SELECT stations.*, locations.latitude, locations.longitude from stations INNER JOIN locations on stations.location_id WHERE stations.id = $id");
} else {
    $query = $conn -> prepare("SELECT * from $tableName WHERE id = $id");
}
$query -> execute();
$results = $query->fetch(PDO::FETCH_ASSOC);
$query->closeCursor();

header("Content-Type: application/json");
echo json_encode($results);
?>