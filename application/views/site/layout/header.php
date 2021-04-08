<?php 
    define('APP_NAME', $this->db->get_where('tbl_web_settings', array('id' => '1'))->row()->site_name);
    define('APP_FAVICON', $this->db->get_where('tbl_web_settings', array('id' => '1'))->row()->web_favicon);
    define('APP_LOGO', $this->db->get_where('tbl_web_settings', array('id' => '1'))->row()->web_logo_1);
    define('APP_LOGO_2', $this->db->get_where('tbl_web_settings', array('id' => '1'))->row()->web_logo_1);
    
    $sharing_img=base_url('assets/images/facebook_share_banner.png');
    $sharing_wp_img=base_url('assets/images/wp_share_banner.png');

    $ci =& get_instance();

    $array_items = array('single_pre_url');

    $this->session->unset_userdata($array_items);
?>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="author" content="">
    <title> <?php if(isset($current_page)){ echo $current_page.' | ';} ?><?php echo APP_NAME;?></title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/png" href="<?=base_url('assets/images/').APP_FAVICON?>"/>

    <meta name="description" content="<?=$this->db->get_where('tbl_web_settings', array('id' => '1'))->row()->site_description?>">
    <meta name="keywords" content="<?=$this->db->get_where('tbl_web_settings', array('id' => '1'))->row()->site_keywords?>">

    <meta property="og:type" content="article" />
    <meta property="og:title" content="<?php if(isset($current_page)){ echo $current_page.' | ';} ?><?php echo APP_NAME;?>" />
    <meta property="og:description" content="<?=$this->db->get_where('tbl_web_settings', array('id' => '1'))->row()->site_description?>" />
    <meta property="og:image" itemprop="image" content="<?=$sharing_wp_img?>" />
    <meta property="og:url" content="<?=current_url()?>" />
    <meta property="og:image:width" content="1024" />
    <meta property="og:image:height" content="1024" />
    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:image" content="<?=$sharing_img?>">
    <link rel="image_src" href="<?=$sharing_wp_img?>">

    <meta name="theme-color" content="#ff5252">
    

