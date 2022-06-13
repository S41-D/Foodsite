
<?php include('partials-front/menu.php'); ?>
<?php include('login-reg/server.php') ?>



    <!-- Register Section Starts Here -->
   <p class="body-topic">Register for deliciousness</p>
  
    <form method="post" action="signup.php">
    <?php include('login-reg/errors.php'); ?>
         <div class="row">
          <div class="col">
            <input type="text" class="form-control" placeholder="First name" name="firstname" value="<?php echo $firstname; ?>">
          </div>
          <div class="col">
            <input type="text" class="form-control" placeholder="Last name" name="lastname" value="<?php echo $lastname; ?>">
          </div>
        </div>
        <div class="form-group">
          <label for="exampleInputEmail1">Email address</label>
          <input type="email" class="form-control" id="exampleInputEmail1" name="email" value="<?php echo $email; ?>" placeholder="Enter email">
          <small id="emailHelp" class="form-text text-muted"></small>
        </div>
        <div class="form-group">
          <label for="exampleInputPassword1">Password</label>
          <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password" name="password_1">
        </div>

        <div class="form-group">
            <label for="exampleInputPassword1">Confirm Password</label>
            <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password"  name="password_2">
        </div>

        <div class="form-check">
          <input type="checkbox" class="form-check-input" id="exampleCheck1">
          <label class="form-check-label" for="exampleCheck1">I agree to the T&amp;C's listed here.</label>
        </div>
        <br>
        
        <button type="submit" class="btn btn-primary" name="reg_user">Submit</button>
      </form>
    <!-- Register Section Ends Here -->


    <?php include('partials-front/footer.php'); ?>