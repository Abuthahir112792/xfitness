
<?php  $ci =& get_instance();?>

<?php 
  	

    if($this->session->flashdata('response_msg')) {
      $message = $this->session->flashdata('response_msg');
    }
    else{
      $message=''; 
    }
?>

<section class="main-sec">
  <div class="container">
    <div class="col-md-12">
    <h3 style="text-align:center;"><?php echo $message?></h3>
      <div class="main-head">Home Fitness Essentials  
        <div class="breadcrumb">
        	<ul>
        		<li class="breadcrumb-item"><a href="<?=base_url('/')?>">Home</a></li>
    <li class="breadcrumb-item active" aria-current="page"><?php echo $page_title?></li>
        	</ul>
        </div>
      </div>
    </div>
    <div class="col-md-12">
      <div class="row">
        <div class="col-md-4">

          
          <div class="filter filter-desktop">
            <h3>SHOP BY BRAND:</h3>
            <article class="accord accord-single">
            <h4 class="accord__head">BRANDS</h4>
              <div class="accord__body">
                <ul>
                <?php
                foreach ($brands_list as $key => $brand) 
                {?>
                  <li><a href="<?=site_url('product_brand/'.$brand->id)?>"><?php echo $brand->brand_name?></a></li>
                <?php }?>  
                </ul>
              </div>
            </article>
          </div>
          <div class="filter filter-desktop">
            <h3>SHOP BY CATEGORY:</h3>
            <article class="accord accord-single">
            <h4 class="accord__head">CATEGORY</h4>
              <div class="accord__body">
              <ul>
                <?php
                foreach ($category_list as $key => $category) 
                {?>
                  <li><a href="<?=site_url('product_category/'.$category->id)?>"><?php echo $category->category_name?></a></li>
                <?php }?>  
                </ul>
              </div>
            </article>
          </div>
          <div class="filter filter-desktop">
            <h3>SHOP BY SUB CATEGORY</h3>
            <?php
                       
                      
                      foreach ($category_list as $key => $row) 
                      {
                        

                        $counts=$ci->getCount('tbl_sub_category', array('category_id' => $row->id, 'status' => '1'));

                        if($counts > 0)
                        {
                          $url=base_url('category/'.$row->category_slug);  
                        }
                        else{
                          $url=base_url('category/products/'.$row->id);
                        }

                    ?>
            <article class="accord accord-single">
              <h4 class="accord__head"><?php echo $row->category_name; ?></h4>
              <div class="accord__body">
              <?php 
                        if($counts > 0)
                        {
                      ?>
                <ul>
                <?php 
                          $sub_category_list=$ci->get_sub_category($row->id);
                          $i=0;
                          foreach ($sub_category_list as $key1 => $row1) 
                          {

                            $i++;
                        ?>
                          <li>
                            <a href="<?=site_url('product_subcategory/'.$row1->id)?>">
                              <?php 
                                if(strlen($row1->sub_category_name) > 30){
                                  echo substr(stripslashes($i.'.'.$row1->sub_category_name), 0, 30).'...';  
                                }else{
                                  echo $i.'.'.$row1->sub_category_name;
                                }
                              ?>  
                            </a>
                          </li>
                          <?php 
                          }
                          
                        ?>
                         
                </ul>
                <?php } ?>
              </div>
            </article>
            <?php } ?>
          </div>
        </div>
        <div class="col-md-8">
          <div class="srt clearfix">
            <div class="srt-lft">Total Product <?php echo $filter_product_list?> - <?php echo $total_product_list?></div>
            <div class="srt-rgt">
            <form action="<?=site_url('site/fillter_products')?>" method="post" class="fillterform" id="fillterform">
              <!-- <div class="sel sel--black-panther"> -->
                <select name="filter_value" id="fillter_dropdown" class="fillter_dropdown">
                  <option value="" >Sort By</option>
                  <option value="latest_product">Latest Product</option>
                  <option value="discount">Discount</option>
                  <option value="low_to_high">Price--Low to High</option>
                  <option value="high_to_low">Price--High to Low</option>
                </select>
                <input type="text" name="filter_brand" class="filter_brand" id="filter_brand" value="<?php echo $filter_brand_id ?>">
                <input type="text" name="filter_category" class="filter_category" id="filter_category" value="<?php echo $filter_category_id ?>">
                <input type="text" name="filter_subcategory" class="filter_subcategory" id="filter_subcategory" value="<?php echo $filter_subcategory_id ?>">
              <!-- </div>
              <button class="btn btn-success">Filter</button> -->
            </form>
            </div>
            
            
            <div class="flt-xs">
                <span onclick="openNav()"><i class="fa fa-align-right"></i> Filter</span>
              </div>
            <div id="mySidenav" class="sidenav">
                    <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
                    <div class="filter ">
            <h3>SHOP BY :</h3>
            <article class="accord accord-single">
              <h4 class="accord__head">POPULAR SEARCH </h4>
              <div class="accord__body">
                <ul>
                  <li><a href="javascript:void(0)">Hair Care (3461)</a></li>
                  <li><a href="javascript:void(0)">Hair Colouring (1105)</a></li>
                  <li><a href="javascript:void(0)">Electrical (937)</a></li>
                  <li><a href="javascript:void(0)">Brushes & Combs (677)</a></li>
                  <li><a href="javascript:void(0)">Perming & Straightening (263)</a></li>
                </ul>
              </div>
            </article>
            <article class="accord accord-single is-open">
              <h4 class="accord__head">CATEGORIES </h4>
              <div class="accord__body">
                <ul>
                  <li><a href="javascript:void(0)">Hair Care (3461)</a></li>
                  <li><a href="javascript:void(0)">Hair Colouring (1105)</a></li>
                  <li><a href="javascript:void(0)">Electrical (937)</a></li>
                  <li><a href="javascript:void(0)">Brushes & Combs (677)</a></li>
                  <li><a href="javascript:void(0)">Perming & Straightening (263)</a></li>
                  <li><a href="javascript:void(0)">Foil & Meches (36)</a></li>
                  <li><a href="javascript:void(0)">Scissors (262)</a></li>
                  <li><a href="javascript:void(0)">Salon Specifics (228)</a></li>
                  <li><a href="javascript:void(0)">Hair Extensions (27)</a></li>
                  <li><a href="javascript:void(0)">Hair Accessories (579)</a></li>
                </ul>
              </div>
            </article>
            <article class="accord accord-single">
              <h4 class="accord__head">BRANDS</h4>
              <div class="accord__body">
                <ul>
                  <li><a href="javascript:void(0)">Foil & Meches (36)</a></li>
                  <li><a href="javascript:void(0)">Scissors (262)</a></li>
                  <li><a href="javascript:void(0)">Salon Specifics (228)</a></li>
                  <li><a href="javascript:void(0)">Hair Extensions (27)</a></li>
                  <li><a href="javascript:void(0)">Hair Accessories (579)</a></li>
                </ul>
              </div>
            </article>
          </div>
                </div>
            
            
            
          </div>
          <div class="list-sec">
            <ul class="clearfix">
            <?php

                    $ci =& get_instance();
                    foreach ($product_gym_list as $key => $row)
                    {

                      $user_id=$this->session->userdata('user_id') ? $this->session->userdata('user_id'):'0';

                      $thumb_img_nm = preg_replace('/\\.[^.\\s]{3,4}$/', '', $row->featured_image);

                      $img_file='assets/images/products/'.$row->featured_image;
                      
                      //$ci->_create_thumbnail('assets/images/products/',$thumb_img_nm,$row->featured_image,300,300);

                      $img_file2='assets/images/products/'.$row->featured_image2;
                      
                      //$ci->_create_thumbnail('assets/images/products/',$row->product_id,$row->featured_image2,300,300);

                      $is_avail=true;

                      if($row->status==0)
                      {
                        $is_avail=false;
                      }

                  ?>
              <li> 
                <figure><a href="<?php echo site_url('product/'.$row->product_slug); ?>">
                  <div class="pc-img"><img src="<?=base_url().$img_file?>"></div></a>
                  <figcaption class="">
                  
                  <div class="pc-crt main-text"><a href="#" class="cd-signin tester" data-select="<?=$row->product_title?>" data-id="<?=$row->featured_image?>" data-type="<?=CURRENCY_CODE.' '.number_format($row->product_mrp, 2);?>"><img src="<?=base_url('assets/xfitness/images/cart.svg')?>"></a></div>
                    
                    <h5><?php 
                              if($row->you_save_amt!='0'){
                                ?>
                                <span class="new-price"><?=CURRENCY_CODE.' '.number_format($row->selling_price, 2)?></span> 
                                <span class="old-price"><?=CURRENCY_CODE.' '.number_format($row->product_mrp, 2);?></span>
                                
                                <?php
                              }
                              else{
                                ?>
                                <span class="new-price"><?=CURRENCY_CODE.' '.number_format($row->product_mrp, 2);?></span>
                                <?php
                                
                              }
                            ?></h5><h4><?php 
                                if(strlen($row->product_title) > 16){
                                  echo substr(stripslashes($row->product_title), 0, 16).'...';  
                                }else{
                                  echo $row->product_title;
                                }
                              ?></h4>
                      
                      
                    </figcaption>
                </figure>
                 </li>
              
                 <?php } ?>
            </ul>
          </div>
          
          <?php  echo $this->pagination->create_links();   ?> 
          
        </div>
      </div>
    </div>
  </div>
