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
        <!--<a id="arrow_left" class="arrow"><img src="img/arrow-right.png" id="arrow_left_img" alt="arrow left"/></a>-->
            <div class="nav">
                <label for="prev_diary" class="prev">&#x2039;</label>
            </div>
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
                <div id="picture_gallery" class="frame trans">
                    <ul id="pic_gallery_content" class="slidee">
                        <li>huehue1</li>
                        <li>huehue2</li>
                        <li>hue4</li>
                        <li>huehue5</li>
                        <li>huehuehue6</li>
                        <li>hue7</li>
                        <li>huehue8</li>
                        <li>huehuehue9</li>
                        <li>hue10</li>
                        <li>huehue11</li>
                        <li>huehuehue12</li>
                        <li>hue13</li>
                        <li>huehue14</li>
                        <li>huehuehue15</li>
                    </ul>
                </div>
                <div id="audio_gallery" class="frame trans">
                    <ul id="audio_gallery_content" class="slidee">
                        <li>hue1audio</li>
                        <li>huehue2audio</li>
                        <li>huehuehue3audio</li>
                        <li>hue4audio</li>
                        <li>huehue5audio</li>
                        <li>huehuehue6audio</li>
                        <li>hue7audio</li>
                        <li>huehue8audio</li>
                        <li>huehuehue9audio</li>
                        <li>hue10audio</li>
                        <li>huehue11audio</li>
                        <li>huehuehue12audio</li>
                        <li>hue13audio</li>
                        <li>huehue14audio</li>
                        <li>huehuehue15audio</li>
                    </ul>
                </div>
                <div id="video_gallery" class="frame trans">
                    <ul id="vid_gallery_content" class="slidee">
                        <li>hue1</li>
                        <li>huehue2</li>
                        <li>huehuehue3</li>
                        <li>hue4</li>
                        <li>huehue5</li>
                        <li>huehuehue6</li>
                        <li>hue7</li>
                        <li>huehue8</li>
                        <li>huehuehue9</li>
                        <li>hue10</li>
                        <li>huehue11</li>
                        <li>huehuehue12</li>
                        <li>hue13</li>
                        <li>huehue14</li>
                        <li>huehuehue15</li>
                    </ul>
                </div>
            </div>
            <!--<a id="arrow_right" class="arrow"><img src="img/arrow-right.png" id="arrow_right_img" alt="arrow right"/></a>-->
            <div class="nav">
                <label for="next_diary" class="next">&#x203a;</label>
            </div>
        </div>
        
        <?php include 'footer.php';?>
            <script data-main="js/common" src="js/vendor/require.js"></script>
            <script>
            require(['common']);
            require(['station_details_main']);
            </script>
</body>

</html>
