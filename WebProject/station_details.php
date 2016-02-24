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
            
            <div id="detail_content">
                <div id="text_info" class="trans">
                    <h1>Datum</h1>
                    <p id="Ort" class="attribute">Ort: __________</p>
                    <p id="Dauer" class="attribute">Dauer: __________</p>
                    <p class="attribute">Weit hinten, hinter den Wortbergen, fern der Länder Vokalien und Konsonantien leben die Blindtexte. Abgeschieden wohnen Sie in Buchstabhausen an der Küste des Semantik, eines großen Sprachozeans. Ein kleines Bächlein namens Duden fließt durch ihren Ort und versorgt sie mit den nötigen Regelialien. Es ist ein paradiesmatisches Land, in dem einem gebratene Satzteile in den Mund fliegen. Nicht einmal von der allmächtigen Interpunktion werden die Blindtexte beherrscht – ein geradezu unorthographisches Leben. Eines Tages aber beschloß eine kleine Zeile Blindtext, ihr Name war Lorem Ipsum, hinaus zu gehen in die weite Grammatik. Der große Oxmox riet ihr davon ab, da es dort wimmele von bösen Kommata, wilden Fragezeichen und hinterhältigen Semikoli, doch das Blindtextchen ließ sich nicht beirren.</p>
                </div>
                <div id="mini_map" class="trans">
                    <p>Minimap</p>
                </div>
                <div id="picture_gallery" class="frame trans gallery">
                    <ul id="pic_gallery_content" class="slidee">
                        <li class="picture">1</li>
                        <li class="picture">2</li>
                        <li class="picture">3</li>
                        <li class="picture">4</li>
                        <li class="picture">5</li>
                        <li class="picture">6</li>
                        <li class="picture">7</li>
                        <li class="picture">8</li>
                        <li class="picture">9</li>
                        <li class="picture">10</li>
                        <li class="picture">11</li>
                        <li class="picture">12</li>
                        <li class="picture">13</li>
                        <li class="picture">14</li>
                        <li class="picture">15</li>
                    </ul>
                </div>
                <div id="audio_gallery" class="frame trans gallery">
                    <ul id="audio_gallery_content" class="slidee">
                        <li class="audio">1</li>
                        <li class="audio">2</li>
                        <li class="audio">3</li>
                        <li class="audio">4</li>
                        <li class="audio">5</li>
                        <li class="audio">6</li>
                        <li class="audio">7</li>
                        <li class="audio">8</li>
                        <li class="audio">9</li>
                        <li class="audio">10</li>
                        <li class="audio">11</li>
                        <li class="audio">12</li>
                        <li class="audio">13</li>
                        <li class="audio">14</li>
                        <li class="audio">15</li>
                    </ul>
                </div>
                <div id="video_gallery" class="frame trans gallery">
                    <ul id="vid_gallery_content" class="slidee">
                        <li class="video">1</li>
                        <li class="video">2</li>
                        <li class="video">3</li>
                        <li class="video">4</li>
                        <li class="video">5</li>
                        <li class="video">6</li>
                        <li class="video">7</li>
                        <li class="video">8</li>
                        <li class="video">9</li>
                        <li class="video">10</li>
                        <li class="video">11</li>
                        <li class="video">12</li>
                        <li class="video">13</li>
                        <li class="video">14</li>
                        <li class="video">15</li>
                    </ul>
                </div>
            </div>
            
            <label for="next_diary" class="nav nav_right">&#x203a;</label>
       
        </div>

        <?php include 'footer.php';?>
            <script data-main="js/common" src="js/vendor/require.js"></script>
            <script>
            require(['station_details/station_details_main']);
            </script>
</body>

</html>
