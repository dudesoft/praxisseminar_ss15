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

$query = $conn -> prepare("SELECT DISTINCT location from locations UNION SELECT DISTINCT name from travels;");
$query -> execute();
$results = $query->fetchAll(PDO::FETCH_COLUMN, 0);
$query->closeCursor();

echo json_encode($results);
?>