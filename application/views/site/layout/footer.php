<footer>
  <div class="container">
    <div class="col-md-12">
     <div class="accordion clearfix">
      <div class="row">
        <div class="col-md-4">
          <div class="ntr">
           <span class="target-fix" id="accordion1"></span>
            <a href="#accordion1" id="open-accordion1" title="open"><h4>Sign up to our newsletter</h4></a>
            <a href="#accordion" id="close-accordion1" title="close"><h4>Sign up to our newsletter</h4></a>
			 <div class="accordion-content">
            <p>Subscribe to our newsletter to get the latest news, announcements, and 10% off your first order. </p>
            <form>
              <div class="form-group"><img src="<?=base_url('assets/xfitness/images/email.svg')?>">
                <input type="text" class="form-control" placeholder="Enter your Email">
                <button class="nws-btn"><img src="<?=base_url('assets/xfitness/images/nws-arw.svg')?>"></button>
              </div>
            </form>
            <!-- <img src="images/cards.png">  --></div>
            </div>
        </div>
        <div class="col-md-8">
          <div class="row">
            <div class="col-md-4">
              <div class="ftr">
               <span class="target-fix" id="accordion2"></span>
            <a href="#accordion2" id="open-accordion2" title="open"><h4>My Account</h4></a>
            <a href="#accordion" id="close-accordion2" title="close"><h4>My Account</h4></a>
                 <div class="accordion-content">
                <ul>
                  <li><a href="<?=base_url('/login-register')?>">Sign In</a></li>
                  <li><a href="<?=base_url('/login-register')?>">Create Account</a></li>
                  <li><a href="<?=base_url('/login-register')?>">Request New Password</a></li>
                  <li><a href="<?=base_url('/login-register')?>">Wishlist</a></li>
                </ul>
              </div>
              </div>
            </div>
            <div class="col-md-4">
              <div class="ftr">
               <span class="target-fix" id="accordion3"></span>
            <a href="#accordion3" id="open-accordion3" title="open"><h4>Legal Information</h4></a>
            <a href="#accordion" id="close-accordion3" title="close"><h4>Legal Information</h4></a>
               <div class="accordion-content">
                <ul>
                  <li><a href="<?=base_url('/about-us')?>">T&Cs</a></li>
                  <li><a href="<?=base_url('/about-us')?>">Privacy Policy</a></li>
                  <li><a href="<?=base_url('/about-us')?>">Return Policy</a></li>
                </ul>
              </div>
              </div>
            </div>
            <div class="col-md-4">
              <div class="ftr">
               <span class="target-fix" id="accordion4"></span>
            <a href="#accordion4" id="open-accordion4" title="open"><h4>About X Fitness</h4></a>
            <a href="#accordion" id="close-accordion4" title="close"><h4>About X Fitness</h4></a>
               <div class="accordion-content">
                <ul>
                  <li><a href="<?=base_url('/about-us')?>">About Us</a></li>
                  <li><a href="<?=base_url('/services')?>">Our Services</a></li>
                  <li><a href="#">Contact Us</a></li>
                </ul>
              </div>
              </div>
            </div>
          </div>
        </div>
      </div>
	 </div> 
    </div>
  </div>
</footer>
<section class="ftr-btm clearfix">
  <div class="container">
    <div class="col-md-12">
      <div class="ftr-lft">© 2021 X FITNESS - All Rights Reserved. </div>
      <div class="ftr-rgt">
        <ul>
          <li><a href="javascript:void(0)" target="_blank"><img src="<?=base_url('assets/xfitness/images/facebook.svg')?>"></a></li>
          <li><a href="javascript:void(0)" target="_blank"><img src="<?=base_url('assets/xfitness/images/google-plus.svg')?>"></a></li>
          <li><a href="javascript:void(0)" target="_blank"><img src="<?=base_url('assets/xfitness/images/instagram.svg')?>"></a></li>
          <li><a href="javascript:void(0)" target="_blank"><img src="<?=base_url('assets/xfitness/images/whatsapp.svg')?>"></a></li>
        </ul>
      </div>
    </div>
  </div>
