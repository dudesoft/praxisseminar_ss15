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

$query = $conn -> prepare("SELECT * from travels");
$query -> execute();
$results = $query->fetchAll(PDO::FETCH_ASSOC);
$query->closeCursor();

header("Content-Type: application/json");
echo json_encode($results);
?>