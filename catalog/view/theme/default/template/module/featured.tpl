
<!-- <?php echo $heading_title; ?></h3>  Featured from database  -->  
<div class="row">
<div class="col-sm-1"></div>	
<div class="col-sm-10" style="text-align:center;background-color:#F1F2F2;">
<div class="featuredimage" style="text-align:left; 	border-bottom: 1px solid #ffffff; padding-bottom:0px;">
   <h3 div id="Featured"><?php echo $heading_title; ?> </h3>
  <?php $row = 0; ?>  
  <?php for ($i=0;$i<=3;$i++) { ?> 
   	<?php if($i%2==0) { ?>
   		<?php if($i > 0) { ?>
   			</div>
   			<?php $row = $row + 1; ?>  
   		<?php } ?>
   		<div class="row">
   	<?php } ?>
    <?php $sold = 'CURRENT'; ?>
    <?php if($products[$i]['quantity'] > 0) { ?>
        <?php $sold = 'CURRENT'; ?>
     <?php }else{ ?>
        <?php $sold = 'SOLD'; ?>
     <?php } ?>
   	<?php if($row%2==0) { ?>
   		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12" style="margin:0px;">
   		<table style="width:100%;">
   			<tr>
   				<td style="width:50%;">
   					<div class="image">
			  		<a class='feature-img-container' href="<?php echo $products[$i]['href']; ?>">
			  			<img src="<?php echo $products[$i]['thumb']; ?>" alt="<?php echo $products[$i]['name']; ?>" title="<?php echo $products[$i]['name']; ?>" class="img-responsive" />

              <?php if($products[$i]['quantity'] <= 0) { ?>
                  <img class="img-sold" src="<?php echo $soldimage; ?>" alt="" title="" class="img-responsive" />

              <?php } ?>

			  		</a>
			  		</div>
			   </td>
   				<td style="width:50%; vertical-align: bottom; min-width:200px;">
					  <div class="caption" style="padding-left:5px;">
						<h4><a href="<?php echo $products[$i]['href']; ?>"><?php echo $products[$i]['name']; ?></a></h4> 
            <!--<?php echo $sold; ?> <?php echo $soldimage; ?> -->
						<p id="featureddescription"><?php echo $products[$i]['description']; ?></p>
					  </div>
					  <div class="detail_link" >
					  	<a href="<?php echo $products[$i]['href']; ?>"><b>&nbsp;&nbsp;&nbsp;< MORE DETAILS</b></a>

					  </div>

		   		</td>
   			</tr>
   		</table>	
   		</div>	
   	<?php }else{ ?>
   		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12" style="margin:0px;">
    		<table style="width:100%;">
   			<tr>
   				<td style="width:50%; vertical-align: bottom; min-width:200px;">
					  <div class="caption" style="padding-left:5px;">
						<h4><a href="<?php echo $products[$i]['href']; ?>"><?php echo $products[$i]['name']; ?></a></h4> 
						<p id="featureddescription"><?php echo $products[$i]['description']; ?></p>
					  </div>
					  <div class="detail_link" style="text-align:right;">
					  	<a href="<?php echo $products[$i]['href']; ?>"><b>MORE DETAILS >&nbsp;&nbsp;&nbsp;</b></a>
					  </div>

		   		</td>
   				<td style="width:50%;">
   					<div class="image">
			  		<a href="<?php echo $products[$i]['href']; ?>">
			  			<img src="<?php echo $products[$i]['thumb']; ?>" alt="<?php echo $products[$i]['name']; ?>" title="<?php echo $products[$i]['name']; ?>" class="img-responsive" />

              <?php if($products[$i]['quantity'] <= 0) { ?>
                  <img class="img-sold" src="<?php echo $soldimage; ?>" alt="" title="" class="img-responsive" />

              <?php } ?>

			  		</a>
			  		</div>
			   </td>
   			</tr>
   			</table>	
   		</div>	
	  
   	<?php } ?>
     <?php } ?> 	 <!-- end of for loop -->
	</div>

  </div> 
</div>
<div class="col-sm-1"></div>	
</div>
<div class="row" style="height:20px;"></div>


