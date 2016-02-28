<?php
$db = new PDO('mysql:host=localhost;dbname=hoerburger;charset=utf8mb4', 'hoerburger', 'hoerburger');

if (isset($_GET['location'])) {
    $locationName = $_GET['location'];
}

$query = $db->prepare("SELECT * FROM locations WHERE location = '$locationName'");
$query->execute();

echo json_encode($query->fetch());
?>
