<section class="slider">
 <div id="owl-demo" class="owl-carousel owl-theme">
 <?php

                    foreach ($banner_list as $key => $row)
                    {?>
	<div class="item"><img src="<?=base_url('assets/images/banner/').$row->banner_image?>"></div>
	<?php } ?>
 </div>
</section>


<section class="sec1">
	<div class="container-fluid">
		<div class="row">
		<?php 
            $i=0;
			$ci =& get_instance();
            foreach ($first_two_category_list as $key => $row) 
            {

              $thumb_img_nm = preg_replace('/\\.[^.\\s]{3,4}$/', '', $row->category_image);

              $img_file=base_url().('assets/images/category/'.$row->category_image);

              $counts=$ci->getCount('tbl_sub_category', array('category_id' => $row->id, 'status' => '1'));

              if($counts > 0)
              {
                $url=base_url('category/'.$row->category_slug);  
              }
              else{
                $url=base_url('category/products/'.$row->id);
              }
              ?>
			<div class="col-md-6">
				<figure><a href="<?=site_url('product_category/'.$row->id)?>"><img src="<?=$img_file?>"><figcaption><p style="color: #ffffff;font-weight: 900;font-size: 25px;"><?php echo $row->category_name;?></p></figcaption></a></figure>
			</div>
			<?php } ?>
		</div>
	</div>
</section>

<section class="sec1 sec2">
	<div class="container-fluid">
		<div class="row">
		<?php 
            $i=0;
			$ci =& get_instance();
            foreach ($another_category_list as $key => $row) 
            {

              $thumb_img_nm = preg_replace('/\\.[^.\\s]{3,4}$/', '', $row->category_image);

              $img_file=base_url().('assets/images/category/'.$row->category_image);

              $counts=$ci->getCount('tbl_sub_category', array('category_id' => $row->id, 'status' => '1'));

              if($counts > 0)
              {
                $url=base_url('category/'.$row->category_slug);  
              }
              else{
                $url=base_url('category/products/'.$row->id);
              }
              ?>
			<div class="col-md-4">
			<figure><a href="<?=site_url('product_category/'.$row->id)?>"><img src="<?=$img_file?>"><figcaption><p style="color: #ffffff;font-weight: 900;font-size: 25px;"><?php echo $row->category_name;?></p></figcaption></a></figure>
			</div>
			<?php } ?>
		</div>
	</div>
</section>


<section class="sec3">
   <h3>Latest Products</h3>
	<div id="owl-demo1" class="owl-carousel owl-theme">
		<?php 
$ci =& get_instance();

            foreach ($latest_products as $key => $product_row) 
            {
              $thumb_img_nm = preg_replace('/\\.[^.\\s]{3,4}$/', '', $product_row->featured_image);

              $img_file='assets/images/products/'.$product_row->featured_image;
              //$ci->_create_thumbnail('assets/images/products/',$thumb_img_nm,$product_row->featured_image,205,205);

              $img_file2=$ci->_create_thumbnail('assets/images/products/',$product_row->product_id,$product_row->featured_image2,205,205);

              $is_avail=true;

              if($product_row->status==0)
              {
                $is_avail=false;
              }

              ?>
		<div class="item">
		<figure>
		<div class="sec3-img">
		<a href="<?php echo site_url('product/'.$product_row->product_slug); ?>"><img src="<?=base_url().$img_file?>"></a>
		<div class="sec3-crt main-text">
		<a href="#" class="cd-signin tester" data-select="<?=$product_row->product_title?>" data-id="<?=$product_row->featured_image?>" data-type="<?=CURRENCY_CODE.' '.number_format($product_row->product_mrp, 2);?>"><img src="<?=base_url('assets/xfitness/images/cart.svg')?>"></a>
		</div>
		</div>
		<figcaption>
		<a href="<?php echo site_url('product/'.$product_row->product_slug); ?>"><?php 
	/*	if(strlen($product_row->product_title) > 16){
			echo substr(stripslashes($product_row->product_title), 0, 25).'...';  
		  }else{*/
			echo $product_row->product_title;
		  //}
		  ?><br> 
		<span><?php 
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
		?></span></a>
		</figcaption>
		</figure>
		</div>
		<?php } ?>
	</div>
</section>


<section class="sec4">
	<figure><a href="#"><img src="<?=base_url('assets/xfitness/images/vid.jpg')?>"></a></figure>
</section>




<section class="sec3">
   <h3>Brand</h3>
	<div id="owl-demo2" class="owl-carousel owl-theme">
	<?php 
            $i=0;
			$ci =& get_instance();
            foreach ($brands_list as $key => $row) 
            {

              if($row->brand_image!='')
              {

                $thumb_img_nm = preg_replace('/\\.[^.\\s]{3,4}$/', '', $row->brand_image);

                $img_file=base_url().'assets/images/brand/'.$row->brand_image;
                
                //base_url().$ci->_create_thumbnail('assets/images/brand/',$thumb_img_nm,$row->brand_image,117,70);
              }
              else{
                $img_file='https://via.placeholder.com/300x180?text=No image';
              }


              $url=base_url('brand/'.$row->brand_slug);
              ?>
		<div class="item">
		<figure>
		<div class="sec3-img" style="height:270px">
		<a href="<?=site_url('product_brand/'.$row->id)?>"><img src="<?=$img_file?>" style="object-fit:contain;height: 100%"></a>
		</div>
		<figcaption>
		<a href="<?=site_url('product_brand/'.$row->id)?>"><?php 
                        if(strlen($row->brand_name) > 10){
                          echo substr(stripslashes($row->brand_name), 0, 10).'...';  
                        }else{
                          echo $row->brand_name;
                        }
                        ?></a>
		</figcaption>
		</figure>
		</div>
		<?php } ?>
	</div>
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