
<?php  $ci =& get_instance();?>



<section class="main-sec">
  <div class="container">
    <div class="col-md-12">
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
                <input type="hidden" name="filter_brand" class="filter_brand" id="filter_brand" value="<?php echo $filter_brand_id ?>">
                <input type="hidden" name="filter_category" class="filter_category" id="filter_category" value="<?php echo $filter_category_id ?>">
                <input type="hidden" name="filter_subcategory" class="filter_subcategory" id="filter_subcategory" value="<?php echo $filter_subcategory_id ?>">
              <!-- </div>
              <button class="btn btn-success">Filter</button> -->
            </form>
            </div>
            
            
            
			<div class="product-list-grid-view-area mt-20">
  	<div class="container">
    	<div class="row">
    		<center style="margin-bottom: 50px;">
		        <img src="<?=base_url('assets/img/no_data.png')?>">
	            <h2 style="font-size: 18px;font-weight: 500;color: #888;"><?=$this->lang->line('no_data')?></h2>
	            <br/>
		        
		     </center>
    	</div>
 	</div>
</div>
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