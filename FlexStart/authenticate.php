<?php
session_start();

include_once("Included/dbconnect/connection.php");
$con = connection();

$email = $_POST["email"];
$password = $_POST["password"];

$sql = "SELECT * FROM user WHERE email = '".$email."' and password = '".$password."'";
$result = $con->query($sql);
$row = $result->fetch_assoc();


if (isset($_POST['login'])) {
    if ($row !== null && $row["email"] == $email && $row["password"] == $password) {
        if ($row["role"] == "admin") {
            header("Location: admin/dashboard.php");
        } 
        else if ($row["role"] == "user") {
            header("Location: user.php");
        }

        $_SESSION["ID"] = $row["ID"];
        $_SESSION["Role"] = $row["role"];
    } else {
        echo "<script>alert('Incorrect username or password!')</script>";
        echo "<script>window.location.href = 'login.html'</script>";
    }
}

closeConnection();
?>