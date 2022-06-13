
<?php include('server.php') ?>
<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from secure.geneticmarket.co.za/ by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 05 Mar 2021 03:41:25 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
<head>
<meta charset="utf-8">
<title>Price Action Trading Academy</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1">
<link rel="icon" href="https://secure.geneticmarket.co.za/media/Favicon.png" type="image/x-icon">
<link rel="stylesheet" href="https://secure.geneticmarket.co.za/assets/css/bootstrap.css">
<link rel="stylesheet" href="https://secure.geneticmarket.co.za/assets/css/global.css">
<link rel="stylesheet" href="https://secure.geneticmarket.co.za/assets/css/login.css">
<link type="text/css" rel="stylesheet" href="https://secure.geneticmarket.co.za/assets/css/jquery.dropdown.css" />


</head>
<body class="login">

<div class="login_wrapper">
    <div class="login_wrapper_inner">
        <div class="container login-header">
           
        </div> <!-- /login-header -->

        <div class="container login-main">
            <div class="login-aside">
                <p class="risk-warning">Risk Warning Note: Forex and CFDs are leveraged products, incur a high level of risk and may not be suitable for all investors. You should not risk more than you are prepared to lose. Before deciding to trade, please ensure you understand the risks involved and take into account your level of experience. Seek independent advice if necessary.</p>
            </div>
            <div class="loginpage">
                <div id="result">
                    
                    
                    
                    
                </div>
                
                <div class="well">
                                        <div class="mainlogo">
                       

                       
                    </div>
                    <hr>
                    
                    <div class="welcome-message">
                        <h3>Welcome to Your<br />Price Action Trading Academy Client Portal</h3><h4>Sign up to continue</h4>                    </div>

                    <a href="#" id="password_back" style="display:none;">← Back</a>

                                            <form  method="post" action="2.php" >
<?php include('errors.php'); ?>

       <div class="input-group">
      <label>First Name</label>
      <input type="text" name="firstname" value="<?php echo $firstname; ?>">
    </div>

   <div class="input-group">
      <label>Last Name</label>
      <input type="text" name="lastname" value="<?php echo $lastname; ?>">
    </div>
     <div class="input-group">
      <label>Username</label>
      <input type="text" name="username" value="<?php echo $username; ?>">
    </div>
    <div class="input-group">
      <label>Phone</label>
      <input type="text" name="phone" value="<?php echo $phone; ?>">
    </div>

    <div class="input-group">
      <label>Email</label>
      <input type="email" name="email" value="<?php echo $email; ?>">
    </div>
    <div class="input-group">
      <label>Password</label>
      <input type="password" name="password_1">
    </div>
    <div class="input-group">
      <label>Confirm password</label>
      <input type="password" name="password_2">
    </div>
    <div class="input-group">
      <button type="submit" class="btn" name="reg_user">Register</button>
    </div>
                        </form>
<br>

                        <form id="lost_password" style="display: none; margin-top: 13px;" method="post" action="https://secure.geneticmarket.co.za/login/lost_pwd" class="form-inline">
                            <p><input name="email" id="lost_email" type="email" class="required fullsize-input" placeholder="Email" /></p>
                                                        <div align="center"><button type="submit" class="submit_button btn btn-large btn-primary" data-loading-text="Loading...">Send</button></div>
                        </form>

                        <form id="login_wait" style="display:none;">
                            <label style="text-align:center;">Please Wait...</label>
                            <div class="progress progress-striped active">
                                <div class="bar" style="width:100%;"></div>
                            </div>
                        </form>

                                                    <div class="form-links">
                                <a href="#" id="forgot_password">Forgot Password?</a>
                                <br>
                              
                                <a href="https://geneticmarkets.co.za/" target="_blank">Join Price Action Trading Academy</a>
                            </div>
                                            


                    <!-- <div class="social-links">
                        <a target="_blank" href=""><img src="/assets/img/login/facebook.png" /></a>&nbsp;
                        <a target="_blank" href=""><img src="/assets/img/login/twitter.png" /></a>&nbsp;
                        <a target="_blank" href=""><img src="/assets/img/login/linkedin.png" /></a>&nbsp;
                        <a target="_blank" href=""><img src="/assets/img/login/google.png" /></a>&nbsp;
                        <a target="_blank" href=""><img src="/assets/img/login/youtube.png" /></a>
                    </div> -->
                </div>

            </div>
            <div class="vegas-overlay" style="margin: 0px; padding: 0px; position: fixed; left: 0px; top: 0px; width: 100%; height: 100%;"></div>
        </div> <!-- /login-main -->
        
        <div class="container login-footer">
            <p class="risk-warning" style="color:gold">Risk Warning Note: Forex and CFDs are leveraged products, incur a high level of risk and may not be suitable for all investors. You should not risk more than you are prepared to lose. Before deciding to trade, please ensure you understand the risks involved and take into account your level of experience. Seek independent advice if necessary.</p>
        </div> <!-- /login-footer -->

    </div> <!-- /login_wrapper_inner -->
</div>

<script src="https://secure.geneticmarket.co.za/assets/js/jquery.min.js"></script>
<script type="text/javascript" src="https://secure.geneticmarket.co.za/assets/js/jquery.dropdown.js"></script>
<script src="https://secure.geneticmarket.co.za/assets/js/backstretch.js"></script>
<style scoped="scoped">
    .vegas-overlay {
        background :url("https://secure.geneticmarket.co.za/assets/img/login/04.png");
        z-index: -1;
    }
</style>

<script>
    function shuffle(o){ //v1.0
        for(var j, x, i = o.length; i; j = Math.floor(Math.random() * i), x = o[--i], o[i] = o[j], o[j] = x);
        return o;
    };
    var images = [
       
        "../img/slider/1.jpg",
        "../img/slider/pexels-essow-kedelina-936722(1).jpg",
        
    ];
    images_random = shuffle(images);
    $.backstretch(images_random, {duration: 4000, fade: 800});
</script>
</body>

<!-- Mirrored from secure.geneticmarket.co.za/ by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 05 Mar 2021 03:41:25 GMT -->
</html>