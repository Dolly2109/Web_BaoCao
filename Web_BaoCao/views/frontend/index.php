<?php $this->view("frontend/modules/header",$data); ?>

    <!-- slider section -->
    <section class="slider_section ">

      <?php $this->view("frontend/modules/sidebar",$data); ?>		
      
    </section>
    <!-- end slider section -->
  </div>


  <!-- product section -->

  <section class="product_section layout_padding">

    <?php $this->view($data['page'],$data); ?>

  </section>

  <!-- end product section -->

  <!-- about section -->

  <?php $this->view("frontend/modules/about",$data); ?>		

  <!-- end info_section -->


  <!-- footer section -->
  <footer class="footer_section">
    
    <?php $this->view("frontend/modules/footer"); ?>

  </footer>
  <!-- footer section -->

  <!-- jQery -->
  <script src="<?= URL?>asset/js/jquery-3.4.1.min.js"></script>
  <!-- bootstrap js -->
  <script src="<?= URL?>asset/js/bootstrap.js"></script>
  <!-- custom js -->
  <script src="<?= URL?>asset/js/custom.js"></script>


</body>

</html>