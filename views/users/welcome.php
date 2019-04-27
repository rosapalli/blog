<div class="container">
    <div class="row">
<!--                <h1>User Profile <br><small>#London #Japanese #restaurant </small></h1>-->
        <!-- Contenedor -->
        <div class="username">
            <h2>Welcome <?php echo $_SESSION['firstName']; ?><i class="fa fa-map-marker"></i></h2>
        </div>
    </div>

    <ul class="submenu" id="logout">
        <a href="index.php?controller=user&action=logout" class="btn btn-default btn-sm">
                Logout
            </a>
    </ul>
</div>