<?php

require_once "connection.php";

//Define variables and initialise with empty values
$username = $password = $confirmPassword = "";
$usernameErr = $passwordErr = $confirmPasswordErr = "";

//processing form data when form is submitted
if($_SERVER["REQUEST_METHOD"] == "POST"){
    
    //validate username
    if(empty(trim($_Post["username"]))){
        $username_err = "Pleaes enter a username.";
    }else{
        //prepare a select statement
        $sql = "SELECT id FROM users WHERE username = :username";
        
        if($stmt = $pdo->prepare($sql)){
            //bind variables to the prepared statement as parmeters
            $stmt->bindParam(":username", $paramUsername, PDO::PARAM_STR);
            
            //set parameters
            $paramUsername = trim($_Post["username"]);
            
            //Attempt to execute the prepared statement
            if($stmt->execute()){
                if($stmt->rowCount() == 1){
                    $usernameErr = "This username is already taken.";
                }else{
                    $username = trim($_Post["username"]);
                }
            }else{
                    echo "Something went wrong. Please try again later.";
            }
        }
    }
    
    //close statement
    unset($stmt);
}

//validate password
if(empty(trim($_POST["password"]))){
    $passwordErr = "Please enter a password.";
}elseif(strlen(trim($_POST["password"])) < 6 ) {
    $passwordErr = "Password must have at least 6 characters.";
}else{
    $password = trim($_POST["password"]);
}

//validate confirm password
if(empty(trim($_POST["confirmPassword"]))){
    $confirmPasswordError = "Please confirm password.";
}else{
    $confirmPassword = trim($_POST["confirmPassword"]);
    if(empty($passwordErr) && ($password != $confirmPassword)){
        $confirmPasswordErr = "Password did not match.";
    }
}    





require_once "/views/pages/registration.php";




/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

