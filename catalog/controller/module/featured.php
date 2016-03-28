<?php
class ControllerModuleFeatured extends Controller {
	public function index($setting) {
		$this->load->language('module/featured');

		$data['heading_title'] = $this->language->get('heading_title');

		$data['text_tax'] = $this->language->get('text_tax');

		$data['button_cart'] = $this->language->get('button_cart');
		$data['button_wishlist'] = $this->language->get('button_wishlist');
		$data['button_compare'] = $this->language->get('button_compare');

		$this->load->model('catalog/product');

		$this->load->model('tool/image');

		$data['products'] = array();

		if (!$setting['limit']) {
			$setting['limit'] = 10;
		}

		
		//print_r($setting['rareitems']);
		
		
		if (!empty($setting['productxx'])) {
			$rateitems = array_slice($setting['productxx'], 0, (int)$setting['limit']);
			foreach ($rateitems as $rateitem) {
				$rateitem_info = $this->model_catalog_product->getProduct($rateitem);

				if ($rateitem_info) {
					if ($rateitem_info['image']) {
						$im = $this->model_tool_image->resize($rateitem_info['image'], $setting['width'], $setting['height']);
					} else {
						$im = $this->model_tool_image->resize('placeholder.png', $setting['width'], $setting['height']);
					}

					if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
						$prc = $this->currency->format($this->tax->calculate($rateitem_info['price'], $rateitem_info['tax_class_id'], $this->config->get('config_tax')));
					} else {
						$prc = false;
					}

					if ((float)$rateitem_info['special']) {
						$spc = $this->currency->format($this->tax->calculate($rateitem_info['special'], $rateitem_info['tax_class_id'], $this->config->get('config_tax')));
					} else {
						$spc = false;
					}

					if ($this->config->get('config_tax')) {
						$taxx = $this->currency->format((float)$rateitem_info['special'] ? $rateitem_info['special'] : $rateitem_info['price']);
					} else {
						$taxx = false;
					}

					if ($this->config->get('config_review_status')) {
						$rt = $rateitem_info['rating'];
					} else {
						$rt = false;
					}

					$data['productxx'][] = array(
						'product_id'  => $rateitem_info['product_id'],
						'thumb'       => $rateitem_info['image'],//'product_images/large/22003-2.jpg',//$image,
						'name'        => $rateitem_info['name'],
						'description' => utf8_substr(strip_tags(html_entity_decode($rateitem_info['description'], ENT_QUOTES, 'UTF-8')), 0, $this->config->get('config_product_description_length')) . '..',
						'price'       => $prc,
						'special'     => $spc,
						'tax'         => $taxx,
						'rating'      => $rt,
						'href'        => $this->url->link('product/product', 'product_id=' . $rateitem_info['product_id'])
					);
				}
			}
		}
		
		
		
		if (!empty($setting['product'])) {
		
		    
			$products = array_slice($setting['product'], 0, (int)$setting['limit']);

			
			foreach ($products as $product_id) {
				$product_info = $this->model_catalog_product->getProduct($product_id);

				if ($product_info) {
					if ($product_info['image']) {
						$image = $this->model_tool_image->resize($product_info['image'], $setting['width'], $setting['height']);
					} else {
						$image = $this->model_tool_image->resize('placeholder.png', $setting['width'], $setting['height']);
					}

					if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
						$price = $this->currency->format($this->tax->calculate($product_info['price'], $product_info['tax_class_id'], $this->config->get('config_tax')));
					} else {
						$price = false;
					}

					if ((float)$product_info['special']) {
						$special = $this->currency->format($this->tax->calculate($product_info['special'], $product_info['tax_class_id'], $this->config->get('config_tax')));
					} else {
						$special = false;
					}

					if ($this->config->get('config_tax')) {
						$tax = $this->currency->format((float)$product_info['special'] ? $product_info['special'] : $product_info['price']);
					} else {
						$tax = false;
					}

					if ($this->config->get('config_review_status')) {
						$rating = $product_info['rating'];
					} else {
						$rating = false;
					}

					$data['products'][] = array(
						'product_id'  => $product_info['product_id'],
						'thumb'       => $product_info['image'],//'product_images/large/22003-2.jpg',//$image,
						'name'        => $product_info['name'],
						'description' => utf8_substr(strip_tags(html_entity_decode($product_info['description'], ENT_QUOTES, 'UTF-8')), 0, $this->config->get('config_product_description_length')) . '..',
						'price'       => $price,
						'special'     => $special,
						'tax'         => $tax,
						'rating'      => $rating,
						'href'        => $this->url->link('product/product', 'product_id=' . $product_info['product_id'])
					);
				}
			}
		}
		
		// here new arrival products 
		// made by khokon
		if(!empty($setting['productx'])) 
		{
			$arrivals = array_slice($setting['productx'], 0, (int)$setting['limit']);
			foreach ($arrivals as $arrival) {
				$pr_info = $this->model_catalog_product->getProduct($arrival);
				if($pr_info) {				
				
					if ($product_info['image']) {
						$img = $this->model_tool_image->resize($product_info['image'], $setting['width'], $setting['height']);
					} else {
						$img = $this->model_tool_image->resize('placeholder.png', $setting['width'], $setting['height']);
					}

					if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
						$prce = $this->currency->format($this->tax->calculate($pr_info['price'], $pr_info['tax_class_id'], $this->config->get('config_tax')));
					} else {
						$prce = false;
					}

					if ((float)$pr_info['special']) {
						$specl = $this->currency->format($this->tax->calculate($pr_info['special'], $pr_info['tax_class_id'], $this->config->get('config_tax')));
					} else {
						$specl = false;
					}

					if ($this->config->get('config_tax')) {
						$tx = $this->currency->format((float)$pr_info['special'] ? $pr_info['special'] : $pr_info['price']);
					} else{
						$tx = false;
					}

					if ($this->config->get('config_review_status')) {
						$rat = $pr_info['rating'];
					} else {
						$rat = false;
					}
				
					$data['productx'][] = array(
						'product_id'  => $pr_info['product_id'],
						'thumb'       => $pr_info['image'],//'product_images/large/22003-2.jpg',//$image,
						'name'        => $pr_info['name'],
						'description' => utf8_substr(strip_tags(html_entity_decode($pr_info['description'], ENT_QUOTES, 'UTF-8')), 0, $this->config->get('config_product_description_length')) . '..',
						'price'       => $prce,
						'special'     => $specl,
						'tax'         => $tx,
						'rating'      => $rat,
						'href'        => $this->url->link('product/product', 'product_id=' . $pr_info['product_id'])
					);
				}
			}
		}
		

		if ($data['products']) {
			if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/featured.tpl')) {
				return $this->load->view($this->config->get('config_template') . '/template/module/featured.tpl', $data);
			} else {
				return $this->load->view('default/template/module/featured.tpl', $data);
			}
		}
	}
}