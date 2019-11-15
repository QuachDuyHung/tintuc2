<?php
session_start();
    if(isset($_SESSION['id_user'])){
        unset($_SESSION['id_user']);
        unset($_SESSION['user_name']);
        header("location:index.php");
    }

?>