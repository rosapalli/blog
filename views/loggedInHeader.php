<!DOCTYPE html>
<html lang="en">
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script type="text/javascript" charset="utf8" src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-2.0.3.js"></script>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.17.0/jquery.validate.min.js"></script>
        <script src="views/users/login.js" type="text/javascript"></script>
        <link href="views/css/styles.css" rel="stylesheet" type="text/css"/>
        <!--text editor-->
        <script src="https://cdn.ckeditor.com/ckeditor5/12.1.0/classic/ckeditor.js"></script>
        <title>WTF - Where's The Food!?</title>
    </head>
    <body>
        <div class="bs-example">
            <nav class="navbar navbar-default navbar-fixed-top">
                <div class="container-fluid">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                            <a href="index.php?controller=pages&action=home" class="navbar-brand img-responsive"><img id="logo" src="views/images/standard/logo.png" width="120" alt="">
                            </a>
                        
                    </div>

                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav">
                            <li><a href="index.php?controller=pages&action=home">Home</a></li>
                            <li><a href="index.php?controller=post&action=readAll">All posts</a></li>
                            <li><a href="index.php?controller=post&action=create">Add a new post</a></li>
                            <li><a href="index.php?controller=post&action=readMyPosts">My Posts</a></li>
                            <li><a href="index.php?controller=pages&action=about">About us</a></li>
                            <li><a href="index.php?controller=user&action=logout">Logout</a></li>
                            <li><a href="index.php?controller=post&action=advancedSearch">Advanced Search</a></li>
                        </ul>
                        <form class="navbar-form navbar-right" method="POST" action="index.php?controller=post&action=search">
                            <div class="form-group">
                                <input name ="search" type="search" type="text" class="form-control" placeholder="Search">
                            </div>
                            <button type="submit" class="btn btn-default">Go</button>
                        </form>
                    </div>
                </div>
            </nav>
        </div>
    </body>
</html>                            