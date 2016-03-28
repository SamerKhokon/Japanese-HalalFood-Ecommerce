<!DOCTYPE html> 
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>

<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>

   <script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js"></script>
 
   <!-- Fonts START -->
  <link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700|PT+Sans+Narrow|Source+Sans+Pro:200,300,400,600,700,900&amp;subset=all" rel="stylesheet" type="text/css">
  <link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900&amp;subset=all" rel="stylesheet" type="text/css"><!--- fonts for slider on the index page -->  
  <!-- Fonts END -->
   
  <!-- Global styles START -->          
  <link href="catalog/view/assets/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="catalog/view/assets/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="catalog/view/javascript/bootstrap/js/bootstrap.min.js" rel="stylesheet">
   <!-- Global styles END --> 
    
   <script src="catalog/view/javascript/datetimepicker/moment.js"></script>   	
	
  <!-- Page level plugin styles START -->
  <link href="catalog/view/assets/global/plugins/fancybox/source/jquery.fancybox.css" rel="stylesheet">
  <link href="catalog/view/assets/global/plugins/carousel-owl-carousel/owl-carousel/owl.carousel.css" rel="stylesheet">
  <link href="catalog/view/assets/global/plugins/slider-layer-slider/css/layerslider.css" rel="stylesheet">
  <!-- Page level plugin styles END -->
   
  <script src="catalog/view/javascript/datetimepicker/bootstrap-datetimepicker.min.js"></script> 

  <!-- Theme styles START -->
  <link href="catalog/view/assets/global/css/components.css" rel="stylesheet">
  <link href="catalog/view/assets/global/css/animate.css" rel="stylesheet">
  <link href="catalog/view/assets/frontend/layout/css/stylefe33.css??v1.0.1" rel="stylesheet">
  <link href="catalog/view/assets/frontend/pages/css/style-shop.css" rel="stylesheet" type="text/css">
  <link href="catalog/view/assets/frontend/pages/css/style-layer-slider.css" rel="stylesheet">
  <link href="catalog/view/assets/frontend/layout/css/style-responsivef619.css?v1.0.1" rel="stylesheet">
  <link href="catalog/view/assets/frontend/layout/css/themes/red.css" rel="stylesheet" id="style-color">
  <link href="catalog/view/assets/frontend/layout/css/custom.css" rel="stylesheet">
  <!-- Theme styles END -->   

