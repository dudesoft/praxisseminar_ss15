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

$conn->query("SET group_concat_max_len = 4096");

$query = $conn -> prepare("SELECT date FROM stations WHERE date IS NOT NULL ORDER BY date");
$query -> execute();
$results = $query->fetchAll(PDO::FETCH_COLUMN, 0);
$query->closeCursor();

header("Content-Type: application/json");
echo json_encode($results);
?>