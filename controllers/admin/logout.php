<?php 

include '../../core.php';

if (isset($_SESSION['user_id'])) {
    unset($_SESSION['user_id']);
}

header("location: " . BASE_URL . "views/layouts/login.php");