</section>

    
<div class="cd-user-modal">
		<div class="cd-user-modal-container"> 
		
		
		<div class="row">
			<div class="col-md-6 form_product_image"><img src="<?=base_url('assets/xfitness/images/log-lft.jpg')?>" class="log-lft"></div>
			<div class="col-md-6">

			<div id="cd-login"> 
				<form action="<?=site_url('site/send_mail')?>" id="quote_form_list" method="post" class="cd-form cd-form-quote">
			       <h3>Get To Quote</h3>

          <p class="fieldset wizard-form-input">
						<label class="image-replace cd-productname " for="product-name">Product Name</label>
						<input class="full-width has-padding has-border form_product_name" name="form_product_name" id="product-name" type="text"  placeholder="Product Name">
            
          </p>

          <p class="fieldset wizard-form-input">
						<label class="image-replace cd-name " for="quote-name">Name</label>
						<input class="full-width has-padding has-border form_cd_name" required="" name="user_name" id="quote-name" type="text"  placeholder="Name">
            <span style="display:none;color:red"><?=$this->lang->line('name_require_lbl')?></span>
          </p>

					<p class="fieldset wizard-form-input">
						<label class="image-replace " for="quote-email">E-mail</label>
						<input class="full-width has-padding has-border user_email" required="" id="quote-email" name="user_email" type="email" placeholder="E-mail">
            <span style="display:none;color:red"><?=$this->lang->line('email_require_lbl')?></span>
          </p>

          <p class="fieldset wizard-form-input">
						<label class="image-replace cd-mobile" for="quote-mobile">Mobile No</label>
            <select style="width:65px" class="full-width has-padding has-border user_mobile_code" required="" id="quote-mobile-code" name="user_mobile_code"  placeholder="Mobile code">
            <option value="+91">+91</option>
            <option value="+974">+974</option>
            <option value="+971">+971</option>
            </select>
						<input style="width:285px" class="full-width has-padding has-border user_mobile" required="" id="quote-mobile" name="user_mobile" type="number" placeholder="Mobile No">
            <span style="display:none;color:red">Mobile No is required!</span>
          </p>

          <p class="fieldset wizard-form-input">
						<label class="image-replace cd-message" for="quote-message">Message</label>
						<input class="full-width has-padding has-border user_message" required="" id="quote-message" name="user_message" type="text"  placeholder="message">
            <span style="display:none;color:red">Message is required!</span>
          </p>
                   
					<p class="fieldset">
						<button class="btn btn-success " type="submit" style="border-radius: 45px;width:100%;text-align:center">Send Email</button>
					</p>
				
				</form>
			</div> 

			<div id="cd-reset-password"> 

				<form class="cd-form">
				<h3>Sign Up</h3>
				  <p class="cd-form-message">Lost your password? Please enter your email address. You will receive a link to create a new password.</p>

					<p class="fieldset">
						<label class="image-replace cd-email" for="reset-email">E-mail</label>
						<input class="full-width has-padding has-border" id="reset-email" type="email" placeholder="E-mail">
					</p>

					<p class="fieldset">
						<input class="full-width has-padding" type="submit" value="Reset password">
					</p>
					<p class="cd-form-bottom-message"><a href="#0">Back to log-in</a></p>
				</form>
			</div> <!-- cd-reset-password -->
			<a href="#0" class="cd-close-form">Close</a>
				
			</div>
		</div>
		</div> 
	</div>

      <script type="text/javascript" src="https://whytec.sg-host.com/assets/site_assets/js/custom_jquery.js"></script>
      <script src="https://whytec.sg-host.com/assets/site_assets/js/cust_javascript.js"></script>  
    
      <?php 
      if($this->db->get_where('tbl_web_settings', array('id' => '1'))->row()->libraries_load_from=='local'){
        ?>

        <script src="<?=base_url('assets/xfitness/js/webslidemenu.js')?>"></script>
        
        <script type="text/javascript" src="<?=base_url('assets/xfitness/js/owl.carousel.js')?>"></script>
        
        <script type="text/javascript" src="<?=base_url('assets/xfitness/js/login.js')?>"></script>
        
        <script type="text/javascript" src="<?=base_url('assets/xfitness/js/main.js')?>"></script>

      <?php }else if($this->db->get_where('tbl_web_settings', array('id' => '1'))->row()->libraries_load_from=='cdn'){ ?>
        <!-- Include CDN Files -->

        <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/scrollup/2.4.1/jquery.scrollUp.min.js"></script>
        
        <script type="text/javascript" src="<?=base_url('assets/site_assets/js/jquery.meanmenu.min.js')?>"></script>
        
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/owl.carousel.min.js"></script>
      <?php } ?>

      <?php 
    // for dynamic js files
      echo put_cdn_footers();
      echo put_footers();
      ?>


