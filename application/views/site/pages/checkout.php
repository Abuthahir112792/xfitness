<?php 
  $this->load->view('site/layout/breadcrumb'); 
  $ci =& get_instance();

  $currentURL = current_url();
  $params   = $_SERVER['QUERY_STRING'];
  $fullURL = $currentURL . '?' . $params;

  $cart_type=($buy_now=='true') ? 'temp_cart' : 'main_cart';
?>

<section class="main-sec">
  <div class="container">
    <div class="col-md-12">
      <div class="main-head">Check Out</div>
    </div>
    <div class="col-md-12">
      
      <div class="row">
      	<div class="col-md-12 col-lg-8">
      		<div class="check">
      			<h3>Shipping Information</h3>
            <?php 
            $order_address_id=0;
            foreach ($addresses as $key => $value) {

              if($value->is_default=='true'){
                $order_address_id=$value->id;
              }

              ?>
              <div class="address_details_item">
                <label class="container">
                  <input type="radio" name="radio" class="address_radio" value="<?=$value->id?>" <?php echo $value->is_default=='true' ? 'checked="checked"' : ''; ?>>
                  <span class="checkmark"></span>
                </label>
                
                <div class="address_list">
                  <span><?=$value->name?> <?=$value->mobile_no?></span>
                  <div class="address_list_edit">
                    <a href="javascript:void(0)" class="btn_edit_address" data-stuff='<?php echo htmlentities(json_encode($value)); ?>'><?=$this->lang->line('edit_btn')?></a>
                  </div>
                  <p>
                    <?=$value->building_name.', '.$value->road_area_colony.', '.$value->city.', '.$value->state.', '.$value->country.' - '.$value->pincode;?>
                  </p>
                </div>
                
              </div>
            <?php } ?>
      			<form action="<?php echo site_url('site/addAddress'); ?>" method="post" name="address_form">
      				<div class="row">
      					<div class="col-md-12">
      						<div class="form-group"><input type="text" name = "billing_name" placeholder="billing_name" class="form-control"></div>
      					</div>
      				</div>
      				<div class="row">
      					<div class="col-md-6">
      						<div class="form-group"><input type="text" name="billing_email" placeholder="billing_email" class="form-control"></div>
      					</div>
      					<div class="col-md-6">
      						<div class="form-group"><input type="text" name="billing_mobile_no" placeholder="billing_mobile_no" class="form-control"></div>
      					</div>
      				</div>
              <div class="row">
      					<div class="col-md-6">
      						<div class="form-group"><input type="text" name="alter_mobile_no" placeholder="alter_mobile_no" class="form-control"></div>
      					</div>
      					<div class="col-md-6">
      						<div class="form-group"><input type="text" name="building_name" placeholder="building_name" class="form-control"></div>
      					</div>
      				</div>
              <div class="row">
      					<div class="col-md-6">
      						<div class="form-group"><input type="text" name="road_area_colony" placeholder="road_area_colony" class="form-control"></div>
      					</div>
      					<div class="col-md-6">
      						<div class="form-group"><input type="text" name="landmark" placeholder="landmark" class="form-control"></div>
      					</div>
      				</div>
              <div class="row">
      					<div class="col-md-6">
      						<div class="form-group"><input type="text" name="country" placeholder="country" class="form-control"></div>
      					</div>
      					<div class="col-md-6">
      						<div class="form-group"><input type="text" name="state" placeholder="state" class="form-control"></div>
      					</div>
      				</div>
              <div class="row">
      					<div class="col-md-6">
      						<div class="form-group"><input type="text" name="district" placeholder="district" class="form-control"></div>
      					</div>
      					<div class="col-md-6">
      						<div class="form-group"><input type="text" name="city" placeholder="city" class="form-control"></div>
      					</div>
      				</div>
              <div class="row">
      					<div class="col-md-6">
      						<div class="form-group"><input type="text" name="pincode" placeholder="pincode" class="form-control"></div>
      					</div>
      					<div class="col-md-6">
      						<div class="form-group"><input type="text" name="address_type" placeholder="address_type" class="form-control"></div>
      					</div>
      				</div>
      				<div class="row">
      					<div class="col-md-12">
                <button class="form-button btn btn-success" type="submit" data-text="save"><?=$this->lang->line('save_btn')?></button>      					</div>
      				</div>
      			</form>
      		</div>
      		
      		
      		<!-- <div class="check">
      			<h3>Payment Information</h3>
      			<div class="row">
      					<div class="col-md-12">
      						<label class="label--checkbox"><input type="checkbox" class="checkbox" >Cash On Delivery</label>
      					</div>
      			</div>
      			<div class="row">
      					<div class="col-md-12">
      						<div class="form-group"><label class="label--checkbox"><input type="checkbox" class="checkbox" >Debit/Credit Card</label></div>
      					</div>
      			</div>	
      			<form>
      				<div class="row">
      					<div class="col-md-12">
      						<div class="form-group"><input type="text" placeholder="Card Number" class="form-control"></div>
      					</div>
      				</div>
      				<div class="row">
      					<div class="col-md-4">
      						<div class="form-group"><input type="text" placeholder="Exp Month" class="form-control"></div>
      					</div>
      					<div class="col-md-4">
      						<div class="form-group"><input type="text" placeholder="Exp Year" class="form-control"></div>
      					</div>
      					<div class="col-md-4">
      						<div class="form-group text-right"><img src="images/crds.jpg" class="img-fluid"></div>
      					</div>
      				</div>
      				<div class="row">
      					<div class="col-md-4">
      						<div class="form-group"><input type="text" placeholder="CCV" class="form-control"></div>
      					</div>
      					
      				</div>
      				
      				
      			</form>
      		</div> -->
      		
      	</div>
      	
      	
      	
      	<div class="col-md-12 col-lg-4">
      		<div class="check">
      			<h4>Order Summary</h4>
            <?php 

                $total_cart_amt=$you_save=$delivery_charge=0;

                $cart_ids='';

                foreach ($my_cart as $key => $value) {

                  $cart_ids.=$value->id.',';

                  $is_avail=true;

                  if($ci->get_single_info(array('id' => $value->product_id),'status','tbl_product')==0){
                    $is_avail=false;
                  }

                  ?>
      			<ul>
      				<li class="clearfix">
              <span class="os-lft" <?=(!$is_avail) ? 'style="opacity: 0.5;"' : ''?>><?php 
                          if(strlen($value->product_title) > 25){
                            echo substr(stripslashes($value->product_title), 0, 25).'...';  
                          }else{
                            echo $value->product_title;
                          }
                        ?>×<?=$value->product_qty?>QTY</span>
                        <?php 
                        if(!$is_avail){
                          echo '<br/><p style="color: red;background: #FFF;display: inline-block;box-shadow: 0px 5px 10px #ccc;padding: 5px 10px;line-height: initial">'.$this->lang->line('unavailable_lbl').'</p>';
                        }
                      ?>
              <span class="os-rgt product-total" <?=(!$is_avail) ? 'style="opacity: 0.5;"' : ''?>><?php 
                        if($value->you_save_amt!='0'){
                          echo CURRENCY_CODE.' '.number_format(($value->selling_price * $value->product_qty), 2);
                          echo '<br/>';
                          echo '<del style="color: #a2a2a2">';
                          echo CURRENCY_CODE.' '.number_format(($value->product_mrp * $value->product_qty), 2);
                          echo '</del>';
                        }
                        else{
                          echo CURRENCY_CODE.' '.number_format(($value->selling_price * $value->product_qty), 2);
                        }
                        ?></span> 
              </li>
              <?php

                    if($is_avail){
                      $total_cart_amt+=$value->selling_price*$value->product_qty;
                      $delivery_charge+=$value->delivery_charge;
                      $you_save+=$value->you_save_amt * $value->product_qty;
                    }
                  }

                  $cart_ids=rtrim($cart_ids,',');

                  $total_cart_amt+=$delivery_charge;
                  ?>
      				<li class="clearfix"><span class="os-lft">Sub Total</span> <span class="os-rgt"><?=CURRENCY_CODE.' '.number_format(($total_cart_amt-$delivery_charge), 2);?></span> </li>
      				<li class="clearfix"><span class="os-lft">Delivery Charge</span> <span class="os-rgt"><?=($delivery_charge!=0)?'+ '.CURRENCY_CODE.number_format($delivery_charge, 2) : $this->lang->line('free_lbl');?></span> </li>
              <li class="clearfix"><span class="os-lft">Total</span> <span class="os-rgt"><?=CURRENCY_CODE.' '.number_format($total_cart_amt, 2);?></span> </li>
            </ul>
            <form method="POST" name="place_order">
              <input type="hidden" name="buy_now" value="<?=$buy_now?>">
              <input type="hidden" name="coupon_id" value="<?=$coupon_id?>">
              <input type="hidden" name="order_address" value="<?=$order_address_id?>">
              <input type="hidden" name="cart_ids" value="<?=$cart_ids?>">
              <ul>
              <?php 
                  if($this->db->get_where('tbl_settings', array('id' => '1'))->row()->cod_status!='false')
                  {
                ?>
                <li class="payment_method">
                  <input id="payment_method_cod" class="input-radio" name="payment_method" checked="checked" value="cod" type="radio">
                  <label for="payment_method_cod"><?=$this->lang->line('cod_lbl')?></label>
                  <div class="pay-box payment_method_cod">
                    <div class="col-md-12">
                      <div class="col-md-3 col-sm-2" style="padding:0 8px">
                        <label style="margin-top: 10px;letter-spacing: 2px"><span class="_lblnum1"><?=rand(0,10)?></span> + <span class="_lblnum2"><?=rand(5,10)?></span> = </label>
                      </div>
                      <div class="col-md-4 col-sm-4 col-xs-12" style="padding:0 8px 0 0">
                        <input type="text" name="" class="form-control input_txt">
                      </div>    
                      <div class="col-md-4 col-sm-6"></div>
                    </div>            
                  </div>
                </li>
                <?php } ?>
                <?php 
                if($this->db->get_where('tbl_settings', array('id' => '1'))->row()->paypal_status!='false' AND $this->db->get_where('tbl_settings', array('id' => '1'))->row()->paypal_client_id!='' AND $this->db->get_where('tbl_settings', array('id' => '1'))->row()->paypal_secret_key!='')
                {
                  ?>
                  <li class="payment_method">
                    <input id="payment_method_paypal" class="input-rado" name="payment_method" value="paypal" data-order_button_text="Proceed to PayPal" type="radio">
                    <label for="payment_method_paypal"> <?=$this->lang->line('paypal_lbl')?> <img src="<?=base_url('assets/site_assets/img/payment/payment2.png')?>" alt="" style="max-width: 50%"/></label>
                    <div class="pay-box payment_method_paypal">
                      <p><?=$this->lang->line('paypal_msg_lbl')?></p>
                    </div>
                  </li>
                <?php } ?>
                <?php
                if($this->db->get_where('tbl_settings', array('id' => '1'))->row()->stripe_status!='false' AND $this->db->get_where('tbl_settings', array('id' => '1'))->row()->stripe_key!='' AND $this->db->get_where('tbl_settings', array('id' => '1'))->row()->stripe_secret!='')
                {
                  ?>
                  <li class="payment_method">
                    <input id="payment_method_stripe" class="input-rado" name="payment_method" value="stripe" data-order_button_text="Proceed to Stripe" type="radio">
                    <label for="payment_method_stripe"> <?=$this->lang->line('stripe_lbl')?> <img src="<?=base_url('assets/site_assets/img/payment/stripe-payment-icon.png')?>" alt="" style="max-width: 50%"/></label>            
                    <div class="pay-box payment_method_stripe">
                      <p><?=$this->lang->line('stripe_msg_lbl')?></p>
                    </div>
                  </li>
                <?php } ?>
                <?php 
                if($this->db->get_where('tbl_settings', array('id' => '1'))->row()->razorpay_status!='false' AND $this->db->get_where('tbl_settings', array('id' => '1'))->row()->razorpay_key!='' AND $this->db->get_where('tbl_settings', array('id' => '1'))->row()->razorpay_secret!='' AND APP_CURRENCY=='INR')
                {
                  ?>
                  <li class="payment_method">
                    <input id="payment_method_razorpay" class="input-rado" name="payment_method" data-amount="<?=$total_cart_amt?>" value="razorpay" data-order_button_text="Proceed to Razorpay" type="radio">
                    <label for="payment_method_razorpay"> <?=$this->lang->line('razorpay_lbl')?> <img src="<?=base_url('assets/site_assets/img/payment/Razorpay.png')?>" alt="" style="max-width: 50%;width: 300px"/></label>            
                    <div class="pay-box payment_method_razorpay" style="display: none;">
                      <p><?=$this->lang->line('razorpay_msg_lbl')?></p>
                    </div>

                  </li>
                <?php } ?>
                <input type="hidden" name="current_page" value="<?=$fullURL?>">
                <button class="order-btn btn_place_order"><?=$this->lang->line('place_ord_btn')?></button>
              </ul>
            </form>

            <?php 
            if($this->db->get_where('tbl_settings', array('id' => '1'))->row()->razorpay_status!='false' AND $this->db->get_where('tbl_settings', array('id' => '1'))->row()->razorpay_key!='' AND $this->db->get_where('tbl_settings', array('id' => '1'))->row()->razorpay_secret!='' AND APP_CURRENCY=='INR')
            {
              ?>

              <form action="<?=base_url('razorpay/pay')?>" method="post" id="razorpayForm" style="display: none;">
              </form>
            <?php } ?>
      		</div>

      	</div>
      	
      </div>
      
      
      
      
      
    </div>
  </div>
