<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>My Ecommerce Site</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
 <link rel="stylesheet" href="styles/style.css">
<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">

</head>
<body>
    
    <div id="top">  <!-- top bar start-->
        
     <div class="container"> <!-- container start-->
         
    <div class="col-md-6 offer"> <!-- col-md-6 offer start-->
        
        <a href="#" class="btn btn-success btn-sm">
            
            Welcome Guest
        </a>
        
        <a href="#">Shopping Cart Total Price : 10$ , Total Items 2</a>
        
    </div>     <!-- col-md-6 offer stop-->
        
        <div class="col-md-6 ">
            
            <ul class="menu">
                
                <li>
                    
                    <a href="customer_registration.php">Register</a>
                    
                </li>
                
                 <li>
                    
                    <a href="customer/my_account.php">My Account</a>
                    
                </li>
                
                 <li>
                    
                    <a href="cart.php">Goto Cart</a>
                    
                </li>
                
                 <li>
                    
                    <a href="login.php">Login</a>
                    
                </li>
                
            </ul>
            
        </div>
         
     </div> <!-- container stop-->
        
        
    </div>   <!-- top bar stop-->
    
    <div class="navbar navbar-default " id="navbar"> <!-- navbar navbar-default start-->
       <div class="container">
           
           <div class="navbar-header"> <!-- navbar-header start-->
               
               <a class="navbar-brand home" href="index.php">
                   <img src="images/ecom-store-logo.png" alt="Ecom" class="hidden-xs">
                   
                <img src="images/ecom-store-logo-mobile.png" alt="Ecom" class="visible-xs">
                   
               </a>
               
               <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation" >
                 <span class="sr-only"  >Toggle Navigation</span>   
                   <i class="fa fa-align-justify"></i>
               </button>
               <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#search">
                  <span class="sr-only"></span>
                  <i class="fa fa-search"></i>
                   
                   
               </button>
               
           </div> <!-- navbar-header stop-->
           
           <div class="navbar-collapse collapse" id="navigation"> <!-- navbar-collapse collapse start-->
               
               <div class="padding-nav"> <!-- padding-nav start-->
                   
                   <ul class="nav navbar-nav navbar-left">
                       <li class="active">
                           <a href="index.php">Home</a>
                           
                       </li>
                       <li >
                           <a href="shop.php">Shop</a>
                           
                       </li>
                       <li >
                           <a href="customer/my_account.php">My Account</a>
                           
                       </li>
                        
                       <li>
                           <a href="cart.php">Shopping Cart</a>
                           
                       </li>
                       <li>
                           <a href="about.php">About Us</a>
                           
                       </li>
                       
                       <li>
                           <a href="services.php">Services</a>
                           
                       </li>
                       
                       <li >
                           <a href="contact.php">Contact Us</a>
                           
                       </li>
                       
                   </ul>
                   
               </div>  <!-- padding-nav stop-->
               
               <a href="cart.php" class="btn btn-primary navbar-btn right">
                   <i class="fa fa-shopping-cart">
                       
                       
                   </i>
                   <span>items in Cart</span>
               </a>
               <div class="navbar-collapse collapse right">  <!-- navbar-collapse collapse-right start-->
                   
                   <button class="btn navbar-btn btn-primary" type="button" data-toggle="collapse" data-target="#search">
                       <span class="sr-only">Toggle Search</span>
                       <i class="fa fa-search"></i>
                   </button>
               </div>  <!-- padding-nav stop-->
               
               <div class="collapse clearfix " id="search">
                   
                  <form class="navbar-form" method="get" action="result.php">
                      
                      <div class="input-group">
                         
                         <input type="text" name="user_query" placeholder="Search" class=" form-control" required="">
                         <span class="input-group-btn">
                         
                        <button type="submit" value="Search" name="search" class="btn btn-primary">
                            
                           <i class="fa fa-search"></i> 
                        </button>
                         </span>
                          
                      </div>
                      
                  </form> 
                   
               </div>
               
               
               
           </div> <!-- navbar-collapse collapse-right stop-->
           
       </div> 
        
    </div> <!--navbar navbar-default stop-->
    
   
  
 
<div id="content">
    <div class="container"> <!--container start-->
        <div class="col-md-12"><!--col-md-12 start-->
            <ul class="breadcrumb">
                <li>
                    <a href="home.php">Home</a>
                </li>
                <li>
                   Registration
                </li>
            </ul>
        </div> <!--col-md-12 stop-->
        <div class="col-md-3"> <!--col-md-3 start-->
            <?php
    include("includes/sidebar.php");
    ?>
        </div> <!--col-md-3 stop-->
        
       
      
     
    <div class="col-md-9"> <!--col-md-9 start-->
        
        <div class="box"> <!--box start-->
            
            <div class="box-header">  <!--box-header  start-->
                 
                 <center>
                     <h2>Customer Registration</h2>
                     
                 </center>
                
            </div>  <!--box-header  stop-->
            
            <form action="customer_registration.php" method="post" enctype="multipart/form-data">
                
                <div class="form-group">
                    
                    <label for="">Customer Name</label>
                    <input type="text" name="name" required="" class="form-control">
                    
                </div>
                
                <div class="form-group">
                    <label for="">Customer Email</label>
                    <input type="email" name="email" class="form-control" required="">
                </div>
                
              
                <div class="form-group">
                    <label for="">Customer Password</label>
                    <input type="password" name="c_password" class="form-control" required="">
                </div>
                
               
                <div class="form-group">
                    <label for="">Customer Country</label>
                    <input type="text" name="c_country" class="form-control" required="">
                </div>
                
                
                <div class="form-group">
                    <label for="">City</label>
                    <input type="text" name="c_city" class="form-control" required="">
                </div>
                
                
                <div class="form-group">
                    <label for="">Contact Number</label>
                    <input type="number" name="c_number" class="form-control" required="">
                </div>
                
                   
                <div class="form-group">
                    <label for="">Address</label>
                    <input type="text" name="c_address" class="form-control" required="">
                </div>
                
                <div class="form-group">
                    <label for="">Image</label>
                    <input type="file" name="c_image" class="form-control" required="">
                </div>
                
                <div class="text-center">
                    <button type="submit" name="submit" class="btn btn-primary">
                        <i class="fa fa-user-md">Register</i>
                    </button>
                    
                </div>
                
            </form>
            
        </div>  <!--box stop-->
        
    </div> <!--col-md-9 stop-->
    
  
 














 </div><!--container stop-->
    
</div><!--content stop-->







        
    <!--footer start-->
    <?php
    include("includes/footer.php");
    ?>
     <!--footer stop-->
    
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    
</body>
</html>