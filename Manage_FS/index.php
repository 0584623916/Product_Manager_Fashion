<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./style/style_edit.css">
    <title>Document</title>
    <link rel="stylesheet" href="./style/style.css">
   
</head>
<body>

<?php   

    include "connect.php";
    session_start();


    if(isset($_POST['btn_login'])){
        $username = $_POST['username'];
        $password = $_POST['password'];
        $sql = "SELECT * FROM user WHERE username='$username' and password='$password'";
        $result = mysqli_query($conn, $sql);
       
        if(mysqli_num_rows($result) == 1){
            if($username == 'admin' && $password == 123456){
                header("location:product.php");
                $_SESSION['mySession'] = $username; 
            } else {
                header("location:product_user.php");
                $_SESSION['mySession'] = $username; 
            }
        } else {
           
?>
    <script>
        alert("Tên đăng nhập hoặc mật khẩu sai, vui lòng nhập lại!");
    </script>



        <?php } ?>

    <?php } ?>











<div class="login-page">
  	<div class="form">
      <form class="login-form" method="post" enctype="multipart/form-data">
      <input type="text" class="form" name="username" placeholder="Tên đăng nhập" value="">
       <input type="password" class="form" name="password" placeholder="Mật Khẩu" value="">
        
        <input type="submit" id="button" name="btn_login" value="Đăng nhập">

        <p class="message">Not registered? <a href="">Create an account</a></p>
      </form>
    </div>
  </div>

<?php
    if(isset($_POST['btn_signup'])){
        header("location: signup.php");
        }
    
?>


</body>
</html>