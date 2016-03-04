<?php
$servername = "localhost";
$username = "hoerburger";
$password = "hoerburger";

try {
    $conn = new PDO("mysql:host=$servername;dbname=hoerburger", $username, $password);
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
}
catch(PDOException $e) {
    echo "Connection failed: " . $e->getMessage();
}

if (isset($_GET['search_string'])) {
    $searchString = $_GET['search_string'];
}

$conn->query("SET group_concat_max_len = 4096");

$query = $conn -> prepare("SELECT songs.* WHERE MATCH(title, location, genre, origin, cast, language, recording_situation, function, content, interprets, interpret_1, recorded_by) AGAINST('Mari')");
$query -> execute();
$results = $query->fetch();



echo json_encode($results);
?>