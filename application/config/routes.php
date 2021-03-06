<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	http://codeigniter.com/user_guide/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There area two reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router what URI segments to use if those provided
| in the URL cannot be matched to a valid route.
|
*/

$route['admin/top-sale-products/(:any)'] = 'admin/pages/top_sale_products';
$route['admin/top-sale-products'] = 'admin/pages/top_sale_products';

$route['admin/payment-faq/edit/(.+)']="admin/pages/payment_faq_form";
$route['admin/payment-faq/add'] = 'admin/pages/payment_faq_form';

$route['admin/faq/edit/(.+)']="admin/pages/faq_form";
$route['admin/faq/add'] = 'admin/pages/faq_form';

// download invoice

$route['product-invoice/(.+)'] = 'admin/order/download_invoice';

$route['admin/refunds/export']="admin/pages/export_refund";

$route['admin/transactions/export']="admin/pages/export_transaction";

$route['admin/notification']="admin/pages/notification";

$route['admin/refunds']="admin/pages/refunds";

$route['admin/transactions']="admin/pages/transaction";

$route['admin/contacts/edit/(.+)']="admin/contacts/contact_form";
$route['admin/contacts/add'] = 'admin/contacts/contact_form';

$route['admin/deal-of-day/add'] = 'admin/deal/deal_form';
$route['admin/deal-of-day'] = 'admin/deal';

$route['admin/generatepdf'] = "admin/order/generatePDFFile";

$route['admin/orders/print/(.+)'] = 'admin/order/print_order';
$route['admin/orders/(.+)'] = 'admin/order/order_summary';
$route['admin/orders'] = 'admin/order';

$route['admin/offers/edit/(:num)']="admin/offers/offer_form";
$route['admin/offers/add'] = 'admin/offers/offer_form';
$route['admin/offers/(:num)'] = 'admin/offers';
$route['admin/offers'] = 'admin/offers';

$route['admin/users/profile/(.+)'] = 'admin/users/user_profile';
$route['admin/users/edit/(.+)']="admin/users/user_form";
$route['admin/users/add'] = 'admin/users/user_form';
$route['admin/users/(:num)'] = 'admin/users';
$route['admin/users'] = 'admin/users';

$route['admin/coupon/edit/(:num)']="admin/coupon/coupon_form";
$route['admin/coupon/add'] = 'admin/coupon/coupon_form';
$route['admin/coupon/(:num)'] = 'admin/coupon';
$route['admin/coupon'] = 'admin/coupon';

$route['admin/banner/edit/(.+)']="admin/banner/banner_form";
$route['admin/banner/add'] = 'admin/banner/banner_form';
$route['admin/banner/products/(:num)'] = 'admin/banner/banner_products';
$route['admin/banner/(:num)'] = 'admin/banner';
$route['admin/banner'] = 'admin/banner';

$route['admin/products/duplicate-product/(.+)']="admin/product/clone_product";
$route['admin/products/edit/(:num)']="admin/product/product_form";
$route['admin/products/add'] = 'admin/product/product_form';
$route['admin/products/(:any)'] = 'admin/product';

$route['admin/products'] = 'admin/product';

$route['admin/brand/edit/(:num)']="admin/brand/brand_form";
$route['admin/brand/add'] = 'admin/brand/brand_form';
$route['admin/brand/(:num)'] = 'admin/brand';
$route['admin/brand'] = 'admin/brand';

$route['admin/sub-category/edit/(:num)'] = 'admin/SubCategory/sub_category_form';
$route['admin/sub-category/add'] = 'admin/SubCategory/sub_category_form';
$route['admin/sub-category/(:num)'] = 'admin/SubCategory';
$route['admin/sub-category'] = 'admin/SubCategory';

$route["admin/category/edit/(:num)"]="admin/category/category_form";
$route['admin/category/add'] = 'admin/category/category_form';
$route['admin/category/(:num)'] = 'admin/category';
$route['admin/category'] = 'admin/category';

$route['admin/profile'] = 'admin/pages/profile';

$route['admin/backup'] = 'admin/pages/backup';

