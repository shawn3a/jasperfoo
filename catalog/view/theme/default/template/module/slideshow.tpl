<div class="row">
<div id="slideshow<?php echo $module; ?>" class="flexslider">
    <div class="slides">
        <?php foreach ($banners as $banner) { ?>

              <li>
                  <?php if ($banner['link']) { ?>
                  <a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" /></a>
                  <?php } else { ?>
                  <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" />
                  <?php } ?>
              </li>

        <?php } ?>
  </div>
</div>
</div>
<script type="text/javascript"><!--
$(window).load(function() {
  $('.flexslider').flexslider({
    animation: "slide",
    slideshowSpeed: 5000
  });
});
--></script>