<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>WTF-Where's The Food?</title>
    </head> 
    <body>
        <div class="container example5">
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
                        <a href="index.php?controller=pages&action=home" class="navbar-brand img-responsive brand">
                            <img id="logo" style="width: 64px;" src="views/images/standard/logo.png">
                        </a>
                    </div>

                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav">
                            <li><a href="index.php?controller=pages&action=home">Home</a></li>
                            <li><a href="index.php?controller=post&action=readAll">All posts</a></li>
                            <li><a href="index.php?controller=pages&action=about">Authors</a></li>
                            <li><a href="index.php?controller=pages&action=about">About us</a></li>
                            <li><a href="index.php?controller=user&action=login">Login</a></li>
                            <li><a href="index.php?controller=user&action=register">Register</a></li>
                            <li><a href="index.php?controller=post&action=advancedSearch">Advance Search</a></li>
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
