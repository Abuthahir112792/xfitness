<?php 

if($this->db->get_where('tbl_web_settings', array('id' => '1'))->row()->libraries_load_from=='local')
{
add_css(array('assets/site_assets/css/nivo-slider.css', 'assets/site_assets/css/slick.min.css'));

add_footer_js(array('assets/site_assets/js/jquery.nivo.slider.js','assets/site_assets/js/jquery.countdown.min.js','assets/site_assets/js/slick.min.js'));
}
else if($this->db->get_where('tbl_web_settings', array('id' => '1'))->row()->libraries_load_from=='cdn')
{
add_cdn_css(array('https://cdnjs.cloudflare.com/ajax/libs/jquery-nivoslider/3.2/nivo-slider.min.css', 'https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.css'));

add_footer_cdn_js(array('https://cdnjs.cloudflare.com/ajax/libs/jquery-nivoslider/3.2/jquery.nivo.slider.min.js','https://cdnjs.cloudflare.com/ajax/libs/jquery.countdown/2.2.0/jquery.countdown.min.js','https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js'));
}

add_footer_js(array('assets/site_assets/js/nivo.slider.init.js', 'assets/site_assets/js/slick.init.js'));

$this->load->view('site/layout/breadcrumb'); 

$ci =& get_instance();

$single_pre_url=current_url();

$this->session->set_userdata(array('single_pre_url' => $single_pre_url));

$user_id=$this->session->userdata('user_id') ? $this->session->userdata('user_id'):'0';

$thumb_img_nm = preg_replace('/\\.[^.\\s]{3,4}$/', '', $product->featured_image);

$img_file=$ci->_create_thumbnail('assets/images/products/',$thumb_img_nm,$product->featured_image,600,600);

$img_file_sm=$ci->_create_thumbnail('assets/images/products/',$thumb_img_nm,$product->featured_image,200,200);

$full_img='<div class="item">
<img src="'.base_url().$img_file.'" alt="" class="img-responsive">
</div>';

$thumb_img='<div class="item">
<img src="'.base_url().$img_file_sm.'" alt="" class="img-responsive">
</div>';


$where = array('parent_id' => $product->id,'type' => 'product');

$row_img=$ci->common_model->selectByids($where,'tbl_product_images');

