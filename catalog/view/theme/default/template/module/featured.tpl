
    <div class="main">
		<div class="container">
        <!-- BEGIN SALE PRODUCT & NEW ARRIVALS -->
        <div class="row margin-bottom-10">

           
          

            
		  <!-- BEGIN SALE PRODUCT -->
          <div class="col-md-12 sale-product">
            <h2>Featured items</h2>
            <div class="owl-carousel owl-carousel5">
			   
			   <?php //print count($products);
					 //print_r($products);
					 //¥345
					foreach ($products as $product) {  
			   ?>
			    
				<div>
					<div class="product-item">
						<div class="pi-img-wrapper">
							<a href="<?php echo $product['href']; ?>">							
								<img src="<?php echo $product['thumb']; ?>" class="img-responsive" alt="<?php echo $product['name']; ?>">
							</a> 		
						</div> 
						<h3><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h3>
						<div class="pi-price"> <?php echo $product['price']; ?></div> 
						<a href="javascript:void(0);" onclick="cart.add('<?php echo $product['product_id']; ?>');" class="btn btn-default add2cart">Add to cart</a>
					</div> 
					<div id="divitemN3652"></div>
					<div class="sticker sticker-new"></div>
				</div> 
				<?php } ?>
			  
			  
			  
            </div>			 
          </div>
          <!-- END SALE PRODUCT -->







		<?php //print_r($arrivals); ?>









    <!-- BEGIN fast view of a product -->
    
    <!-- END fast view of a product -->



            
        </div>
        <!-- END SALE PRODUCT & NEW ARRIVALS -->

		
		
        <!-- BEGIN SIDEBAR & CONTENT -->
        <div class="row margin-bottom-40 ">
          
        <!-- BEGIN CONTENT -->
        <div class="col-md-9 col-sm-8">
            
              

		<h2>New Arrivals</h2>
		<div class="owl-carousel owl-carousel3 margin-bottom-25">
		
		
			<?php foreach($productx as $a){ ?>
				<div>
				  <div class="product-item">
				  <div class="pi-img-wrapper">
				  <a href="<?php echo $a['href'];?>">
				  <img src="<?php echo $a['thumb'];?>" class="img-responsive" alt="<?php echo $a['name'];?>"></a> 
				  </div> 
				  <h3><a href="<?php echo $a['href'];?>"><?php echo $a['name'];?></a></h3>
				  <div class="pi-price"><?php echo $a['price'];?></div> 
				  <a href="javascript:void(0);" onclick="cart.add('<?php echo $a['product_id']; ?>');" class="btn btn-default add2cart">Add to cart</a>
				  </div> 
				  <div id="divitemN3652"></div>
				  <div class="sticker sticker-new"></div>
				</div>			
			<?php } ?>
				
		</div>		
				
				
			

			 
			 
			<h2>Rare items</h2>
			<div class="owl-carousel owl-carousel3">
		
		
			<?php //print_r($rareitems); 
			 foreach($productxx as $rare) {
			?>
		
			<div>
				<div class="product-item">
					<div class="pi-img-wrapper">
					<a href="<?php echo $rare['href'];?>"><img src="<?php echo $rare['thumb'];?>" class="img-responsive" alt="<?php echo $rare['name'];?>"></a>
					</div> 
					<h3><a href="<?php echo $rare['href'];?>"><?php echo $rare['name'];?></a></h3> 
					<div class="pi-price" ><?php echo $rare['price'];?></div> 
					<a href="javascript:void(0);" onclick="cart.add('<?php echo $rare['product_id']; ?>');" class="btn btn-default add2cart">Add to cart</a> 
				</div>
				<div id="divitemR2515"></div> 
			</div>
			
			<?php } ?>
			
			
			
			</div>
  
            
          </div>
          <!-- END CONTENT -->
            <!-- BEGIN SIDEBAR -->
          <div class="sidebar col-md-3 col-sm-4">
              
              <ul class="list-group margin-bottom-25 sidebar-menu"> 
				<li class="list-group-item clearfix">
				<a href="#"><i class="fa fa-angle-right"></i> LOOSE SPICES</a></li><li class="list-group-item clearfix"><a href="productslistb0b7.html?cat=6"><i class="fa fa-angle-right"></i> READY MIX SPICES</a></li><li class="list-group-item clearfix"><a href="productslistc728.html?cat=7"><i class="fa fa-angle-right"></i> MOUTH FRESHENERS</a></li><li class="list-group-item clearfix"><a href="productslistd65e.html?cat=8"><i class="fa fa-angle-right"></i> HERBS</a></li><li class="list-group-item clearfix"><a href="productslist0b40.html?cat=9"><i class="fa fa-angle-right"></i> DRY FRUITS </a></li><li class="list-group-item clearfix"><a href="productslistc055.html?cat=17"><i class="fa fa-angle-right"></i> PAPAD</a></li><li class="list-group-item clearfix"><a href="productslist5c96.html?cat=28"><i class="fa fa-angle-right"></i> PACKED SPICES</a></li><li class="list-group-item clearfix"><a href="productslistaeb3.html?cat=29"><i class="fa fa-angle-right"></i> WINE</a></li><li class="list-group-item clearfix"><a href="productslistb97c.html?cat=30"><i class="fa fa-angle-right"></i> BEER</a></li><li class="list-group-item clearfix"><a href="productslist1cd2.html?cat=10"><i class="fa fa-angle-right"></i> ONIONS</a></li><li class="list-group-item clearfix"><a href="productslist6c5d.html?cat=18"><i class="fa fa-angle-right"></i> PICKLES</a></li><li class="list-group-item clearfix"><a href="productslist0fbe.html?cat=21"><i class="fa fa-angle-right"></i> TOMATO PRODUCT</a></li><li class="list-group-item clearfix"><a href="productslist54cb.html?cat=23"><i class="fa fa-angle-right"></i> SWEETS</a></li><li class="list-group-item clearfix"><a href="productslist2d79.html?cat=26"><i class="fa fa-angle-right"></i> GITS INSTANT POWDER </a></li><li class="list-group-item clearfix"><a href="productslistb60a.html?cat=27"><i class="fa fa-angle-right"></i> FROZEN ITEMS</a></li><li class="list-group-item clearfix"><a href="productslistb0b4.html?cat=48"><i class="fa fa-angle-right"></i> Indian Curry(Ready To Eat)</a></li><li class="list-group-item clearfix"><a href="productslist8e7f.html?cat=19"><i class="fa fa-angle-right"></i> PULP & JUICES</a></li><li class="list-group-item clearfix"><a href="productslistfa64.html?cat=24"><i class="fa fa-angle-right"></i> BAKERY PRODUCTS</a></li><li class="list-group-item clearfix"><a href="productslist5140.html?cat=25"><i class="fa fa-angle-right"></i> NAMKIN</a></li><li class="list-group-item clearfix"><a href="productslist29c7.html?cat=11"><i class="fa fa-angle-right"></i> BEANS</a></li><li class="list-group-item clearfix"><a href="productslist5b0d.html?cat=12"><i class="fa fa-angle-right"></i> COCONUT PRODUCTS</a></li><li class="list-group-item clearfix"><a href="productslist376e.html?cat=13"><i class="fa fa-angle-right"></i> GENERAL ITEMS</a></li><li class="list-group-item clearfix"><a href="productslist49ce.html?cat=14"><i class="fa fa-angle-right"></i> RICE PRODUCTS</a></li><li class="list-group-item clearfix"><a href="productslistb5e7.html?cat=15"><i class="fa fa-angle-right"></i> TEA</a></li><li class="list-group-item clearfix"><a href="productslist3f99.html?cat=16"><i class="fa fa-angle-right"></i> GHEE/OIL</a></li><li class="list-group-item clearfix"><a href="productslist4821.html?cat=20"><i class="fa fa-angle-right"></i> FOOD COLOR</a></li><li class="list-group-item clearfix"><a href="productslist9035.html?cat=22">
				<i class="fa fa-angle-right"></i> INCENSE</a></li>
			  </ul>
            
          </div>
          <!-- END SIDEBAR -->
        </div>
        <!-- END SIDEBAR & CONTENT -->

        <!-- BEGIN TWO PRODUCTS & PROMO -->
        <div class="row margin-bottom-35 ">
          <!-- BEGIN TWO PRODUCTS -->
			<div class="col-md-6 two-items-bottom-items">            
			</div>
          <!-- END TWO PRODUCTS -->
			<!-- BEGIN PROMO -->
			<div class="col-md-6 shop-index-carousel"></div>
			<!-- END PROMO -->
        </div>        
        <!-- END TWO PRODUCTS & PROMO -->
      </div>
    </div>
