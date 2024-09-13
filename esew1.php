<?php 
include 'setting.php';
include("includes/db.php");
session_start();

//include("includes/db.php");

include("functions/functions.php");


?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Purchase Institute Management software</title>
<!-- Latest compiled and minified CSS -->
<!--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">-->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">

</head>
<body>



<form action="<?php echo $epay_url?>" method="POST">

   <input value="<?php  echo total_price(); ?>" name="tAmt" type="hidden">
    <input value="<?php  echo total_price(); ?>" name="amt" type="hidden">
    <input value="0.00" name="txAmt" type="hidden">
    <input value="0.00" name="psc" type="hidden">
    <input value="0.00" name="pdc" type="hidden">
    <input value="EPAYTEST" name="scd" type="hidden">
    <input value="<?php echo $paid ?>" name="pid" type="hidden">
    <input value="<?php echo $sucess_url ?>" type="hidden" name="su">
    <input value="<?php echo $fail_url ?>" type="hidden" name="fu">
    <input value="Confirm" style="text-align:center;" type="submit" class="btn btn-primary" id="btn">
    </form>

</div>
</div>
<style>
.btn{
    display:block;
margin:auto auto;
width:250px;
border:1px solid black;
padding:50px;

top:40px;

}
    </style>

<!-- jQuery library -->
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>

<!-- Popper JS -->
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>