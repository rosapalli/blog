
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

    public function login() {
        if ($_SERVER['REQUEST_METHOD'] == 'GET') {
            require_once('views/users/login.php');
        } else {
            User::login();
            header ("Location: loggedInHeader.php");
            require_once('views/users/welcome.php');
        }
    }

    public function logout() {
        User::logout();
        require_once('views/users/login.php');
    }

}

//$user = new User($_POST['username'], $_POST['password']);
//
//switch($action) {
//    case 'login':
//        echo $user->login();
//        break;
//    
//    case 'logout':
//        echo $user->logout(); 
//        break;
//
//    default:
//    return;
//    
//}
?>