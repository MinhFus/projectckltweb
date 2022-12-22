<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Foody Web | Home</title>

<link href="css/font-awesome.css" rel="stylesheet">
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/jquery.smartmenus.bootstrap.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/jquery.simpleLens.css">
<link rel="stylesheet" type="text/css" href="css/slick.css">
<link rel="stylesheet" type="text/css" href="css/nouislider.css">
<link id="switcher" href="css/theme-color/default-theme.css" rel="stylesheet">
<link href="css/sequence-theme.modern-slide-in.css" rel="stylesheet" media="all">
<link href="css/style.css" rel="stylesheet">
<link href='https://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>
</head>

<body>
	<div id="wpf-loader-two">
		<div class="wpf-loader-two-inner">
			<span>Loading</span>
		</div>
	</div>
	<a class="scrollToTop" href="#"><i class="fa fa-chevron-up"></i></a>
	<jsp:include page="css/page/header.jsp"></jsp:include>
	<jsp:include page="css/page/menu.jsp"></jsp:include>
	<jsp:include page="css/page/slider.jsp"></jsp:include>
	<jsp:include page="css/page/promo.jsp"></jsp:include>


	<section id="aa-product">
	  <div class="container">
	    <div class="row">
		  <div class="col-md-12">
		    <div class="row">
			  <div class="aa-product-area">
				<div class="aa-product-inner">
					<ul class="nav nav-tabs aa-products-tab">
					  <li class="active"><a href="" data-toggle="tab">All</a></li>
					  <li><a href="" data-toggle="tab">Food</a></li>
					  <li><a href="" data-toggle="tab">Drink</a></li>
					  <li><a href="" data-toggle="tab">Cake</a></li></ul>							
						<div class="tab-content">
						  <div class="tab-pane fade in active" id="men">
							<ul class="aa-product-catg">
							  <c:forEach items="${ListProduct}" var="product">
								<li>
								  <figure>
									 <a class="aa-product-img" href="cart"><img src="${product.image}" alt="polo shirt img"></a>
										<form action="cart" method="POST">
                            				<input name="id" type="hidden" value="${product.id}">
                            				<button class="aa-add-card-btn"href="#">
                            				<span class="fa fa-shopping-cart"></span>Thêm vào giỏ hàng</button></form>
											<figcaption>
											  <h4 class="aa-product-title"><a href="#">${product.name}</a></h4>										    															
											<span class="aa-product-price">${product.price}</span>
											</figcaption>			
											</figure>		
												<div class="aa-product-hvr-content">
													<a href="#" data-toggle="tooltip" data-placement="top" title="Add to Wishlist"><span class="fa fa-heart-o"></span></a>
													<a href="#" data-toggle="tooltip" data-placement="top"title="Compare"><span class="fa fa-exchange"></span></a>
													<a href="detail?pid=${product.id}" data-toggle2="tooltip" data-placement="top" title="Quick View" data-toggle="modal"data-target=""><span class="fa fa-search"></span></a>
												</div>
								</li>
							  </c:forEach>
							</ul>
						 </div>
					   </div>
	     	     </div>
			   </div>
	      	 </div>
 	       </div>
         </div>
      </div>
	</section>
	
	<jsp:include page="css/page/suport.jsp"></jsp:include>
	<jsp:include page="css/page/footer.jsp"></jsp:include>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="js/bootstrap.js"></script>
	<script type="text/javascript" src="js/jquery.smartmenus.js"></script>
	<script type="text/javascript" src="js/jquery.smartmenus.bootstrap.js"></script>
	<script src="js/sequence.js"></script>
	<script src="js/sequence-theme.modern-slide-in.js"></script>
	<script type="text/javascript" src="js/jquery.simpleGallery.js"></script>
	<script type="text/javascript" src="js/jquery.simpleLens.js"></script>
	<script type="text/javascript" src="js/slick.js"></script>
	<script type="text/javascript" src="js/nouislider.js"></script>
	<script src="js/custom.js"></script>
</body>
</html>