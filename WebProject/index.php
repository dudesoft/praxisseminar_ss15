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
    <div id="wrapper">
        <?php include 'header.php';?>
        <div id="main_content">
            <div id="map_overlay">
                <div class="overlay_centered">
                    Bitte wähle einen Aufenthalt:
                    <ul id="stations"></ul>
                </div>
            </div>

            <div id="list_hover">
                <span class="centered_anchor">Alle Reisen:</span>
                <ul id="layer_list"><li><hr></li></ul>
            </div>
        </div>
        <?php include 'footer.php';?>
    </div>
    <script data-main="js/index" src="js/vendor/require.js"></script>
</body>
</html>