</section>

    <script src="https://js.stripe.com/v2/"></script>
    <script type="text/javascript">

    // for stripe payment
    var $form = $(".require-validation");
    $('form.require-validation').bind('submit', function(e) {

      $(".process_loader").show();

      e.preventDefault();

      var $form         = $(".require-validation"),
      inputSelector = ['input[type=email]', 'input[type=password]', 'input[type=text]', 'input[type=file]','textarea'].join(', '),
      $inputs       = $form.find('.required').find(inputSelector),
      $errorMessage = $form.find('div.error'),
      valid         = true;
      $errorMessage.addClass('hide');
      
      $('.has-error').removeClass('has-error');
      $inputs.each(function(i, el) {
        var $input = $(el);
        if ($input.val() === '') {
          $input.parent().addClass('has-error');
          $errorMessage.removeClass('hide');
          e.preventDefault();
        }
      });
      
      if (!$form.data('cc-on-file')) {
        e.preventDefault();
        Stripe.setPublishableKey($form.data('stripe-publishable-key'));
        Stripe.createToken({
          number: $('.card-number').val(),
          cvc: $('.card-cvc').val(),
          exp_month: $('.card-expiry-month').val(),
          exp_year: $('.card-expiry-year').val()
        }, stripeResponseHandler);
      }
      
    });

    function stripeResponseHandler(status, response) {

      $(".process_loader").show();

      if (response.error) {

        $(".process_loader").hide();

        $('.error')
        .removeClass('hide')
        .find('.alert')
        .text(response.error.message);
      } else {

        var token = response['id'];
        $form.find('input[type=text]').empty();
        $("#stripeModal").modal("hide");

        $.ajax({
          type:'POST',
          url:$form.attr("action"),
          data:$form.serialize(),
          success:function(res){
            $(".process_loader").hide();
            var obj = $.parseJSON(res);
            if(obj.success=='1'){
              $(".process_loader").hide();
              window.location.href='<?=base_url().'my-orders';?>';
            }
            else if(obj.success=='-2'){
              swal({
                title: Settings.err_something_went_wrong,
                text: obj.msg,
                type: "error"
              }, function() {
                window.location.href='<?=base_url().'my-cart';?>';
              });
            }
            else{
              swal({
                title: Settings.err_something_went_wrong,
                text: obj.msg,
                type: "error"
              }, function() {
                location.reload();
              });
            }

          }
        });
      }
    }

  </script>
 

  <?php 
  if($coupon_id!=0){
    ?>
    <script type="text/javascript">

      href = "<?=base_url('site/apply_coupon')?>";

      var coupon_id="<?=$coupon_id?>";
      var cart_ids="<?=$cart_ids?>";

      var cart_type="<?=$cart_type?>";
      
      $.ajax({
        url: href,
        type: 'post',
        data: {'coupon_id' : coupon_id, 'cart_ids' : cart_ids, 'cart_type' : cart_type},
        success: function(data) {
          var obj = $.parseJSON(data);

          $(".code_err").hide();

          $("#coupons_detail").modal("hide");
          
          if(obj.success == '1') {
            $(".order-total").find("span").html("<?=CURRENCY_CODE?>" + ' ' + obj.payable_amt);
            $(".msg_2").html(obj.you_save_msg);
            $(".apply_msg").show();
            $("input[name='coupon_id']").val(obj.coupon_id);
            $(".apply_button").hide();
            $(".remove_coupon").show();
          }
          else if(obj.success=='-1'){
            
          }
          else {
            swal({
              title: Settings.err_something_went_wrong,
              text: obj.msg,
              type: "error"
            }, function() {
              location.reload();
            });
          }
        },
        error: function(res) {
          alert("error");
        }

      });
    </script>
    <?php
  }
  ?>

<?php
  if($this->session->flashdata('payment_msg')) {
    $data = $this->session->flashdata('payment_msg');
    ?>
    <script type="text/javascript">
      $("#orderConfirm .ord_no_lbl").text('<?=$data['order_unique_id']?>');

      $("#orderConfirm .btn_track").click(function(e){
        window.location.href='<?=base_url().'my-orders/'.$data['order_unique_id']?>';
      });

      $("#orderConfirm").fadeIn();
    </script>
    <?php
  } 
  ?>