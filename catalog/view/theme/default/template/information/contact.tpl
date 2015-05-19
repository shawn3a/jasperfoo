<?php echo $header; ?>
  <div class="container-fluid" >
<!--  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul> -->
<div class="row" style="height:10px;"></div>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php $class = 'col-sm-8'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-8'; ?>
    <?php } ?>

    <div class="col-sm-2"></div>

    <div id="content" class="<?php echo $class; ?> contact_bg">
      <?php echo $content_top; ?>
      <div id="contact" >
        <div class="row" style="padding-left:30px;">
          <h3 ><span style="color:#F0F0F0;"><?php echo $heading_title; ?></span></h3>
           <h4><span style="color:#F0F0F0;"><?php echo $text_contact_jasper; ?><br>
           <span style="font-size:20px;"><?php echo $text_requiry; ?> <?php echo $telephone; ?></span></span></h4>
           <br><br>
        </div> 
       <div class="row contact_bg" style="padding:10px; ">
          <div class="col-sm-8">
            <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
              <fieldset>
                <!--<h3><?php echo $text_contact; ?></h3>-->
                <div class="form-group required">
                  <label class="col-sm-1 control-label" for="input-name"></label>
                  <div class="col-sm-11">
                    <input type="text" name="name" value="<?php echo $name; ?>" id="input-name" class="form-control" placeholder="<?php echo $entry_name; ?>" />
                    <?php if ($error_name) { ?>
                    <div class="text-danger"><?php echo $error_name; ?></div>
                    <?php } ?>
                  </div>
                </div>
                <div class="form-group required">
                  <label class="col-sm-1 control-label" for="input-email"></label>
                  <div class="col-sm-11">
                    <input type="text" name="email" value="<?php echo $email; ?>" id="input-email" class="form-control" placeholder="<?php echo $entry_email; ?>" />
                    <?php if ($error_email) { ?>
                    <div class="text-danger"><?php echo $error_email; ?></div>
                    <?php } ?>
                  </div>
                </div>
                <div class="form-group required">
                  <label class="col-sm-1 control-label" for="input-enquiry"></label>
                  <div class="col-sm-11">
                    <textarea name="enquiry" rows="10" id="input-enquiry" class="form-control" placeholder="<?php echo $entry_enquiry; ?>"><?php echo $enquiry; ?></textarea>
                    <?php if ($error_enquiry) { ?>
                    <div class="text-danger"><?php echo $error_enquiry; ?></div>
                    <?php } ?>
                  </div>
                </div>
                <div class="form-group required">
                  <label class="col-sm-1 control-label" for="input-captcha"></label>
                  <div class="col-sm-11">
                    <input type="text" name="captcha" id="input-captcha" class="form-control" placeholder="<?php echo $entry_captcha; ?>"/>
                  </div>
                </div>
                <div class="form-group">
                  <div class="col-sm-10 pull-right">
                    <img src="index.php?route=tool/captcha" alt="" />
                    <?php if ($error_captcha) { ?>
                      <div class="text-danger"><?php echo $error_captcha; ?></div>
                    <?php } ?>
                  </div>
                </div>
              </fieldset>
              <div class="buttons">

                <div class="pull-right" style="min-height:40px;">
                  <input class="btn " style="color:#606060;" type="submit" value="<?php echo $button_submit; ?>" />
                </div>

              </div>
              <div class="" style="height:20px;">
                  <h5><span style="color:#F0F0F0;"><?php echo $text_composory; ?></span> </h5>
              </div>
            </form>
         </div>
          <div class="col-sm-4">

            <div class="panel-default contact_bg" >
              <div class="panel-body" id="contact_details">
                <div class="row">
                  <div class="col-sm-12" style="min-height:100px;"></div>
                </div>   
                <div class="row">
                  <div class="col-sm-12"><img src="http://demo.jasperfoo.co.nz/image/contact_logo.png" title="Your Store" alt="Your Store" class"img-responsive"></div>
                </div>   
                <div class="row">
                  <div class="col-sm-12">
                    <address>
                    <h4><span style="color:#F0F0F0;"><?php echo $address; ?></span></h4>
                    </address>
                    <?php if ($geocode) { ?>
                    <a href="https://maps.google.com/maps?q=<?php echo urlencode($geocode); ?>&hl=en&t=m&z=15" target="_blank" class="btn btn-info"><i class="fa fa-map-marker"></i> <?php echo $button_map; ?></a>
                    <?php } ?>
                  </div>
                </div>
                <div class="row">
                  <div class="col-sm-12"><h4><span style="color:#F0F0F0;"><b>M:</b>  <?php echo $telephone; ?></span></h4>
                    <h4><span style="color:#F0F0F0;"><b>E:</b> <?php echo $store_email; ?></span></h4><br />
                  </div>
                </div>
                <div class="row">
                     <div class="col-sm-12">
                    <?php if ($open) { ?>
                    <strong><?php echo $text_open; ?></strong><br />
                    <?php echo $open; ?><br />
                    <br />
                    <?php } ?>
                    <?php if ($comment) { ?>
                    <strong><?php echo $text_comment; ?></strong><br />
                    <?php echo $comment; ?>
                    <?php } ?>
                  </div>
                </div>
                </div>
              </div>
            </div>
            <?php if ($locations) { ?>
            <h3><?php echo $text_store; ?></h3>
            <img src="http://demo.jasperfoo.co.nz/image/contact_logo.png" title="" alt="" class="img-responsive" >
            <div class="panel-group" id="accordion">
              <?php foreach ($locations as $location) { ?>
              <div class="panel panel-default">
                <div class="panel-heading">
                  <h4 class="panel-title"><a href="#collapse-location<?php echo $location['location_id']; ?>" class="accordion-toggle" data-toggle="collapse" data-parent="#accordion"><?php echo $location['name']; ?> <i class="fa fa-caret-down"></i></a></h4>
                </div>
                <div class="panel-collapse collapse" id="collapse-location<?php echo $location['location_id']; ?>">
                  <div class="panel-body">
                    <div class="row">
                       <div class="col-sm-12">
                            <img src="http://demo.jasperfoo.co.nz/image/contact_logo.png" title="" alt="" class="img-responsive" >
                      </div>
                    </div>
                    <div class="row">
                       <div class="col-sm-12">
                            <strong><?php echo $location['name']; ?></strong>
                            <address>
                            <?php echo $location['address']; ?>
                            </address>

                      </div>
                    </div>
       
                     <div class="row">
                       <div class="col-sm-12">
                             <strong><?php echo $text_telephone; ?></strong><?php echo $location['telephone']; ?><br />
                      </div>
                    </div>

                    <div class="row">
                       <div class="col-sm-12">
                             <strong><?php echo $text_telephone; ?></strong><?php echo $location['telephone']; ?><br />
                      </div>
                    </div>

                      <?php if ($location['image']) { ?>
                      <div class="col-sm-3"><img src="<?php echo $location['image']; ?>" alt="<?php echo $location['name']; ?>" title="<?php echo $location['name']; ?>" class="img-thumbnail" /></div>
                      <?php } ?>
                      <div class="col-sm-3"><strong><?php echo $location['name']; ?></strong><br />
                        <address>
                        <?php echo $location['address']; ?>
                        </address>
                        <?php if ($location['geocode']) { ?>
                        <a href="https://maps.google.com/maps?q=<?php echo urlencode($location['geocode']); ?>&hl=en&t=m&z=15" target="_blank" class="btn btn-info"><i class="fa fa-map-marker"></i> <?php echo $button_map; ?></a>
                        <?php } ?>
                      </div>
                      <div class="col-sm-3"> <strong><?php echo $text_telephone; ?></strong><br>
                        <?php echo $location['telephone']; ?><br />
                        <br />
                        <?php if ($location['fax']) { ?>
                        <strong><?php echo $text_fax; ?></strong><br>
                        <?php echo $location['fax']; ?>
                        <?php } ?>
                      </div>
                      <div class="col-sm-3">
                        <?php if ($location['open']) { ?>
                        <strong><?php echo $text_open; ?></strong><br />
                        <?php echo $location['open']; ?><br />
                        <br />
                        <?php } ?>
                        <?php if ($location['comment']) { ?>
                        <strong><?php echo $text_comment; ?></strong><br />
                        <?php echo $location['comment']; ?>
                        <?php } ?>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <?php } ?>
            </div>
            <?php } ?>

         </div>
       </div>
     </div>  


      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<div class="row" style="height:20px;"></div>

<?php echo $footer; ?>
