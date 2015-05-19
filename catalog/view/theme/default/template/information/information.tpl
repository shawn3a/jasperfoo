<?php echo $header; ?>
  <div class="container-fluid">
<!--  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul> -->
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php $class = 'col-sm-10'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-10'; ?>
    <?php } ?>
    <div class="col-sm-1"></div>
    <div id="content" style="background-color:#F6F7F7;min-height:500px;" class="<?php echo $class; ?>"><?php echo $content_top; ?>
    <!--  <h3><?php echo $heading_title; ?></h3> -->
      <?php echo $description; ?>
      <?php echo $content_bottom; ?>
    </div>
    <?php echo $column_right; ?>
  </div>
</div>
<div class="row" style="height:20px;"></div>

<?php echo $footer; ?> 