<section class="form-container">

   <form action="<?= URL ?>index.php/frontend/doRegister" enctype="multipart/form-data" method="POST">
      <h3>register now</h3>
      <input type="text" name="name" class="box" placeholder="enter your name" required>
      <input type="email" name="email" class="box" placeholder="enter your email" required>
      <input type="text" name="phone" class="box" placeholder="enter your phone" required>
      <input type="text" name="address" class="box" placeholder="enter your address" required>
      <input type="password" name="pass" class="box" placeholder="enter your password" required>
      <input type="password" name="cpass" class="box" placeholder="confirm your password" required>
      <input type="submit" value="register now" class="btn" name="submit">
      <p>already have an account? <a href="<?=URL;?>index.php/frontend/login">login now</a></p>
   </form>

</section>