
<?php include('partials-front/menu.php'); ?>
<?php include('login-reg/server.php') ?>



    <!-- Login Section Starts Here -->
    <form method="post" action="login.php">
        <?php include('login-reg/errors.php'); ?>
      <div class="form-group">
        <label for="exampleInputEmail1">Email address</label>
        <input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
        <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
      </div>
      <div class="form-group">
        <label for="exampleInputPassword1">Password</label>
        <input type="password" name="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
      </div>
     
      <button type="submit" class="btn btn-primary" name="login_user">Submit</button>
    </form>
    <!-- Login Section Ends Here -->


    <?php include('partials-front/footer.php'); ?>