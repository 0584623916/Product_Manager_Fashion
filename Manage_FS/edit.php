


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./style/button.css">
    <link rel="stylesheet" href="./style/style_form_input.css">
    <title>Document</title>
   

</head>
<body>
<?php

session_start();
if (! isset($_SESSION['mySession']) ) {
    header('location:index.php');
}
?>
<h1>EDIT PRODUCT</h1>





<?php

include "connect.php";

$edit_product = $_GET['this_id_edit'];
$sql = "SELECT * FROM product WHERE id =".$edit_product;


$query = mysqli_query($conn, $sql);




$row = mysqli_fetch_assoc($query);





 if(isset($_POST['btn_edit'])){ 
    $name = $_POST['name'];
    $image = $_FILES['image']['name'];
    $image_tmp_name = $_FILES['image']['tmp_name']; 
    $price = $_POST['price'];
    $warranty = $_POST['warranty'];
    
 
}

?>









<div class="btn_add">
   <a href="./product.php"><button class="btn6">BACK TO PRODUCT</button></a>

</div>

<div class="add_mentor">
   <div class="menber">
    <form method="post" enctype="multipart/form-data">
       <input type="text" class="form" name="name" placeholder="NAME" value="<?php echo " ". $row['name']  ?>">

       <input type="file" class="form" name="image" placeholder="PICTURE"  >

       <input type="text" class="form" name="price" placeholder="PRICE" value="<?php echo " ". $row['price']  ?>"> 
       <input type="text" class="form" name="warranty" placeholder="DETAILS" value="<?php echo " ". $row['warranty']  ?>">
         <input type="submit" id="button" name="btn_edit" 
         
<?php

include "connect.php";

$edit_product = $_GET['this_id_edit'];

$sql = "SELECT * FROM product WHERE id =".$edit_product;


$query = mysqli_query($conn, $sql);




$row = mysqli_fetch_assoc($query);





 if(isset($_POST['btn_edit'])){ 
    $name = $_POST['name'];
    $image = $_FILES['image']['name'];
    $image_tmp_name = $_FILES['image']['tmp_name'];
    $price = $_POST['price'];
    $warranty = $_POST['warranty'];
    echo $name;
    
    $try = "UPDATE product SET name = '$name', image = '$image', price = '$price', warranty = '$warranty' WHERE id =".$edit_product;
    mysqli_query($conn, $try); 
    
   move_uploaded_file( $image_tmp_name, 'img/product/'.$image );
   header('location: product.php');
}

?>
>
         </form>
   </div> 
</div>
</body>
</html>