</head>
<body class="ecommerce">
 
	<!-- BEGIN TOP BAR -->
    <div class="pre-header">
        <div class="container">
            <div class="row">
                <!-- BEGIN TOP BAR LEFT PART -->
                <div class="col-md-6 col-sm-6 additional-shop-info">
                    <ul class="list-unstyled list-inline">
                                              
                        <!-- BEGIN LANGS -->
                        <li class="langs-block">
                            <a href="#" id="ctl00_jplink">日本語</a>
                            <div class="langs-block-others-wrapper">
                                <div class="langs-block-others">
                                    <a href="#" class="current">English </a>
                                </div>
                            </div>
                        </li>
                        <!-- END LANGS -->
                    </ul>
                    
                </div>
                <!-- END TOP BAR LEFT PART -->
                <!-- BEGIN TOP BAR MENU -->
                <div class="col-md-6 col-sm-6 additional-nav">
                    <ul class="list-unstyled list-inline pull-right">
						<li><a href="<?php echo $contact; ?>"><i class="fa fa-phone"></i></a><span class="hidden-xs hidden-sm hidden-md"><?php echo $telephone; ?></span></li>						
                        <li class="dropdown"><a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_account; ?></span> <span class="caret"></span></a>
							<ul class="dropdown-menu dropdown-menu-right">
								<?php if (!$logged) { ?>
									<li><a href="<?php echo $register; ?>"><?php echo $text_register; ?></a></li>
									<li><a href="<?php echo $login; ?>"><?php echo $text_login; ?></a></li>
								<?php } else { ?>
																	<li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
									<li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
									<li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
									<li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
									<li><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>

								<?php } ?>
							</ul>
						</li>
						<li><a href="<?php echo $shopping_cart; ?>" title="<?php echo $text_shopping_cart; ?>"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_shopping_cart; ?></span></a></li>
						<li><a href="<?php echo $checkout; ?>" title="<?php echo $text_checkout; ?>"><i class="fa fa-share"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_checkout; ?></span></a></li>		
                    </ul>
                </div>
                <!-- END TOP BAR MENU -->
            </div>
        </div>        
    </div>
    <!-- END TOP BAR -->
 

 
 
  <!-- BEGIN HEADER -->
    <div class="header">
      <div class="container">
        <a class="site-logo" href="http://localhost/e-halalfood/">
            <img src="image/catalog/logo.png" width="150px" style="margin-top: -5px;" alt="Ambikajapan.com">
            <img src="image/catalog/vegetarian_label.png" width="20px" alt="100% Vegetarian Shop" style="margin-left: -15px;">
            <br>
            <div style="font-size: 15px;margin-top: -10px;color:#1e7e20">100% Vegetarian items</div>
        </a>

        <a href="javascript:void(0);" class="mobi-toggler"><i class="fa fa-bars"></i></a>

        <!-- BEGIN CART -->
		
		
        <div class="top-cart-block"> 
		<?php echo $cart; ?>	
		<!--      
			<div class="top-cart-info">
			<a href="javascript:void(0);" class="top-cart-info-count">
			<span id="ctl00_CPShoppingCart_spnqtyShopping" name="spnqtyShopping">
				0
			</span> items
			</a> 
			</div>
          <i class="fa fa-shopping-cart"></i>
          <div class="top-cart-content-wrapper">
            <div class="top-cart-content">
                <div id="ulshopping">
               
                <li class="alert alert-danger">&nbsp;&nbsp;Shopping Cart is Empty.</li>
                
                </div>
              <div class="text-right">
                <a href="login33d7.html" class="btn btn-default">View Cart</a>
                
              </div>
            </div>
          </div>    -->                  
        </div>
        <!--END CART -->

        <!-- BEGIN NAVIGATION -->
        <div class="header-navigation">
          <ul>
            <li class="dropdown active">
              <a class="dropdown-toggle" href="http://localhost/e-halalfood/">
                Home 
                
              </a>
                
              
            </li>
            <li class="dropdown dropdown-megamenu">
              <a class="dropdown-toggle" data-toggle="dropdown" data-target="#" href="#">
                Product Category
                
              </a>
              <ul class="dropdown-menu">
                <li>
                  <div class="header-navigation-content">
                    <div class="row">
						
							<div class="col-md-4 header-navigation-col">
							<ul>
							<?php $i=0; foreach($categories as $category) {?>
								<li><a href="<?php echo $category['href'];?>" style="text-transform: uppercase;"><?php echo $category['name'];?></a></li>								
							<?php $i++; } ?>
							</ul>
						</div>	
					
						<!--
                        <div class="col-md-4 header-navigation-col">
							<ul>
								<li><a href="productslistb946.html?cat=5">LOOSE SPICES</a></li>
								<li><a href="productslistb0b7.html?cat=6">READY MIX SPICES</a></li>
								<li><a href="productslistc728.html?cat=7">MOUTH FRESHENERS</a></li>
								<li><a href="productslistd65e.html?cat=8">HERBS</a></li>
								<li><a href="productslist0b40.html?cat=9">DRY FRUITS </a></li>
								<li><a href="productslistc055.html?cat=17">PAPAD</a></li>
								<li><a href="productslist5c96.html?cat=28">PACKED SPICES</a></li>
								<li><a href="productslistaeb3.html?cat=29">WINE</a></li>
								<li><a href="productslistb97c.html?cat=30">BEER</a></li>
							</ul>
						</div>
						<div class="col-md-4 header-navigation-col">
							<ul>
								<li><a href="productslist1cd2.html?cat=10">ONIONS</a></li>
								<li><a href="productslist6c5d.html?cat=18">PICKLES</a></li>
								<li><a href="productslist0fbe.html?cat=21">TOMATO PRODUCT</a></li>
								<li><a href="productslist54cb.html?cat=23">SWEETS</a></li>
								<li><a href="productslist2d79.html?cat=26">GITS INSTANT POWDER </a></li>
								<li><a href="productslistb60a.html?cat=27">FROZEN ITEMS</a></li>
								<li><a href="productslistb0b4.html?cat=48">Indian Curry(Ready To Eat)</a></li>
								</ul>
								<ul>
								<li><a href="productslist8e7f.html?cat=19">PULP & JUICES</a></li>
								<li><a href="productslistfa64.html?cat=24">BAKERY PRODUCTS</a></li>
								<li><a href="productslist5140.html?cat=25">NAMKIN</a></li>
							</ul>
						</div>
						<div class="col-md-4 header-navigation-col">
							<ul>
								<li><a href="productslist29c7.html?cat=11">BEANS</a></li>
								<li><a href="productslist5b0d.html?cat=12">COCONUT PRODUCTS</a></li>
								<li><a href="productslist376e.html?cat=13">GENERAL ITEMS</a></li>
								<li><a href="productslist49ce.html?cat=14">RICE PRODUCTS</a></li>
								<li><a href="productslistb5e7.html?cat=15">TEA</a></li>
								<li><a href="productslist3f99.html?cat=16">GHEE/OIL</a></li>
								<li><a href="productslist4821.html?cat=20">FOOD COLOR</a></li>
								<li><a href="productslist9035.html?cat=22">INCENSE</a></li>
							</ul>
						</div>
						-->	
					
                    </div>
                  </div>
                </li>
              </ul>
            </li>
            
            <li class="dropdown">
              <a class="dropdown-toggle" data-toggle="dropdown" data-target="#" href="#">
                Company 
                
              </a>
                
              <ul class="dropdown-menu">
                <li><a href="about.html">About Us</a></li>
                <li><a href="ambikashop.html">Ambika Shop</a></li>
                <li><a href="index-2.html">Testimonials</a></li>
                
                   
              </ul>
            </li>
            <li><a href="faq.html">FAQ</a></li>
            <li><a href="terms.html">Terms</a></li>
           <li><a href="contactus.html">Contact</a></li>        

            <!-- BEGIN TOP SEARCH -->
            <li class="menu-search">
              <span class="sep"></span>
              <i class="fa fa-search search-btn"></i>
              <div class="search-box">
                
                  <div class="input-group">
                    <input type="text" placeholder="Product Search" id="txtsearch" onkeypress="firesearchproduct(event);" class="form-control">
                    <span class="input-group-btn">
                      <button class="btn btn-primary" onclick="searchProduct();return false;" type="button" style="padding: 7px 14px;">Search</button>
                    </span>
                      <script>
                          function firesearchproduct(e) {
                              
                              var keynum; if (window.event) { keynum = e.keyCode; } else if (e.which) { keynum = e.which; }
                              //alert(keynum);
                              if (keynum == 13) {
                                  searchProduct();
                                  e.preventDefault();
                                  
                              }
                          }
                          function searchProduct() {
                              return false;
                              var txt = $("#txtsearch").val();
                              window.open('productsearch.aspx?search=' + txt);
                              
                          }

                      </script>
                  </div>
                
              </div> 
            </li>
            <!-- END TOP SEARCH -->
          </ul>
        </div>
        <!-- END NAVIGATION -->
      </div>
    </div>
    <!-- Header END -->

 
 
 