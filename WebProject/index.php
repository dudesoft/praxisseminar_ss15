<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>Hoerburger Reisen</title>builder
    <meta name="description" content="Hoerburger">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="css/main.css">
</head>

<body>
    <div id="wrapper">
        <?php include 'header.php';?>
            <div id="main_content">
            </div>
            <?php include 'footer.php';?>
    </div>
</body>
<script data-main="js/common" src="js/vendor/require.js"></script>
<script>
require(['common'], function() {
    require(['main']);
    require(['maps']);
});
</script>

</html>