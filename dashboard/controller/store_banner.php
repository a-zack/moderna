<?php

session_start();

$title= $_POST['title'];
$detail=$_POST['details'];
$button_text = $_POST['button_txt'];
$button_link=$_POST['button_link'];

require_once '../../env.php';
$insert ="INSERT INTO banner_post(title, details, buttton_txt, button_link) VALUES ('$title','$detail','$button_text','$button_link')";
$query = mysqli_query($connect, $insert);

if($query){
    $_SESSION['success'] ="banner insert";
    header("location: ../add_banner.php");
}

?>