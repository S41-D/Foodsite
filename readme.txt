 
  1 SETUP 

 This is what i did
 First of all you have to internalize and picture how the website is going to be(You already did that and saved me from that)
 I created a database the in the database i created the tables in relation to what was going to be required

   You will realize that all the files are .php 
   The code in  each file is normally divided into three parts:the head ,the footer and the content
   The head and the footer for almost all files are usually the same,so to save time with rewriting the same code over and over again, i created a files call menu.php and footer.php;both are found inside partials-front folder

   What normally changes with each .php file is the content.Lets say content for login wont be as same as  that for category

   SO each time i wrote a code for a different file for head section is this 
     <?php include('partials-front/menu.php'); ?>

     and for the footer was  <?php include('partials-front/footer.php'); ?>



2  DATABASE

 PHP normally works with MySql as its database language...Since you already have Xampp i can guess you have accessed phpmyadmin
 Thats the bedroom for data management centre

 For the PHP to be connected to your database you have to write it in code with the preset settings or defaults of your phpmyadmin

 In the menu.php file you will find this line <?php include('config/constants.php'); ?>

 Where the constants.php has the code

   //Create Constants to Store Non Repeating Values
    define('SITEURL', 'http://173.212.230.8/said/');   
    define('LOCALHOST', 'localhost');
    define('DB_USERNAME', 'root');
    define('DB_PASSWORD', '');
    define('DB_NAME', 'food-order');
    
    $conn = mysqli_connect(LOCALHOST, DB_USERNAME, DB_PASSWORD) or die(mysqli_error()); //Database Connection
    $db_select = mysqli_select_db($conn, DB_NAME) or die(mysqli_error()); //SElecting Database



    This code is the connector or rather call the database connection
    You will change lines to match your settings 



After making sure the connection is perfect that is where..sorry in the phpmyadmin panel you will have to create a database called 'food-order' the import the sql file called food-order.sql..(This will create the tables for you)

3  COMMANDS
There are many PHP codes i have used in the project.For that you have to study PHP so that you can understand them 




I hope I have explained upto my best..May Allah bless you to understand it even better than i do