<script type="text/javascript" src="<?=base_url('assets/site_assets/js/jquery-ui.min.js')?>"></script>

<script type="text/javascript" src="<?=base_url('assets/sweetalert/sweetalert.min.js')?>"></script>

<script src="<?=base_url('assets/xfitness/js/webslidemenu.js')?>"></script>
        
        <script type="text/javascript" src="<?=base_url('assets/xfitness/js/owl.carousel.js')?>"></script>
        
        <script type="text/javascript" src="<?=base_url('assets/xfitness/js/login.js')?>"></script>
        <script type="text/javascript" src="<?=base_url('assets/xfitness/js/jquery.accord.min.js')?>"></script>
        <script type="text/javascript" src="<?=base_url('assets/xfitness/js/main.js')?>"></script>

      <?=html_entity_decode($this->db->get_where('tbl_web_settings', array('id' => '1'))->row()->footer_code)?>

    </body>
    </html>

    <script>
    $(".step_1_btn").on("click",function(e){

var btn=$(this);

var $inputs = $(".cd-form-quote").find("input");

var counts=0;

$inputs.each(function(){
    if($(this).val() != '') {
        $(this).parents(".wizard-form-input").find("span").css("display","none");
    } else {
      counts++;
      $(this).parents(".wizard-form-input").find("span").css("display","flex");
    }
});

if(counts > 0){
  return false;
}

var name=$(".step_1 :input[name='user_name']").val();
var email=$(".step_1 :input[name='user_email']").val();
var password=$(".step_1 :input[name='user_mobile']").val();
var cpassword=$(".step_1 :input[name='user_message']").val();

if(IsEmail(email)==false && email!=''){
  $(".step_1 :input[name='user_email']").parents(".wizard-form-input").find("span").text("<?=$this->lang->line('invalid_email_format')?>");
  $(".step_1 :input[name='user_email']").parents(".wizard-form-input").find("span").css("display","flex");
  counts++;
}
else{
  $(".step_1 :input[name='user_email']").parents(".wizard-form-input").find("span").css("display","none");
}



if(counts > 0){
  return false;
}



});
    </script>
    <script>
        $("#quote_form_list").submit(function(e) {
        e.preventDefault();

        $(".process_loader").show();

        
        var formData = $(this).serialize();

        var _form = $(this);

        $.ajax({
                type: 'POST',
                url: $(this).attr('action'),
                data: formData
            })
            .done(function(response) {

                var res = $.parseJSON(response);

                $('.notifyjs-corner').empty();

                $(".process_loader").hide();

                if (res.success == '1') {

                    _form.find("input").val('');
                    _form.find("textarea").val('');

                    _form.find("select").val('');

                    swal({
                        title: "Done!",
                        text: res.msg,
                        type: "success"
                    }, function() {
                        location.reload();
                    });
                } else {

                    swal(Settings.err_something_went_wrong, res.msg);
                    $('.btn_send').attr("disabled", false);
                }

            })
            .fail(function(data) {

            });

    });
    </script>