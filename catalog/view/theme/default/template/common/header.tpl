<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" />

<link href="catalog/view/theme/default/stylesheet/stylesheet.css" rel="stylesheet">

<link href="catalog/view/javascript/fancybox/source/jquery.fancybox.css" rel="stylesheet" type="text/css" />
<script src="catalog/view/javascript/fancybox/source/jquery.fancybox.js" type="text/javascript"></script>

<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/common.js" type="text/javascript"></script>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>

<link href="catalog/view/theme/default/stylesheet/stylesheet.css" rel="stylesheet">

<script type="text/javascript">
    $(document).ready(function() {
        $(".fancybox").fancybox();
    });
</script>
</head>
<body class="<?php echo $class; ?>">


<header>

  <div class="container-fluid">
    <div class="row">
        <a href="/" >
          <img src="./image/header_without_icon-big.jpg" class="img-responsive" alt="headerimage">
        </a>
    <div class="container_head">
    <div class="container">
    <div class="row">
			
        <div class="col-sm-6 col-xs-2" >
          <div id="logo">
            <?php if ($logo) { ?>
            <!--    <a href="<?php echo $home; ?>">
                  <img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" />
                </a> -->
              <?php } else { ?>
                <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
            <?php } ?>
          </div>
       </div> 
        <div class="col-sm-6 col-xs-10" >
           <div class="row">


               <div class="pull-right" style="margin-top: 10px; margin-right: 30px;">
                   
                    <div class="pull-right" >
                        <!--  <?php echo $currency; ?>-->
                    <?php echo $language; ?>
                    </div>
                
                    <div class="pull-right">

                       <div class="col-sm-6 social-container">
                          <a href="#">
                            <img src="./image/facebookicon.jpg" style="height:26px;" class="img-responsive" alt="facebook"> 
                         </a>
                       </div> 
                       <div class="col-sm-6 social-container" >
                          <a href="#">
                            <img src="./image/linkinicon.jpg" style="height:26px;" class="img-responsive" alt="facebook"> 
                          </a>
                      </div>

                   </div>
                  
                </div>
           </div>

        </div>
        </div>

    </div>
  </div>
  </div>
  </div>
  <div class="container-fluid">
 
  <div class="row" style="background-color: #B2B2B2;padding:0px;">

    <div class="col-sm-10 col-sm-offset-1">
     <nav class="top-menu">
        <div class="navbar-header">
            <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
               <i class="fa fa-bars"></i>
            </button>
        </div>
        <div class="collapse navbar-collapse navbar-ex1-collapse">
           <ul class="nav navbar-nav">

              <li>
                  <a class="<?php echo $active_status['home']; ?>" href="/"><img src="./image/catalog/demo/banners/HOMEICON.jpg" alt="Home Icon" height="20" width="24"></a> <?php echo $current_menu; ?>
              </li>
              <li>
                  <a class="<?php echo $active_status['about']; ?>" href="./index.php?route=information/information&information_id=4">|&nbsp;<?php echo $text_about; ?></a>
              </li>
              <?php foreach ($categories as $category) { ?>
              <?php if ($category['category_id'] == $category_id) { ?>
              <li><a href="<?php echo $category['href']; ?>" class="active">|&nbsp;<?php echo $category['name']; ?></a></li>
                <?php } else { ?>
              <li><a href="<?php echo $category['href']; ?>" >|&nbsp;<?php echo $category['name']; ?></a></li>
              <?php } ?>
              <?php } ?>
              <li><a id="contact-link">|&nbsp;<?php echo $text_contact; ?></a></li>
 
 <!--    <li><a class="various" href="#inline">Inline</a></li> -->




  <!--                <li><a href="/index.php?route=information/information&information_id=4"><?php echo $text_about_us; ?></a></li>
                  <li><a href="/index.php?route=product/category&path=0"><?php echo $text_business; ?></a></li>
                <!--  <li><a href="/index.php?route=product/category&path=97"><?php echo $text_new_member; ?></a></li> -->
 <!--                 <li><a href="/index.php?route=information/information&information_id=13"><?php echo $text_trade_faq; ?></a></li>
                  <li><a href="/index.php?route=information/contact"><?php echo $text_contact_us; ?></a></li> -->

          </ul>

<!--               <?php echo $search; ?> -->

        </div>
    </nav>
</div>          
  </div>

  </div>
</div>
<div class="cover-content">
    <?php echo $contact_box; ?>
</div>

</header>