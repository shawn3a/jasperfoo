<div id="contact-box" class="col-md-8 col-md-offset-2 col-lg-6 col-lg-offset-3">
    <div class="glyphicon glyphicon-remove-circle cancal" id="contact-cancel"></div>
    <div class="row">
        <h3>CONTACT</h3>
        <p><span>If you have any queries about buying or selling a property drop Jasper a line.</span><br>
            <span style="font-size: 15px;">For urgent enquiry please buzz our mainline (09) 632 1299.</span>
        </p>
    </div>
    <div class="row">
        <div class="col-sm-8 clear-outer">
            <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data"
                  class="form-horizontal">
                    <!--<h3><?php echo $text_contact; ?></h3>-->
                    <div class="form-group clear-outer required">
                        <input type="text" name="email" value="<?php echo $email; ?>" id="input-email"
                               class="form-control" placeholder="Your email address*"/>
                        <?php if ($error_email) { ?>
                        <div class="text-danger"><?php echo $error_email; ?></div>
                        <?php } ?>
                    </div>
                    <div class="form-group clear-outer">
                        <input type="text" name="name" value="<?php echo $name; ?>" id="input-name"
                               class="form-control" placeholder="Subject of enquiry"/>
                        <?php if ($error_name) { ?>
                        <div class="text-danger"><?php echo $error_name; ?></div>
                        <?php } ?>
                    </div>
                    <div class="form-group clear-outer required">
                        <textarea name="enquiry" rows="10" id="input-enquiry" class="form-control"
                                  placeholder="Your Message*"><?php echo $enquiry; ?></textarea>
                        <?php if ($error_enquiry) { ?>
                        <div class="text-danger"><?php echo $error_enquiry; ?></div>
                        <?php } ?>
                    </div>
                <div class="buttons">
                    <div class="pull-right" style="min-height:40px;">
                        <input class="btn " style="color:#606060;" type="submit"
                               value="<?php echo $button_submit; ?>"/>
                    </div>
                </div>
                <div class="" style="height:20px;">
                    <h5><span style="color:#F0F0F0; font-style: italic;"><?php echo $text_composory; ?></span></h5>
                </div>
            </form>
        </div>
        <div class="col-sm-4">
            <div class="contact-info">
                <div class="contact-logo"></div>
                <p>
                    95 Manukau Road,<br>
                    Epsom, Auckland 1023
                </p>
                <p>
                    M&nbsp;021 276 0682<br>
                    E&nbsp;&nbsp;jasper.foo@harcourts.co.nz
                </p>
            </div>
        </div>
    </div>

</div>
