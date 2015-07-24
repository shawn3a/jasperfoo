<?php echo $header; ?>
<div class="container-fluid">
    <div class="row">
        <div id="content" class="col-sm-10 col-sm-offset-1"><?php echo $content_top; ?>
            <div class="row">
                <div class="col-sm-6 col-xs-12">
                    <?php if ($thumb || $images) { ?>
                    <ul class="col-sm-12 no-gutter">
                        <?php if ($thumb) { ?>
                            <a class="feature-img-container col-sm-12 fancybox" href="<?php echo $popup; ?>" rel="group" >
                                <img class="col-sm-12 col-xs-12" src="<?php echo $thumb; ?>" style="padding:0;" />
                            </a>
                        <?php } ?>

                        <?php if ($images) { ?>
                        <?php foreach ($images as $image) { ?>
                            <a class="fancybox col-sm-6 col-xs-6" style="padding: 20px 0 0 0;" rel="group" href="<?php echo $image['popup']; ?>" >
                                <img class="img-responsive" style="" src="<?php echo $image['thumb']; ?>" />
                            </a>
                        <?php } ?>
                        <?php } ?>
                        
                        <?php if ($video) { ?>
                            <a class="fancybox-video col-sm-12 col-xs-12" style="padding: 20px 0 0 0;" rel="group" href="<?php echo $video; ?>" >
                                <image class="img-responsive" style="padding: 0;" src="<?php echo $video_thumb; ?>" >
                                <image class="img-responsive play-image" style="padding: 0;" src="image/play.png" >
                            </a>
                        <?php } ?>
                        
                    </ul>
                    <?php } ?>
                </div>
                <div class="col-sm-6 col-xs-12" style="font-family: Arial, Helvetica, sans-serif; color: #000; margin: 15px 0;">

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
                            <img src="./image/catalog/icons/<?php echo $name; ?>.png" class="attribute-icon" title="<?php echo $name; ?>" alt="<?php echo $name; ?>">
                            <span><?php echo $attribute; ?></span>
                        </li>
                        <?php } ?>
                    </ul>
                    <?php } ?>
                    
                    <p class="list-property-description"><?php echo $description; ?></p>

                </div>
                <div class="back-link col-sm-6">
                    <a class="pull-right" href="javascript:history.go(-1);"><?php echo $text_back; ?></a>
                </div>
            </div>
        </div>
    </div>
<?php echo $footer; ?>