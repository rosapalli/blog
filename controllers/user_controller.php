<?php

class UserController {

    public function register() {
        if ($_SERVER['REQUEST_METHOD'] == 'GET') {
            require_once('views/users/register.php');
        } else {
            User::register();
            require_once('views/users/login.php');
        }
    }

    public function checkCredentials() {
        $response = User::checkCredentials();
        echo json_encode($response);
    }

    public function login() {
        if ($_SERVER['REQUEST_METHOD'] == 'GET') {
            require_once('views/users/login.php');
        } else {
            User::login();
            require_once('views/layout.php');
            require_once('routes.php');
            call('post', 'readMyPosts');
        }
    }

    public function logout() {
        User::logout();
        require_once('views/users/login.php');
    }

}

?>