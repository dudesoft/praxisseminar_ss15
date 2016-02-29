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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <!-- CSS-->
    <link rel="stylesheet" type="text/css" href="css/main.css">
</head>

<body>
    <?php include 'header.php';?>
        <div id="main_content_station">
            <label for="prev_diary" class="nav nav_left">&#x2039;</label>
            <div id="loader_container"></div>
            <span id="detail_content">
                <div id="text_info" class="trans">
                    <div class="centered" id="location"></div>
                    <div class="centered" id="time">12.8.1943 - 14.8.1943</div>
                    <p class="attribute">Weit hinten, hinter den Wortbergen, fern der Länder Vokalien und Konsonantien leben die Blindtexte. Abgeschieden wohnen Sie in Buchstabhausen an der Küste des Semantik, eines großen Sprachozeans. Ein kleines Bächlein namens Duden fließt durch ihren Ort und versorgt sie mit den nötigen Regelialien. Es ist ein paradiesmatisches Land, in dem einem gebratene Satzteile in den Mund fliegen. Nicht einmal von der allmächtigen Interpunktion werden die Blindtexte beherrscht – ein geradezu unorthographisches Leben. Eines Tages aber beschloß eine kleine Zeile Blindtext, ihr Name war Lorem Ipsum, hinaus zu gehen in die weite Grammatik. Der große Oxmox riet ihr davon ab, da es dort wimmele von bösen Kommata, wilden Fragezeichen und hinterhältigen Semikoli, doch das Blindtextchen ließ sich nicht beirren.</p>
                </div>
                <div id="mini_map" class="trans">
                </div>
                
                <div id="picture_gallery" class="frame trans gallery">
                <span id="image_not_available" class="not_available_label">Für diese Station sind leider (noch) keine Bilder vorhanden.</span>
                    <ul id="pic_gallery_content" class="slidee">
                    </ul>
                </div>
                <div id="audio_gallery" class="frame trans gallery">
                <span id="audio_not_available" class="not_available_label">Für diese Station ist leider (noch) kein Tonmaterial vorhanden.</span>
                    <ul id="audio_gallery_content" class="slidee">
                    </ul>
                </div>
                <div id="video_gallery" class="frame trans gallery">
                <span id="video_not_available" class="not_available_label">Für diese Station sind leider (noch) keine Videos vorhanden.</span>
                    <ul id="vid_gallery_content" class="slidee">
                    </ul>
                </div>
            </span>
            </div>
            <label for="next_diary" class="nav nav_right">&#x203a;</label>
        <?php include 'footer.php';
        if (isset($_GET["location_id"])) {
            $location_id = $_GET["location_id"];
        }?>

            <script data-main="js/common" src="js/vendor/require.js"></script>
            <script>
            require(['station_details/station_details_main'], function(stationDetails) {
                stationDetails.setupDetails(<?php echo json_encode($location_id); ?>);
            });
            </script>
</body>

</html>
