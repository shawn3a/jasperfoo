<footer>
  <div class="container-fluid">

    <div class="row">
     <div class="col-sm-5 col-sm-offset-1 footer-company">
                <div id="footerlogo" >
                   <a href="/index.php?route=common/home"><img src="/image/catalog/logo.png" title="Your Store" alt="Your Store" class="img-responsive"></a>
               </div>
                <p><?php echo $text_jasperfoo; ?><br> 
                <?php echo $text_licensed; ?>
                |<a href="<?php echo $privacy; ?>"><?php echo $text_privacy; ?></a>
                |<a href="<?php echo $disclaimer; ?>"><?php echo $text_disclaimer; ?></a>
                |<a href="<?php echo $advice; ?>"><?php echo $text_advice; ?></a></p> 
                <p><?php echo $powered; ?></p> 
         </div>
	
      <div class="col-sm-3">
       <!-- <h5><?php echo $text_service; ?></h5>-->
	   	<h5><?php echo $text_contact; ?></h5>
		
		<!-- the following is echo contact from database  -->
	   	<div >
              <address>
                  <?php echo $address; ?>
              </address>
             <p><b> M </b><?php echo $telephone; ?><br>
              <b> E </b><?php echo $email; ?></p>
              
         </div>
	   
        <!-- backup. 
        <ul class="list-unstyled">
          <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
          <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
          <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
        </ul>
         -->

      </div>
	  
      <?php if ($informations) { ?>
	  
			<!--<div id="logo" style="width:371px;height:53px;margin-left:550px;margin-top: 100px;">
				  <?php if ($logo) { ?>
				  <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
				  <?php } else { ?>
				  <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1> 
				  <?php } ?>
				</div> -->
	       
	  
	  
      <div class="col-sm-3" style="border-left: 2px solid #A5A5A5; height: 113px;">
        <!--<h5><?php echo $text_information; ?></h5>-->
		<h5><?php echo $text_quicklinks; ?></h5>
        <ul class="list-unstyled quick-links">
          <li><a href="<?php echo $about; ?>"><?php echo $text_about; ?></a></li>

          <?php foreach ($quicklinks as $quicklink) { ?>
          <li><a href="<?php echo $quicklink['href']; ?>"><?php echo $quicklink['name']; ?></a></li>
          <?php } ?>

          <li><a class="contact-link" href="javascript:void(0);"><?php echo $text_contact; ?></a></li>
        </ul>
      </div>
      <?php } ?>
    <!--  <div class="col-sm-3">
        <h5><?php echo $text_extra; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
          <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
          <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
          <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
        </ul>
      </div>
      <div class="col-sm-3">
        <h5><?php echo $text_account; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
          <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
          <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
          <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
        </ul>
      </div>-->
    </div>
  </div>
</footer>

<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//--> 

<!-- Theme created by Welford Media for OpenCart 2.0 www.welfordmedia.co.uk -->
<script src="catalog/view/javascript/customise.js" type="text/javascript"></script>
<script src="catalog/view/javascript/bootstrap-validator/dist/validator.min.js" type="text/javascript"></script>
</body></html>