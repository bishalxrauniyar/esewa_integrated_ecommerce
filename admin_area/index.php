<?php

session_start();
include_once("includes/db.php");

if(!isset($_SESSION['admin_email'])){
    echo "<script>windw.open('login.php','_self')</script>";
}

else{

?>

<?php

$admin_session = $_SESSION['admin_email'];

$get_admin = "select * from admins where admin_email='$admin_session'";

$run_admin = mysqli_query($con,$get_admin);
    
$row_admin = mysqli_fetch_array ($run_admin);
    
$admin_id = $row_admin ['admin_id'];
    
$admin_name = $row_admin ['admin_name'];
    
$admin_email = $row_admin ['admin_email'];
    
$admin_image = $row_admin ['admin_image'];
    
$admin_country = $row_admin ['admin_country'];
    
$admin_job = $row_admin ['admin_job'];
    
$admin_contact = $row_admin ['admin_contact'];
    
$admin_about = $row_admin['admin_about'];
    
$get_products = "select * from products ";
    
$run_products = mysqli_query ($con,$get_products);

$count_products = mysqli_num_rows($run_products);
    
$get_customers = "select * from customers";

$run_customers = mysqli_query($con,$get_customers);
    
$count_customers = mysqli_num_rows($run_customers);
    
$get_p_categories= "select * from product_categories";
    
$run_p_categories = mysqli_query($con,$get_p_categories);
    
$count_p_categories = mysqli_num_rows($run_p_categories);
 
$get_pending_orders = "select * from pending_orders";

$run_pending_orders = mysqli_query($con,$get_pending_orders);
 
$count_pending_orders = mysqli_num_rows($run_pending_orders);


?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard</title>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link href="http://fonts.googleapis.com/css?family=Roboto:400,500,700,300,100" rel="stylesheet" >

<link href="styles/bootstrap.min.css" rel="stylesheet">

<link href="styles/style.css" rel="stylesheet">

<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet">
<script src="js/jquery.min.js"> </script>

<script src="js/bootstrap.min.js"></script>
</head>
<body>

<div id="wrapper"> <!--wrapper start-->

<?php include_once("includes/sidebar.php")  ?>    
            
<div id="page-wrapper"><!--page-wrapper start-->

<div class="container-fluid"> <!--container-fluid start-->
 <?php
    
    if(isset($_GET['dashboard'])){
    include("dashboard.php"); }
    
    if(isset($_GET['insert_product'])){
        include_once("insert_product.php");
    }
        
    if(isset($_GET['view_products'])){
        include_once("view_products.php");
    } 
    
    
    if(isset($_GET['delete_product'])){
        
        include_once("delete_product.php");
    }
        
    if(isset($_GET['edit_product'])){
        include_once("edit_product.php");
    }
    
    if(isset($_GET['insert_p_cat'])){

      include("insert_p_cat.php"); }
    
    if(isset($_GET['view_p_cats'])){
        include("view_p_cats.php");
    }
    
    if(isset($_GET['delete_p_cat'])){
        include("delete_p_cat.php");
    }
    
    
    if(isset($_GET['edit_p_cat'])){
        include("edit_p_cat.php");
    }
    
     if(isset($_GET['insert_cat'])){
        include("insert_cat.php");
    }
    
    if(isset($_GET['view_cats'])){
        include("view_cats.php");
    }
    
     if(isset($_GET['edit_cat'])){
        include("edit_cat.php");
    }
    
     if(isset($_GET['delete_cat'])){
        include("delete_cat.php");
    }
    
    if(isset($_GET['insert_slide'])){
        include("insert_slide.php");
    }
    
    if(isset($_GET['view_slides'])){
        include("view_slides.php");
    }
    
    if(isset($_GET['delete_slide'])){
        include("delete_slide.php");
    }
    
    if(isset($_GET['edit_slide'])){
        include("edit_slide.php");
    }
    
     if(isset($_GET['view_customers'])){
        include("view_customers.php");
    }
    
      if(isset($_GET['customer_delete'])){
        include("customer_delete.php");
    }
    
    
      if(isset($_GET['view_orders'])){
        include("view_orders.php");
    }
    
       if(isset($_GET['order_delete'])){
        include("order_delete.php");
    }
    
    
       if(isset($_GET['view_payments'])){
        include("view_payments.php");
    }
    
     if(isset($_GET['payment_delete'])){
        include("payment_delete.php");
    }
    
      if(isset($_GET['insert_user'])){
        include("insert_user.php");
    }
    
    
    
      if(isset($_GET['view_users'])){
        include("view_users.php");
    }
    
    
      if(isset($_GET['user_delete'])){
        include("user_delete.php");
    }
    
     if(isset($_GET['user_profile'])){
        include("user_profile.php");
    }
    
    
    
    
    
    
    
    ?>   
    
</div>  <!--container-fluid start-->
    
    
</div>  <!--page-wrapper start-->
    
</div> <!--wrapper stop-->
            
</body>
</html>


<?php
     
     }
      
     
?>