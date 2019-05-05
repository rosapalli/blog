<!DOCTYPE html>
<?php
session_start();

            if (isset($_SESSION['email']) == true) {
                require_once('loggedInHeader.php');
            } else {
                require_once('header.php');
            }
?>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script type="text/javascript" charset="utf8" src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-2.0.3.js"></script>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.17.0/jquery.validate.min.js"></script>
        <!--<script src="views/users/login.js" type="text/javascript"></script>-->
        <link href="views/css/styles.css" rel="stylesheet" type="text/css"/>
        <title>WTF - Where's The Food!?</title>
    </head>
    <body>
        <header>
            <div class="container" id='title'>
                <h1>Where's The Food!?!</h1>
            </div>
        </header>
        <div>
            <?php require_once('routes.php'); ?>
        </div>
        <div>
            <footer >
                <?php require_once('footer.php'); ?>
            </footer>
        </div>
    </body>
</html>