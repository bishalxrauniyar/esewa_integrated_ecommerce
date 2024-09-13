<div class="box"><!-- box Starts -->

<?php

$session_email = $_SESSION['customer_email'];

$select_customer = "select * from customers where customer_email='$session_email'";

$run_customer = mysqli_query($con,$select_customer);

$row_customer = mysqli_fetch_array($run_customer);

$customer_id = $row_customer['customer_id'];


?>

<h1 class="text-center">Payment Options For You</h1>

<p class="lead text-center">

<a href="order.php?c_id=<?php echo $customer_id; ?>">Pay Off line</a>

</p>

<center><!-- center Starts -->

<p class="lead">



 <!--<a href="customer/confirm.php?"> -->
 
 
 <a href="http://localhost/bishalcommerce/esew1.php"> 
Pay Online With esewa

<img src="images/esewa.jpg" width="500" height="270" class="img-responsive">

</a>


<a href="http://localhost/bishalcommerce/khalti1.php">
    Pay Online with Khalti
<img src="images/khalti.jpg" width="500" height="270" class="img-responsive">




</a>
</p>

</center><!-- center Ends -->

</div><!-- box Ends -->