</section>
<script type="text/javascript">

  $(".fillter_dropdown").change(function(e){
    $(".fillterform").submit();
  });

</script>
<script>
 $(".cartForm2").submit(function(event){

event.preventDefault();
$(".process_loader").show();

var formData = $(this).serialize();
var _form=$(this);

$.ajax({
  type: 'POST',
  url: $(this).attr('action'),
  data: formData
})
.done(function(response) {

  var res = $.parseJSON(response);
  $(".process_loader").hide();

  if(res.success=='1'){
    swal({ title: "<?=$this->lang->line('done_lbl')?>", text: res.msg, type: "success" }, function(){ location.reload(); });
  }
  else if(res.success=='0'){
    window.location.href='<?=base_url()?>login-register';
  }

})
.fail(function(response) {
  $(".process_loader").hide();
  swal("<?=$this->lang->line('something_went_wrong_err')?>");
});

});
</script>
<script>
 $(".wishlistForm2").submit(function(event){

event.preventDefault();
$(".process_loader").show();

var formData = $(this).serialize();
var _form=$(this);

$.ajax({
  type: 'POST',
  url: $(this).attr('action'),
  data: formData
})
.done(function(response) {

  var res = $.parseJSON(response);
  $(".process_loader").hide();

  if(res.success=='1'){
    swal({ title: "<?=$this->lang->line('done_lbl')?>", text: res.msg, type: "success" }, function(){ location.reload(); });
  }
  else if(res.success=='0'){
    window.location.href='<?=base_url()?>login-register';
  }

})
.fail(function(response) {
  $(".process_loader").hide();
  swal("<?=$this->lang->line('something_went_wrong_err')?>");
});

});
</script>

<!-- <script>
$("#fillter_dropdown").on("click",function(e){
      e.preventDefault();
alert('sssss');
      $("#fillterForm").submit();
  });
</script> -->
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