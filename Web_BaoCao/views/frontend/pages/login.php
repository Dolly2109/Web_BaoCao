<section class="form-container">

   <form action="<?= URL ?>index.php/frontend/doLogin" method="POST">
      <h3>login now</h3>
      <input type="email" name="email" class="box" placeholder="enter your email" required>
      <input type="password" name="pass" class="box" placeholder="enter your password" required>
      <input type="submit" value="login now" class="btn" name="submit">
      <p>don't have an account? <a href="<?=URL;?>index.php/frontend/register">register now</a></p>
   </form>

</section>