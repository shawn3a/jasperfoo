<?php echo $header; ?>
<div class="container-fluid">
    <div class="row">
        <div id="content" style="background-color:rgba(255, 255, 255, 0.4);min-height:500px;"
             class="col-sm-10 col-sm-offset-1"><?php echo $content_top; ?>
            <div class="row">
                <div class="col-sm-6 col-xs-12">
                    <?php if ($thumb || $images) { ?>
                    <ul class="thumbnails">
                        <?php if ($thumb) { ?>
                            <a class="feature-img-container col-sm-12 fancybox" href="<?php echo $popup; ?>" rel="group"
                                   title="<?php echo $heading_title; ?>">
                                <img src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>"
                                     alt="<?php echo $heading_title; ?>"/>

                                <?php if($quantity <= 0) { ?>
                                <img class="img-sold" src="<?php echo $sold_image; ?>" alt="" title=""
                                     class="img-responsive"/>

                                <?php } ?>
                            </a>
                        <?php } ?>

                        <?php if ($images) { ?>
                        <?php foreach ($images as $image) { ?>
                            <a class="fancybox col-sm-6" rel="group" href="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>">
                                <img src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>"/>
                            </a>
                        <?php } ?>
                        <?php } ?>
                    </ul>
                    <?php } ?>
                </div>
                <div class="col-sm-6 col-xs-12">

                    <h2><?php echo $heading_title; ?></h2>
                    <ul class="list-unstyled">
                        <li><h3> <?php echo $model; ?></h3></li>
                        <?php if ($auction) { ?>
                        <li><h4><b><?php echo $text_auction; ?>:</b> <?php echo $auction; ?></h4></li>
                        <?php } ?>
                        <?php if ($open_days) { ?>
                        <li><h4><b><?php echo $text_opendays; ?>:</b> <?php echo $open_days; ?></h4></li>
                        <?php } ?>


                    </ul>
                    <ul class="list-inline">
                        <?php if ($bathrooms) { ?>
                        <li style="vertical-align: bottom;">
                            <img src="./image/bath.png" height="40px" title="Bathroom" alt="Bathroom"> <span
                                style="font-size:16px;"><?php echo $bathrooms; ?>&nbsp;&nbsp;</span></li>
                        <?php } ?>

                        <?php if ($bedrooms) { ?>
                        <li><img src="./image/bed.png" height="40px" title="Bathroom" alt="Bathroom"> <span
                                style="font-size:16px;"><?php echo $bedrooms; ?>&nbsp;&nbsp;</span></li>
                        <?php } ?>

                        <?php if ($garaoges) { ?>
                        <li><img src="./image/garage.png" height="40px" title="Bathroom" alt="Bathroom"> <span
                                style="font-size:16px;"><?php echo $garaoges; ?>&nbsp;&nbsp;</span></li>
                        <?php } ?>

                        <?php if ($sittingrooms) { ?>
                        <li><img src="./image/sofa.png" height="40px" title="Bathroom" alt="Bathroom"> <span
                                style="font-size:16px;"><?php echo $sittingrooms; ?>&nbsp;&nbsp;</span></li>
                        <?php } ?>

                    </ul>
                    <ul class="list-unstyled">
                        <li><h4> <?php echo $description; ?></h4></li>
                    </ul>
                </div>
                <div class="back-link col-sm-6">
                    <a class="pull-right" href="javascript:history.go(-1);">Back to listings</a>
                </div>
            </div>
        </div>
    </div>
<?php echo $footer; ?>