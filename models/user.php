<?php

class User {

    private $userID;
    private $firstName;
    private $lastName;
    private $email;
    private $password;

    function __construct($userID, $firstName, $lastName, $email, $password) {
        $this->userID = $userID;
        $this->firstName = $firstName;
        $this->lastName = $lastName;
        $this->email = $email;
        $this->password = $password;
    }

    public function register() {
        $db = Db::getInstance();
        $req = $db->prepare("Insert into bloguser(firstName, lastName, email, password) values (:firstName, :lastName, :email, :password)");
        $req->bindParam(':firstName', $firstName);
        $req->bindParam(':lastName', $lastName);
        $req->bindParam(':email', $email);
        $req->bindParam(':password', $password);

// set parameters and execute
        if (isset($_POST['firstName']) && $_POST['firstName'] != "") {
            $filteredFirstName = filter_input(INPUT_POST, 'firstName', FILTER_SANITIZE_SPECIAL_CHARS);
        }
        if (isset($_POST['lastName']) && $_POST['lastName'] != "") {
            $filteredLastName = filter_input(INPUT_POST, 'lastName', FILTER_SANITIZE_SPECIAL_CHARS);
        }
        if (isset($_POST['email']) && $_POST['email'] != "") {
            $filteredEmail = filter_input(INPUT_POST, 'email', FILTER_SANITIZE_SPECIAL_CHARS);
        }
        if (isset($_POST['password']) && $_POST['password'] != "") {
            $filteredPassword = filter_input(INPUT_POST, 'password', FILTER_SANITIZE_SPECIAL_CHARS);
        }
        $firstName = $filteredFirstName;
        $lastName = $filteredLastName;
        $email = $filteredEmail;
        $password = $filteredPassword;
        $req->execute();
    }

    function checkCredentials() {
        $db = Db::getInstance();
        $statement = 'SELECT * FROM bloguser WHERE email = :email AND password = :password';
        $req = $db->prepare($statement);
        $data = filter_input(INPUT_POST, 'u_data');
        $credentials = json_decode($data, true);

        $email = $credentials["email"];
        $password = $credentials["password"];

        $req->execute(array(':email' => $email, ':password' => $password));
        $count = $req->rowCount();
        return $count;
    }

    function login() {

        $db = Db::getInstance();
        $statement = 'SELECT * FROM bloguser WHERE email = :email AND password = :password';
        $req = $db->prepare($statement);

        if (isset($_POST['email']) && $_POST['email'] != "") {
            $filteredEmail = filter_input(INPUT_POST, 'email', FILTER_SANITIZE_SPECIAL_CHARS);
        }
        if (isset($_POST['password']) && $_POST['password'] != "") {
            $filteredPassword = filter_input(INPUT_POST, 'password', FILTER_SANITIZE_SPECIAL_CHARS);
        }
        $email = $filteredEmail;
        $password = $filteredPassword;

        $req->execute(array(':email' => $email, ':password' => $password));
        $user = $req->fetch();
        if ($user) {

            $session = new User($user['userID'], $user['firstName'], $user['lastName'], $user['email'], $user['password']);
            $_SESSION["email"] = $session->email;
            $_SESSION['firstName'] = $session->firstName;
            $_SESSION['lastName'] = $session->lastName;
            $_SESSION['userID'] = $session->userID;
        }
    }

    function logout() {
        unset($_SESSION);
        session_destroy();
    }

}
