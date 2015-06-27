<?php echo $header; ?>
<div class="container-fluid">
    <div class="row">
        <div id="content" style="background-color:rgba(255, 255, 255, 0.4);min-height:500px;"
             class="col-sm-10 col-sm-offset-1"><?php echo $content_top; ?>
            <div class="row">
                <div class="col-sm-6 col-xs-12" style="padding:0;">
                    <?php if ($thumb || $images) { ?>
                    <ul class="col-sm-12" style="padding:0;">
                        <?php if ($thumb) { ?>
                            <a class="feature-img-container col-sm-12 fancybox" style="padding:0; margin: 20px 0;" href="<?php echo $popup; ?>" rel="group"
                                   title="<?php echo $heading_title; ?>">
                                <img class="col-sm-12" src="<?php echo $thumb; ?>" style="padding:0;" title="<?php echo $heading_title; ?>"
                                     alt="<?php echo $heading_title; ?>"/>
                            </a>
                        <?php } ?>

                        <?php if ($images) { ?>
                        <?php foreach ($images as $image) { ?>
                            <a class="fancybox col-sm-6" style="padding:0; margin: 10px 0;" rel="group" href="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>">
                                <img class="col-sm-12" style="padding:0;" src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>"/>
                            </a>
                        <?php } ?>
                        <?php } ?>
                        
                        <?php if ($video) { ?>
                            <a class="fancybox-video col-sm-12" style="padding:0; margin: 10px 0;" rel="group" href="<?php echo $video; ?>" title="">
                                <image class="col-sm-12" style="padding: 0;" src="<?php echo $video_thumb; ?>" >
                                <image class="col-sm-12 play-image" style="padding: 0;" src="image/play.png" >
                            </a>
                        <?php } ?>
                        
                    </ul>
                    <?php } ?>
                </div>
                <div class="col-sm-6 col-xs-12" style="font-family: Arial, Helvetica, sans-serif; color: #000; margin: 20px 0;">

                    <h3 class='list-property-name'><?php echo $name; ?></h3>
                    <h4 class='list-property-address'><?php echo $address; ?></h4>
                    <?php if($auction) { ?>
                    <h4 class='list-property-auction'><b><?php echo $text_auction; ?>:</b> <?php echo $auction; ?></h4>
                    <?php } ?>

                    <?php if($opendays) { ?>
                    <h4 class='list-property-auction'><b><?php echo $text_opendays; ?>:</b> <?php echo $opendays; ?></h4>
                    <?php } ?>
                    
                    <?php if (!empty($attributes)) { ?>
                    <ul class="list-inline list-property-attributs">
                        <?php foreach ($attributes as $name => $attribute) { ?>
                        <li>
                            <img src="./image/catalog/icons/<?php echo $name; ?>.png" height="40px" title="<?php echo $name; ?>" alt="<?php echo $name; ?>">
                            <span><?php echo $attribute; ?></span>
                        </li>
                        <?php } ?>
                    </ul>
                    <?php } ?>
                    
                    <p class="list-property-description"><?php echo $description; ?></p>

                </div>
                <div class="back-link col-sm-6">
                    <a class="pull-right" href="javascript:history.go(-1);">Back to listings</a>
                </div>
            </div>
        </div>
    </div>
<?php echo $footer; ?>