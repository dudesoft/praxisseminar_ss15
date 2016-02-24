    <?php
        $db = new PDO('mysql:host=localhost;dbname=hoerburger;charset=utf8mb4', 'hoerburger', 'hoerburger');
        $response = array();
        foreach($db->query('SELECT * FROM locations') as $row) {
            $location = [
            	"name" => $row['location'],
            	"latitude" => $row['latitude'],
            	"longitude" => $row['longitude'],
            ];

            $response[] = $location;
        }

        echo json_encode($response);
    ?>