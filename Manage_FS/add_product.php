<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="./style/style_form_input.css">
    <link rel="stylesheet" href="./style/button.css">
 
</head>
<body>
<?php

session_start();
if (! isset($_SESSION['mySession']) ) {
    header('location:index.php');
}
?>
<h1>ADD PRODUCT</h1>

<?php 

    include "connect.php";
   
    if(isset($_POST['btn_add'])){ 
        $name = $_POST['name'];
        $image = $_FILES['image']['name'];
        $image_tmp_name = $_FILES['image']['tmp_name']; 
        $price = $_POST['price'];
        $warranty = $_POST['warranty'];
        
        $sql = "INSERT INTO product(name, image, price, warranty)  
        VALUE('$name', '$image', '$price', '$warranty') ";
        mysqli_query($conn, $sql); 
       move_uploaded_file( $image_tmp_name, 'img/product/'.$image );
    //    header('location: product.php');
    }

?>


<div class="btn_add">
   <a href="./product.php"><button class="btn6">BACK TO PRODUCT</button></a>

</div>

<div class="add_mentor">
   <div class="menber">
    <form action="add_product.php" method="post" enctype="multipart/form-data">
       <input type="text" class="form" name="name" placeholder="NAME">
          
       <input type="file" class="form" name="image" placeholder="PICTURE">
       
       <input type="text" class="form" name="price" placeholder="PRICE"> 
       <input type="text" class="form" name="warranty" placeholder="DETAILS">
         <input type="submit" id="button" name="btn_add" value="ADD">
         </form>
   </div> 
</div>
</body>
</html>