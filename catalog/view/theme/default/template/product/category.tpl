<?php echo $header; ?>
<div class="container-fluid" >
    <div class="row">

        <div id="content" style="background-color:#F6F7F7; padding-top: 20px;" class="col-sm-10 col-sm-offset-1">

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
                            <h3 class='list-property-name'><?php echo $product['name']; ?></h3>
                            
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
                                <img src="./image/catalog/icons/<?php echo $name; ?>.png" height="40px" title="<?php echo $name; ?>" alt="<?php echo $name; ?>">
                                <span><?php echo $attribute; ?></span>
                            </li>
                            <?php } ?>
                        </ul>
                        <?php } ?>



                    </div>

                </div>
                <?php } ?>
            </div>
            <div class="row">
                <div class="col-sm-12 text-right"><?php echo $pagination; ?></div>
                    <!--
                <div class="col-sm-6 text-right"><?php echo $results; ?></div>
                    -->
            </div>
            <?php } ?>
            <?php if (!$categories && !$products) { ?>
            <p><?php echo $text_empty; ?></p>
            <div class="buttons">
                <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
            </div>
            <?php } ?>
        </div>
    </div>
</div>

<?php echo $footer; ?>
