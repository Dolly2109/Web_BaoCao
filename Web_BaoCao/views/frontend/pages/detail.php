<section class="detail" id="products">
        <h1 class="product-title">Product Details</h1>
        <?php
                $product = $data['detail'];
        ?>
        <div class="container">
                    <h1 class="product-title"><?= $product['product_name']?></h1>
                    <p><?= $product['product_detail']?></p>                      
                    </div>
                    <div class="row">
                        <div class='col-md-4 '>
                            <div class="features-box">

                                <div class='features-img'>
                                    <img src='<?=URL?>asset/images/<?= $product['image'];?>' alt=''>
                                    <div class='price'>
                                        <p><?= $product['price']; ?></p>
                                    </div>
                                    <div class="rating">
                                        <i class="bi bi-star-fill"></i>
                                        <i class="bi bi-star-fill"></i>
                                        <i class="bi bi-star-fill"></i>
                                        <i class="bi bi-star-half"></i>
                                        <i class="bi bi-star"></i>
                                    </div>
                                </div>
                                <h5 class="name-product"> <strong><?= $product['product_name']; ?></strong></h5>
                                <div class="feature-details">
                                    <p><a href="#">Detail..</a></p>
                                    <p><a href="#">Add to cart</a>
                                    <i href="#" class="fas fa-shopping-cart icon-ft"></i>
                                    </p> 
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
</section>