$route['admin/page_settings'] = 'admin/pages/page_settings';
$route['admin/web-settings'] = 'admin/pages/web_settings';
$route['admin/android-settings'] = 'admin/pages/android_settings';
$route['admin/settings'] = 'admin/pages/settings';
$route['admin/verify-purchase'] = 'admin/pages/verify_purchase_page';
$route['admin/smtp-settings'] = 'admin/pages/smtp_settings';
$route['admin/api-urls'] = 'admin/pages/api_urls';

$route['admin/dashboard'] = 'admin/pages/dashboard';
$route['admin/logout'] = 'auth/logout';
$route['admin/login'] = 'auth/login';
$route['admin'] = 'auth';

$route['app-download-invoice/(.+)'] = 'site/app_download_invoice';

$route['download-invoice/(.+)'] = 'site/download_invoice';
$route['product-reviews/(:any)'] = 'site/product_reviews';
$route['product-reviews/(:any)/(:any)'] = 'site/product_reviews';

$route['cancellation'] = 'site/cancellation';
$route['refund-return-policy'] = 'site/refund_return_policy';
$route['privacy'] = 'site/privacy';
$route['terms-of-use'] = 'site/terms_of_use';
$route['payments'] = 'site/payments';
$route['faq'] = 'site/faq';
$route['about-us'] = 'site/about_us';
$route['contact-us'] = 'site/contact_us';

$route['my-reviews'] = 'site/my_reviews';
$route['saved-bank-accounts'] = 'site/saved_bank_accounts';
$route['my-addresses'] = 'site/my_addresses';
$route['change-password'] = 'site/change_password_page';
$route['my-account'] = 'site/my_account';

$route['search-result'] = 'site/search';

$route['search-result/(:any)'] = 'site/search';

$route['my-orders/(:any)'] = 'site/my_order/$1';

$route['my-orders'] = 'site/my_order';

$route['product/(:any)'] = 'site/single_product/$1';

$route['remove-to-cart/(:num)'] = 'site/remove_cart/$1';

$route['buy-now'] = 'site/buy_now';
$route['checkout'] = 'site/checkout';

$route['my-cart'] = 'site/my_cart';

$route['wishlist'] = 'site/get_wishlist';

$route['redirectGoogle'] = 'google/redirect_url';
$route['googleCallback'] = 'google/callback';

$route['redirectFacebook'] = 'facebook/redirect_url';
$route['facebookCallback'] = 'facebook/callback';

$route['login-register'] = 'site/login_register_form';

$route['category/(:any)'] = 'site/sub_category';
$route['product_brand/(:any)'] = 'site/product_brand/$1/$2';
$route['product_brand/(:any)/(:num)'] = 'site/brand_product/$1/$2';
$route['product_category/(:any)/(:num)'] = 'site/product_category/$1/$2';
$route['product_category/(:any)'] = 'site/product_category/$1/$2';
$route['product_subcategory/(:any)'] = 'site/product_subcategory/$1/$2';

$route['category/(:any)/(:any)/(:num)'] = 'site/cat_sub_product/$1/$2';

$route['category/(:any)/(:any)'] = 'site/cat_sub_product/$1/$2';

$route['category'] = 'site/category';

$route['brand/(:any)/(:num)'] = 'site/brand_product/$1/$2';

$route['brand/(:any)'] = 'site/brand_product/$1/$2';

$route['brand'] = 'site/brand';

$route['offers/(:any)/(:any)'] = 'site/offer_products';
$route['offers/(:any)'] = 'site/offer_products';

$route['offers'] = 'site/offers';

$route['top-rated-products/(:any)'] = 'site/top_rated_products';
$route['top-rated-products'] = 'site/top_rated_products';

$route['latest-products/(:any)'] = 'site/latest_products';
$route['latest-products'] = 'site/latest_products';

$route['recently-viewed-products/(:any)'] = 'site/recently_viewed_products';
$route['recently-viewed-products'] = 'site/recently_viewed_products';

$route['todays-deals/(:any)'] = 'site/todays_deals_list';
$route['todays-deals'] = 'site/todays_deals_list';

$route['banners/(:any)/(:any)'] = 'site/banner_products';
$route['banners/(:any)'] = 'site/banner_products';

$route['banners'] = 'site/banners';

$route['install'] = 'site/page_not_found';
$route['product'] = 'site/product';
$route['about'] = 'site/about';
$route['services'] = 'site/services';
$route['default_controller'] = 'site';
$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;


/* End of file routes.php */
/* Location: ./application/config/routes.php */