<link rel="stylesheet" type="text/css" href="<?=base_url('assets/site_assets/css/style.min.css')?>">
<link rel="stylesheet" type="text/css" href="<?=base_url('assets/site_assets/css/cust_style.css')?>">
<link rel="stylesheet" type="text/css" href="<?=base_url('assets/site_assets/css/default.min.css')?>">

    <link href="https://fonts.googleapis.com/css?family=Niconne|Open+Sans:300,400,600,700" rel="stylesheet">
    <link rel="stylesheet" href="<?=base_url('assets/xfitness/css/bootstrap.min.css');?>">
    <link rel="stylesheet" href="<?=base_url('assets/xfitness/css/webslidemenu.css')?>">
    <link rel="stylesheet" href="<?=base_url('assets/xfitness/css/font-awesome.css')?>">
    <link rel="stylesheet" href="<?=base_url('assets/xfitness/css/stylesheet.css')?>">
    <link rel="stylesheet" type="text/css" href="<?=base_url('assets/sweetalert/sweetalert.css')?>">
    <script src="<?=base_url('assets/site_assets/js/jquery.min.js')?>"></script>
    <script src="<?=base_url('assets/xfitness/js/jquery-2.1.0.min.js')?>"></script>
    <script src="<?=base_url('assets/xfitness/js/bootstrap.min.js')?>"></script>
    <script src="<?=base_url('assets/xfitness/js/modernizr.js')?>"></script>
    <script src="<?=base_url('assets/site_assets/js/vendor/jquery-3.4.1.min.js')?>"></script>
    <script src="<?=base_url('assets/site_assets/js/notify.min.js')?>"></script>

    <?php 
      echo put_headers();
      echo put_cdn_headers();
    ?>

    <?php 
      if($this->db->get_where('tbl_web_settings', array('id' => '1'))->row()->libraries_load_from=='local'){
    ?>
    <link href="https://fonts.googleapis.com/css?family=Niconne|Open+Sans:300,400,600,700" rel="stylesheet">
    <link rel="stylesheet" href="<?=base_url('assets/xfitness/css/bootstrap.min.css');?>">
    <link rel="stylesheet" href="<?=base_url('assets/xfitness/css/webslidemenu.css')?>">
    <link rel="stylesheet" href="<?=base_url('assets/xfitness/css/font-awesome.css')?>">
    <link rel="stylesheet" href="<?=base_url('assets/xfitness/css/stylesheet.css')?>">

    <script src="<?=base_url('assets/xfitness/js/jquery-2.1.0.min.js')?>"></script>
    <script src="<?=base_url('assets/xfitness/js/bootstrap.min.js')?>"></script>
    <script src="<?=base_url('assets/xfitness/js/modernizr.js')?>"></script>

    <?php }else if($this->db->get_where('tbl_web_settings', array('id' => '1'))->row()->libraries_load_from=='cdn'){ ?>
      <!-- Include CDN Files -->
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/3.0.3/normalize.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/assets/owl.carousel.min.css">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <!-- End CDN Files -->

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <?php 
      }
    ?>


    
    

    <?=html_entity_decode($this->db->get_where('tbl_web_settings', array('id' => '1'))->row()->header_code)?>


    <script type="text/javascript">
      var Settings = {
        base_url: '<?= base_url() ?>',
        currency_code: '<?= CURRENCY_CODE ?>',
        hour: '<?=$this->lang->line('hour_lbl')?>',
        minute: '<?=$this->lang->line('minute_lbl')?>',
        second: '<?=$this->lang->line('second_lbl')?>',
        confirm_msg: '<?=$this->lang->line('are_you_sure_msg')?>',
        ord_cancel_confirm: '<?=$this->lang->line('ord_cancel_confirm_lbl')?>',
        product_cancel_confirm: '<?=$this->lang->line('product_cancel_confirm_lbl')?>',
        err_cart_item_buy: '<?=$this->lang->line('err_cart_item_buy_lbl')?>',
        err_shipping_address: '<?=$this->lang->line('no_shipping_address_err')?>',
        err_something_went_wrong: '<?=$this->lang->line('something_went_wrong_err')?>',
      }
    </script>

    <style>
    .old-price{
      text-decoration: line-through;
      font-size: 18px !important;
    }
    a:focus, a:hover{
      text-decoration: none !important;
    }
    </style>

  </head>

<body>
<div class="wsmenucontainer clearfix">
  <div id="overlapblackbg"></div>
  <div class="wsmobileheader clearfix"> <a id="wsnavtoggle" class="animated-arrow"><span></span></a> <a href="index.html" class="smallogo"><img src="images/logo.png" width="87" alt="" /></a> </div>
  <div class="header">
    <div class="crt main-nav">
     <?php /* <ul>
        <li><a href="<?=base_url('/my-cart')?>"><img src="<?=base_url('assets/xfitness/images/cart.svg')?>"><span><?=count($ci->get_cart())?></span></a></li>
        <li><a href="<?=base_url('/login-register')?>"><img src="<?=base_url('assets/xfitness/images/user.svg')?>"></a></li>
      </ul>*/ ?>
    </div>
    <!--Main Menu HTML Code-->
    <div class="wsmain">
      <div class="smllogo"><a href="<?=base_url('/')?>"><img src="<?=base_url('assets/images/').APP_LOGO?>" alt=""/></a></div>
      <nav class="wsmenu clearfix">
        <ul class="mobile-sub wsmenu-list">
          <li><a href="<?=base_url('/')?>">HOME</a></li>
          <li><a href="<?=base_url('/about-us')?>">ABOUT US </a></li>
          <li><a href="<?=base_url('/services')?>">SERVICES</a></li>
          <li><a href="<?=base_url('/product')?>">GYM EQUIPMENTS</a></li>
          <li><a href="<?=base_url('/contact-us')?>">CONTACT</a></li>
        </ul>
      </nav>
    </div>
    <!--Menu HTML Code--> 
    
  </div>
</div>