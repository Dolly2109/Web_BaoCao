<section class="features" id="products">
        <div class="container">
            <h1 class="product-title">New product</h1>
            </div>
            <div class="row">
                <?php 
                        $prd = $data['products'];
                        // print_r($prd);
                        foreach($prd as $value){
                ?>
                <div class='col-md-4'>
                    <div class="features-box">

                        <div class='features-img'>
                            <img src='<?=URL?>asset/images/<?= $value['image'];?>' alt=''>
                            <div class='price'>
                                <p><?= $value['price']; ?></p>
                            </div>
                            <div class="rating">
                                <i class="bi bi-star-fill"></i>
                                <i class="bi bi-star-fill"></i>
                                <i class="bi bi-star-fill"></i>
                                <i class="bi bi-star-half"></i>
                                <i class="bi bi-star"></i>
                            </div>
                        </div>
                        <h5 class="name-product"> <strong><?= $value['product_name']; ?></strong></h5>
                        <div class="feature-details">
                            <p><a href="<?= URL ?>index.php/frontend/detail/<?= $value['id']?>">Detail..</a></p>
                            <p><a href="#">Add to cart</a>
                            <i href="#" class="fas fa-shopping-cart icon-ft"></i>
                            </p>                       
                        </div>
                    </div>
                </div>
                <?php 
                    }
                ?>
            </div>
        </div>
</section>   
