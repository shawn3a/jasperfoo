<?php echo $header; ?>
<div class="container-fluid" >
    <div class="row">

        <div id="content" style="background-color:#F6F7F7; padding-top: 15px;" class="col-sm-10 col-sm-offset-1">
            
            <?php if ($products) { ?>
            <div class="row">
                <?php foreach ($products as $product) { ?>
                <!--        <div class="product-layout product-list col-xs-12"> -->

                <div class="col-sm-12 property-list-item">
                    <div class="product-thumb col-sm-5">
                        <div class="image">
                            <?php if($state == 'current') { ?>
                            <a class="feature-img-container" href="<?php echo $product['href']; ?>">
                                <?php } ?>
                                <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" />
                                <?php if($state=='sold') { ?>
                                <img class="img-sold" src="<?php echo $soldimage; ?>" alt="" title="" class="img-responsive" />
                                <?php } ?>
                                <?php if($state == 'current') { ?>
                            </a>
                            <?php } ?>
                        </div>
                    </div>

                    <div class="product-overview col-sm-7">
                        <?php if($state == 'current') { ?>
                        <a href="<?php echo $product['href']; ?>">
                        <?php } ?>
                        <h3 class='list-property-name'><?php echo $product['name']; ?>
                            <?php if($state == 'sold') { ?>
                            <span class="sold-price"><?php echo $product['price']; ?><image class="sold-star" src="image/star.png" ></span>
                            <?php } ?>
                        </h3>
                            
                        <?php if($state == 'current') { ?>
                        </a>
                        <?php } ?>
                        
                        <h4 class='list-property-address'><?php echo $product['address']; ?></h4>
                        <p class="list-property-description"><?php echo $product['description'];  ?></p>
                        
                        
                        <?php if(array_key_exists('auction', $product)) { ?>
                            <h4 class='list-property-auction'><b><?php echo $text_auction; ?>:</b> <?php echo $product['auction']; ?></h4>
                        <?php } ?>
                        
                        <?php if(array_key_exists('opendays', $product)) { ?>
                            <h4 class='list-property-auction'><b><?php echo $text_opendays; ?>:</b> <?php echo $product['opendays']; ?></h4>
                        <?php } ?>
                        
                        
                        <?php if (array_key_exists('attributes', $product)) { ?>
                        <ul class="list-inline list-property-attributs">
                            <?php foreach ($product['attributes'] as $name => $attribute) { ?>
                            <li>
                                <img src="./image/catalog/icons/<?php echo $name; ?>.png"  class="attribute-icon" title="<?php echo $name; ?>" alt="<?php echo $name; ?>">
                                <span><?php echo $attribute; ?></span>
                            </li>
                            <?php } ?>
                        </ul>
                        <?php } ?>

                        <?php if($state == 'sold') { ?>
                            <?php if ($product['video']) { ?>
                                <a class="fancybox-video col-sm-12" style="padding:0; margin: 10px 0;" rel="group" href="<?php echo $product['video']; ?>" >
                                    <h5 class="watch-link">< Watch video</h5>
                                </a>
                            <?php } ?>
                        <?php } ?>


                    </div>

                </div>
                <?php } ?>
            </div>
            <div class="row">
                <?php if($state == 'sold') { ?>
                <div class="text-center bottom-indicator">
                    <image class="sold-star" src="image/star.png" >
                    Indicates record price at the time of sale
                </div>
                <?php } ?>
                <div class="col-sm-12 text-right"><?php echo $pagination; ?></div>
                    <!--
                <div class="col-sm-6 text-right"><?php echo $results; ?></div>
                    -->
            </div>
            <?php } ?>
            <?php if (!$categories && !$products) { ?>
            <section>
                <div class="product-thumb col-sm-5 product-empty-left">
                    <h3 class="empty-message">
                    PROPERTIES NEEDED<br>
                    HIGH BUYER DEMAND
                    </h3>
                </div>

                <div class="product-overview col-sm-7 product-empty-right">
                    <p class="empty-explaination">
                        Most of our properties have been sold and we are currently listing
                        new properties. Give us a call If you are considering selling now or
                        in the near future for a <span>FREE NO ObligAtiOn AppRAisAl</span>.
                    </p>
                </div>
            </section>
            <?php } ?>
        </div>
    </div>
</div>

<?php echo $footer; ?>
