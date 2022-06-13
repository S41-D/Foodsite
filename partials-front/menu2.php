<?php 
   

    //Create Constants to Store Non Repeating Values
    define('SITEURL', 'http://173.212.230.8/said/');
    define('LOCALHOST', 'localhost');
    define('DB_USERNAME', 'root');
    define('DB_PASSWORD', '');
    define('DB_NAME', 'food-order');
    
    $conn = mysqli_connect(LOCALHOST, DB_USERNAME, DB_PASSWORD) or die(mysqli_error()); //Database Connection
    $db_select = mysqli_select_db($conn, DB_NAME) or die(mysqli_error()); //SElecting Database


?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <!-- Important to make website responsive -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Foodie Goodie</title>

    <!-- Link our CSS file -->
    <link rel="stylesheet" href="css/style.css">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="css/FoodSite.css">
     <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Pacifico&display=swap" rel="stylesheet">
</head>

<body>
    <!-- Navbar Section Starts Here -->
    
     
          <header>
      <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#">Hello Foodie</a>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
       <ul class="navbar-nav mr-auto">
        <li class="nav-item">
             <a class="nav-link" href="<?php echo SITEURL; ?>">Home</a>
           </li>
       <li class="nav-item"><a class="nav-link" href="<?php echo SITEURL; ?>categories.php">Categories</a></li>
       <li class="nav-item" style="margin-right: 100px"><a class="nav-link" href="<?php echo SITEURL; ?>foods.php">Foods</a></li>
      

        

    <!-- logged in user information -->
    <?php  if (isset($_SESSION['firstname'])) : ?>
         <li class="nav-item" style="margin-right: 250px">Welcome <strong><?php echo $_SESSION['firstname']; ?></strong></li>
         <li  class="nav-item"><a href="index.php?logout='1'" style="color: red;">Logout</a></li>
       
    <?php endif ?>
    
  
      
            <!-- need the login and sign up to float far right -->
          </ul>
        </div>
      </nav>
    </header>
        </div>
 
    <!-- Navbar Section Ends Here -->