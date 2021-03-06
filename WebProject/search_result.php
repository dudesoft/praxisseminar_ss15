<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>Hoerburger Reisen</title>
    <meta name="description" content="Hoerburger">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/png" href="img/favicon.png" />
    <!-- Bootstrap Anbindung -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <!-- CSS-->
    <link rel="stylesheet" type="text/css" href="css/main.css">
</head>

<body>
    <?php include 'header.php';?>
        <div id="main_content_station">
            <div id="result_list_content">
                <h3 id="title">Ergebnisse :</h3>
                <ul id="resut_list" class="search_results" style="list-style-type:none">

                </ul>
                <div id="search_in_progress" class="overlay_centered">Suchergebnisse werden abgerufen...</div>
            </div>
        </div>

        <?php include 'footer.php';?>

        <script data-main="js/search_result" src="js/vendor/require.js"></script>
</body>

</html>