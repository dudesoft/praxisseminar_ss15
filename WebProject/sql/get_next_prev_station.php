<?php
$db = new PDO('mysql:host=localhost;dbname=hoerburger;charset=utf8mb4', 'hoerburger', 'hoerburger');

if (isset($_GET['travel_id'])) {
    $travel_id = $_GET['travel_id'];
}

if (isset($_GET['date'])) {
    $date = $_GET['date'];
}

$query = $db -> prepare("SELECT * FROM stations WHERE travel_id = '$travel_id' AND date > '$date' ORDER BY date LIMIT 1");
$query -> execute();
$next = $query->fetch();

$query = $db -> prepare("SELECT * FROM stations WHERE travel_id = '$travel_id' AND date < '$date' ORDER BY date DESC LIMIT 1");
$query -> execute();
$prev = $query->fetch();

$response = [
	"next" => $next,
	"previous" => $prev
];

echo json_encode($response);
?>