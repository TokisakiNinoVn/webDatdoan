<?php

 include '../../../core.php';
include '../../../models/admin/user.php';
include '../middleware/auth.php';

// $errors = array();


$id_user =isset($_GET['id']) ? (int) $_GET['id'] : false;
$user = new user();
$user_by_id  = $user->get_user_by_id($id_user);

if(isset($_POST['save'])){

$email = isset($_POST['email']) ? $_POST['email'] : false;
$name = isset($_POST['name']) ? $_POST['name'] : false;
$level = isset($_POST['level']) ? $_POST['level'] : false;

$data = array("name"=>$name,"email"=>$email,"level"=>$level);

$user->update_user($data,$id_user);
header("location:danhsach.php");
}

$menu_active = "quanlythanhvien";
include '../../../views/admin/user/sua.php';