foreach ($row_img as $key => $value) {

	$thumb_img_nm = preg_replace('/\\.[^.\\s]{3,4}$/', '', $value->image_file);

	$img_big=$ci->_create_thumbnail('assets/images/products/gallery/',$thumb_img_nm,$value->image_file,600,600);

	$img_small=$ci->_create_thumbnail('assets/images/products/gallery/',$thumb_img_nm,$value->image_file,200,200);

	$full_img.='<div class="item">
<img src="'.base_url().$img_big.'" alt="" class="img-responsive">
</div>';

$thumb_img.='<div class="item">
<img src="'.base_url().$img_small.'" alt="" class="img-responsive">
</div>';}

$size=$selected_size=$size_view='';
if($product->product_size !=''){

	$i=1;
	foreach (explode(',', $product->product_size) as $key => $value) {

		$class='radio_btn';

		if($ci->check_cart($product->id,$this->session->userdata('user_id'))){

			$cart_size=$ci->get_single_info(array('product_id' => $product->id, 'user_id' => $this->session->userdata('user_id')),'product_size','tbl_cart');


			if($cart_size==$value){
				$class='radio_btn selected';
			}
			else{
				$class='radio_btn';
			}
		}
		else{
			if($i==1){
				$class='radio_btn selected';
			}
			else{
				$class='radio_btn';
			}
		}

		if($i==1){
			$selected_size=$value;
			$size.='<div class="'.$class.'" data-value="'.$value.'">'.$value.'</div>';
			$i=0;
		}
		else{
			$size.='<div class="'.$class.'" data-value="'.$value.'">'.$value.'</div>';
		}
	}

	$size_chart=($product->size_chart!='') ? base_url('assets/images/products/'.$product->size_chart) : "";


	if($size_chart!=''){
		$size_view.='<p style="font-weight: 600">'.$this->lang->line('size_lbl').': </p>
					<div class="radio-group" style="margin-bottom:10px">
					'.$size.'
					<br/>
					<input type="hidden" id="radio-value" name="product_size" value="'.$selected_size.'" />
					</div><a href="" class="size_chart" data-img="'.$size_chart.'"><img src="'.base_url('assets/images/size_chart.png').'" style="width:20px;height:20px;margin-right:4px;"> '.$this->lang->line('size_chart_lbl').'</a><br/><br/>';
	}
}

$is_avail=true;

if($product->status==0)
{
	$is_avail=false;
}

?>
<section class="main-sec">
  <div class="container">
    <div class="col-md-12">
      <div class="det-sec">
        <div class="row">
          <div class="col-md-6">
            <div class="slider-container">
              <div id="slideritem" class="owl-carousel">
              <?=$full_img?>
              </div>
            </div>
            <div class="thumbnail-slider-container">
              <div id="thumbnailSlider" class="thumbnail-slider owl-carousel">
              <?=$thumb_img?>
              </div>
            </div>
          </div>
          <div class="col-md-6">
          <h2><?=$product->product_title?></h2>
          <h6><?php 
							if($product->you_save_amt!='0'){
								?>
								<span class="new-price"><?=CURRENCY_CODE.' '.number_format($product->selling_price, 2)?></span> 
								<span class="old-price"><?=CURRENCY_CODE.' '.number_format($product->product_mrp, 2);?></span>
								<?php
							}
							else{
								?>
								<span class="new-price"><?=CURRENCY_CODE.' '.number_format($product->product_mrp, 2);?></span>
								<?php
							}
							?></h6><h6><span> <?php 
							if($product->offer_id!=0){
								?>
								<?=$this->lang->line('applied_offer_lbl')?><?php } ?> </span></h6>
								<h6><span> 
								Discount: <?=$ci->get_single_info(array('id' => $product->offer_id),'offer_percentage','tbl_offers')?>% </span></h6>
            
            <div class="dec">
              <article class="accord acrd">
                <h4 class="accord__head">DETAILS </h4>
                <div class="accord__body">
                <p><?=$product->product_desc?></p>
                </div>
              </article>
              <article class="accord acrd">
                <h4 class="accord__head">DESCRIPTION </h4>
                <div class="accord__body">
                <p><?=$product->product_desc?></p>
                </div>
              </article>
            </div>
            <div class="ad-crt">
            <div class="main-text" style="float:left">
              <ul>
                <li>
                 
                </li>
                <li><a href="#" class="cd-signin tester" data-select="<?=$product->product_title?>" data-id="<?=$product->featured_image?>" data-type="<?=CURRENCY_CODE.' '.number_format($product->product_mrp, 2);?>">GET TO QUOTE</a></li>
              </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <section class="di clearfix">
    <div class="container">
      <div class="col-md-12">
        
        <dl class="responsive-tabs clearfix">
          <dt>Product Detail</dt>
          <dd >
            <div class="col-md-12 clearfix animated fadeIn xsp-2">
              <div class="des">
                <p>An ideal exercise bike for performing cardio workouts from the comfort of home! The Reebok Fitness AR Sprint Bike is designed to deliver smooth rotation with its sturdy 14 kg flywheel. This feature-packed exercise bike boasts dual adjustable seat that facilitates both vertical and horizontal adjustment with additional foam padding. The adjustable saddle offers customisation and laid-back training for long hours. Comes equipped with heavy-duty caged pedals that provide maximum foot protection during workout, it helps users achieve best performance every time. The Reebok AR Sprint Bike offers 6 console programs via the LED window display and allows every user to track performance feedback on real-time basis with respect to distance covered, time, calories burned and so on. Making every user challenge his/her own fitness levels, the Reebok AR Fitness Sprint Bike is one of a kind workout equipment for cardio and aerobic fitness enthusiasts. The adjustable brake pad resistance facilitates workouts at increased intensity levels. Now, it is easy to explore the best way to enhance endurance level from home fitness studio.</p>
                
                <div class="col-md-12">
                	<div class="row">
                		<div class="col-md-8 p-0">
                			<table class="table table-bordered table-striped">
                				<tbody>
                					<tr>
                						<td>Flywheel</td>
                						<td>  14 Kg</td>
                					</tr>
                					<tr>
                						<td>Resistance level</td>
                						<td>15 manual resistance levels</td>
                					</tr>
                					<tr>
                						<td>Resistance Type</td>
                						<td>Adjustable brake pad resistance</td>
                					</tr>
                					<tr>
                						<td>Manual with 6 console programs</td>
                						<td>  Manual with 6 console programs</td>
                					</tr>
                					<tr>
                						<td>Console</td>
                						<td>LED window display</td>
                					</tr>
                					<tr>
                						<td>Drive</td>
                						<td>Chain driven</td>
                					</tr>
                					<tr>
                						<td>Pedal</td>
                						<td> Caged pedals with adjustable straps</td>
                					</tr>
                					<tr>
                						<td>Saddle	     </td>
                						<td>Racing saddle</td>
                					</tr>
                					<tr>
                						<td>Transport</td>
                						<td>Built-in transport wheels</td>
                					</tr>
                					<tr>
                						<td>Water bottle holder</td>
                						<td>Yes</td>
                					</tr>
                					<tr>
                						<td>Power Requirement	</td>
                						<td>No mains power required</td>
                					</tr>
                					<tr>
                						<td>Batteries</td>
                						<td> Included</td>
                					</tr>
                					<tr>
                						<td>Seat Adjustment</td>
                						<td>Vertical & horizontal seat adjustment</td>
                					</tr>
                					<tr>
                						<td>Seat Height</td>
                						<td>  64 cm - 100 cm</td>
                					</tr>
                					<tr>
                						<td>Max. user weight</td>
                						<td> 100 kg</td>
                					</tr>
                					<tr>
                						<td>Dimension</td>
                						<td>116 x 42 x 100 cm</td>
                					</tr>
                				</tbody>
                			</table>
                		</div>
                	</div>
                </div>
              </div>
            </div>
          </dd>
          <!--<dt> Reviews </dt>
          <dd>
            <div class="col-md-12 clearfix animated fadeIn xsp-2">
              <div class="row">
                <div class="col-md-6">
                  <div class="inner">
                    <div class="rating"> <span class="rating-num">4.0</span>
                      <div class="rating-stars"> <span><i class="active fa fa-star"></i></span> <span><i class="active fa fa-star"></i></span> <span><i class="active  fa fa-star"></i></span> <span><i class="active fa fa-star"></i></span> <span><i class="fa fa-star"></i></span> </div>
                      <div class="rating-users"> <i class="icon-user"></i> 1,014,004 total </div>
                    </div>
                    <div class="histo">
                      <div class="five histo-rate"> <span class="histo-star"> <i class="active icon-star"></i> 5 </span> <span class="bar-block"> <span id="bar-five" class="bar"> <span>566,784</span>&nbsp; </span> </span> </div>
                      <div class="four histo-rate"> <span class="histo-star"> <i class="active icon-star"></i> 4 </span> <span class="bar-block"> <span id="bar-four" class="bar"> <span>171,298</span>&nbsp; </span> </span> </div>
                      <div class="three histo-rate"> <span class="histo-star"> <i class="active icon-star"></i> 3 </span> <span class="bar-block"> <span id="bar-three" class="bar"> <span>94,940</span>&nbsp; </span> </span> </div>
                      <div class="two histo-rate"> <span class="histo-star"> <i class="active icon-star"></i> 2 </span> <span class="bar-block"> <span id="bar-two" class="bar"> <span>44,525</span>&nbsp; </span> </span> </div>
                      <div class="one histo-rate"> <span class="histo-star"> <i class="active icon-star"></i> 1 </span> <span class="bar-block"> <span id="bar-one" class="bar"> <span>136,457</span>&nbsp; </span> </span> </div>
                    </div>
                  </div>
                </div>
                
                <div class="col-md-6">
                	<div class="rvw-rgt">
                   <h5>Add Your Comment</h5>
                   <p>Rating</p>
                   <div class="star-rating">
                   
      <div class="star-rating__wrap">
        <input class="star-rating__input" id="star-rating-5" type="radio" name="rating" value="5">
        <label class="star-rating__ico fa fa-star-o fa-lg" for="star-rating-5" title="5 out of 5 stars"></label>
        <input class="star-rating__input" id="star-rating-4" type="radio" name="rating" value="4">
        <label class="star-rating__ico fa fa-star-o fa-lg" for="star-rating-4" title="4 out of 5 stars"></label>
        <input class="star-rating__input" id="star-rating-3" type="radio" name="rating" value="3">
        <label class="star-rating__ico fa fa-star-o fa-lg" for="star-rating-3" title="3 out of 5 stars"></label>
        <input class="star-rating__input" id="star-rating-2" type="radio" name="rating" value="2">
        <label class="star-rating__ico fa fa-star-o fa-lg" for="star-rating-2" title="2 out of 5 stars"></label>
        <input class="star-rating__input" id="star-rating-1" type="radio" name="rating" value="1">
        <label class="star-rating__ico fa fa-star-o fa-lg" for="star-rating-1" title="1 out of 5 stars"></label>
      </div>
    </div>
    
    <form>
      <div class="form-group clearfix">
      <div class="row">
        <div class="col-md-3"><label>Name</label></div>
        <div class="col-md-9"><input type="text" class="form-control"></div>
      </div>
      </div>
      <div class="form-group clearfix">
      <div class="row">
        <div class="col-md-3"><label>Email</label></div>
        <div class="col-md-9"><input type="text" class="form-control"></div>
      </div>
      </div>
      <div class="form-group clearfix">
      <div class="row">
        <div class="col-md-3"><label>review</label></div>
        <div class="col-md-9"><textarea class="form-control"></textarea></div>
      </div>
      </div>
      <div class="form-group clearfix">
      <div class="row">
        <div class="col-md-3"></div>
        <div class="col-md-9"><button class="rvw-btn">ADD to basket</button></div>
      </div>
      </div>
    </form>
                   
                </div>
                </div>
                
              </div>
              <div class="rvw">
              <ul>
                <li>
                  <div class="str"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star-o"></i><i class="fa fa-star-o"></i></div>
                  <p>when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. </p>
                  <h4>John Doe <span>19 February 2018</span></h4>
                </li>
                
                <li>
                  <div class="str"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star-o"></i><i class="fa fa-star-o"></i></div>
                  <p>when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. </p>
                  <h4>John Doe <span>19 February 2018</span></h4>
                </li>
                
                <li>
                  <div class="str"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star-o"></i><i class="fa fa-star-o"></i></div>
                  <p>when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. </p>
                  <h4>John Doe <span>19 February 2018</span></h4>
                </li>
                
                <li>
                  <div class="str"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star-o"></i><i class="fa fa-star-o"></i></div>
                  <p>when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. </p>
                  <h4>John Doe <span>19 February 2018</span></h4>
                </li>
                
              </ul>
            </div>
            </div>
          </dd>-->
        </dl>
      </div>
    </div>
  </section>
  <section class="rp">
    <div class="container">
      <div class="col-md-12">
        <h3>Related Products</h3>
        <div id="owl-demo11" class="owl-carousel owl-theme" >
        <?php 

foreach ($related_products as $key => $product_row) 
{

  $thumb_img_nm = preg_replace('/\\.[^.\\s]{3,4}$/', '', $product_row->featured_image);

  $img_file=$ci->_create_thumbnail('assets/images/products/',$thumb_img_nm,$product_row->featured_image,210,210);

  $img_file2=$ci->_create_thumbnail('assets/images/products/',$product_row->id,$product_row->featured_image2,210,210);

  $is_avail=true;

  if($product_row->status==0)
  {
    $is_avail=false;
  }

  ?> 
          <div class="item">
          	<figure><a href="<?php echo site_url('product/'.$product_row->product_slug); ?>">
                  <div class="pc-img"><img src="<?=base_url().$img_file?>"></div></a>
                  <figcaption>
                    <div class="pc-crt main-text"><a href="#" class="cd-signin tester" data-select="<?=$product_row->product_title?>" data-id="<?=$product_row->featured_image?>" data-type="<?=CURRENCY_CODE.' '.number_format($product_row->product_mrp, 2);?>"><img style="margin-top:17px" src="<?=base_url('assets/xfitness/images/cart.svg')?>"></a></div>
                    <h5><?php 
                              if($product_row->you_save_amt!='0'){
                                ?>
                                <span class="new-price"><?=CURRENCY_CODE.' '.number_format($product_row->selling_price, 2)?></span> 
                                <span class="old-price"><?=CURRENCY_CODE.' '.number_format($product_row->product_mrp, 2);?></span>
                                
                                <?php
                              }
                              else{
                                ?>
                                <span class="new-price"><?=CURRENCY_CODE.' '.number_format($product_row->product_mrp, 2);?></span>
                                <?php
                                
                              }
                            ?></h5><h4><?php 
                            if(strlen($product_row->product_title) > 16){
                              echo substr(stripslashes($product_row->product_title), 0, 16).'...';  
                            }else{
                              echo $product_row->product_title;
                            }
                          ?></h4>
                    </figcaption>
                </figure>
          </div>
          <?php } ?>
        </div>
      </div>
    </div>
  </section>
</section>


<script>
  $(".tester").click(function(e){
    e.preventDefault();
    var product_name = $(this).data("select");
    var product_image = $(this).data("id");

    var product_price = $(this).data("type");
    var product_image_path = "<?=base_url('assets/images/products/')?>"
    console.log(product_image_path+product_image);
    $(".form_product_name").val(product_name);
    $(".form_product_price").val(product_price);
    $(".form_product_image").attr("src", product_image_path+product_image);
  });
  </script>