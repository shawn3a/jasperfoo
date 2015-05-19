<?php echo $header; ?>
  <div class="container-fluid" >
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <div class="row">
    <?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php $class = 'col-sm-10'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-10'; ?>
    <?php } ?>

    <div class="col-sm-1"></div>

    <div id="content" style="background-color:#F6F7F7;" class="<?php echo $class; ?>">
      <?php echo $content_top; ?>
 <!--     <h2><?php echo $heading_title; ?></h2>
      <?php if ($thumb || $description) { ?>
      <div class="row">
        <?php if ($thumb) { ?>
        <div class="col-sm-2"><img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" title="<?php echo $heading_title; ?>" class="img-thumbnail" /></div>
        <?php } ?>
        <?php if ($description) { ?>
        <div class="col-sm-10"><?php echo $description; ?></div>
        <?php } ?>
      </div>
      <hr>
      <?php } ?>

    -->
<!--      <?php if ($categories) { ?>
      <h3><?php echo $text_refine; ?></h3>
      <?php if (count($categories) <= 5) { ?>
      <div class="row">
        <div class="col-sm-3">
          <ul>
            <?php foreach ($categories as $category) { ?>
            <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
            <?php } ?>
          </ul>
        </div>
      </div>
      <?php } else { ?>
      <div class="row">
        <?php foreach (array_chunk($categories, ceil(count($categories) / 4)) as $categories) { ?>
        <div class="col-sm-3">
          <ul>
            <?php foreach ($categories as $category) { ?>
            <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
            <?php } ?>
          </ul>
        </div>
        <?php } ?>
      </div>
      <?php } ?>
      <?php } ?>
-->

      <?php if ($products) { ?>
      <div class="row" style="display:none">
        <div class="col-md-4">
          <div class="btn-group hidden-xs" >
            <button type="button" id="list-view" class="btn btn-default" data-toggle="tooltip" title="<?php echo $button_list; ?>"><i class="fa fa-th-list"></i></button>
            <button type="button" id="grid-view" class="btn btn-default" data-toggle="tooltip" title="<?php echo $button_grid; ?>"><i class="fa fa-th"></i></button>
          </div>
        </div>
        <div class="col-md-2 text-right">
          <label class="control-label" for="input-sort"><?php echo $text_sort; ?></label>
        </div>
        <div class="col-md-3 text-right">
          <select id="input-sort" class="form-control" onchange="location = this.value;">
            <?php foreach ($sorts as $sorts) { ?>
            <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
            <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
            <?php } else { ?>
            <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
            <?php } ?>
            <?php } ?>
          </select>
        </div>
        <div class="col-md-1 text-right">
          <label class="control-label" for="input-limit"><?php echo $text_limit; ?></label>
        </div>
        <div class="col-md-2 text-right">
          <select id="input-limit" class="form-control" onchange="location = this.value;">
            <?php foreach ($limits as $limits) { ?>
            <?php if ($limits['value'] == $limit) { ?>
            <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
            <?php } else { ?>
            <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
            <?php } ?>
            <?php } ?>
          </select>
        </div>
      </div>
      <br />
      <div class="row">
        <?php foreach ($products as $product) { ?>
<!--        <div class="product-layout product-list col-xs-12"> -->

        <div class="product-list col-xs-12">
              <div class="product-thumb">
                <div class="image">
                  <a class="feature-img-container" href="<?php echo $product['href']; ?>">
                    <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" />

                    <?php if($product['quantity'] <= 0) { ?>
                        <img class="img-sold" src="<?php echo $soldimage; ?>" alt="" title="" class="img-responsive" />

                    <?php } ?>

                  </a>
                </div>
              <div>

              <div class="caption">

          <ul class="list-unstyled">
              <li><h3><b><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></b></h3></li>
              <li><h4><b> <?php echo $product['model']; ?></b></h4></li>
              <li><?php echo $product['description']; ?></li>
              <?php if ($product['auction']) { ?>
                  <li><h4><b><?php echo $text_auction; ?>:</b> <?php echo $product['auction']; ?></h4></li>
              <?php } ?>
              <?php if ($product['open_days']) { ?>              
                  <li><h4><b><?php echo $text_opendays; ?>:</b> <?php echo $product['open_days']; ?></h4></li>
              <?php } ?>
 
           </ul>

          <ul class="list-inline">
            <?php if ($product['bathrooms']) { ?>              
              <li style="vertical-align: bottom;">
                <li style="vertical-align: bottom;">
                  <img src="./image/bath.png" height="40px" title="Bathroom" alt="Bathroom"> <span style="font-size:16px;"><?php echo $product['bathrooms']; ?>&nbsp;&nbsp;</span></li>
            <?php } ?>

            <?php if ($product['bedrooms']) { ?>              
                <li><img src="./image/bed.png" height="40px" title="Bathroom" alt="Bathroom"> <span style="font-size:16px;"><?php echo $product['bedrooms']; ?>&nbsp;&nbsp;</span></li>
            <?php } ?>

            <?php if ($product['garaoges']) { ?>              
                <li><img src="./image/garage.png" height="40px" title="Bathroom" alt="Bathroom"> <span style="font-size:16px;"><?php echo $product['garaoges']; ?>&nbsp;&nbsp;</span></li>
            <?php } ?>
            
            <?php if ($product['sittingrooms']) { ?>              
               <li><img src="./image/sofa.png" height="40px" title="Bathroom" alt="Bathroom"> <span style="font-size:16px;"><?php echo $product['sittingrooms']; ?>&nbsp;&nbsp;</span></li>
            <?php } ?>


          </ul>

                <?php if ($product['rating']) { ?>
                <div class="rating" style="display:none">
                  <?php for ($i = 1; $i <= 5; $i++) { ?>
                  <?php if ($product['rating'] < $i) { ?>
                  <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                  <?php } else { ?>
                  <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                  <?php } ?>
                  <?php } ?>
                </div>
                <?php } ?>
                <?php if ($product['price']) { ?>
                <p class="price" style="display:none">
                  <?php if (!$product['special']) { ?>
                  <?php echo $product['price']; ?>
                  <?php } else { ?>
                  <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
                  <?php } ?>
                  <?php if ($product['tax']) { ?>
                  <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
                  <?php } ?>
                </p>
                <?php } ?>
              </div>
              <div class="button-group" style="display:none">
                <button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span></button>
                <button type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button>
                <button type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-exchange"></i></button>
              </div>
            </div>
          </div>
        </div>
        <?php } ?>
      </div>
      <div class="row">
        <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
        <div class="col-sm-6 text-right"><?php echo $results; ?></div>
      </div>
      <?php } ?>
      <?php if (!$categories && !$products) { ?>
      <p><?php echo $text_empty; ?></p>
      <div class="buttons">
        <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
      </div>
      <?php } ?>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<div class="row" style="height:20px;"></div>

<?php echo $footer; ?>
