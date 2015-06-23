<!-- <?php echo $heading_title; ?></h3>  Featured from database  -->
<div class="row">
    <div class="col-sm-10 col-sm-offset-1" style="text-align:center;background-color:#F1F2F2;">
        <h3 class="text-left"><?php echo $heading_title; ?> </h3>
        <div class="row">
            <?php foreach ($products as $product) { ?>
            <div class="col-sm-12 col-md-6" style="margin-bottom: 10px;">
                <div class="col-sm-6">
                    <a class='feature-img-container' href="<?php echo $product['href']; ?>">
                        <img src="<?php echo $product['thumb']; ?>"
                             alt="<?php echo $product['name']; ?>"
                             title="<?php echo $product['name']; ?>" class="img-responsive" >
                        <?php if($product['quantity'] <= 0) { ?>
                        <img class="img-sold" src="<?php echo $soldimage; ?>" class="img-responsive" >
                        <?php } ?>
                    </a>
                </div>
                <div class="col-sm-6 text-left">
                    <div class="col-sm-12">
                        <a href="<?php echo $product['href']; ?>"><h4 class="black-content"><?php echo $product['name']; ?></h4></a>
                        <p class="black-content feature-summary"><?php echo $product['description']; ?></p>
                    </div>
                    <div class="col-sm-12"><a class="blue-link" href="<?php echo $product['href']; ?>"><b>MORE DETAILS</b></a></div>
                </div>
            </div>
            <?php } ?>
        </div>
    </div>
</div>


