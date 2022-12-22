<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Daily Shop | Product</title>

<link href="css/font-awesome.css" rel="stylesheet">
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/jquery.smartmenus.bootstrap.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/jquery.simpleLens.css">
<link rel="stylesheet" type="text/css" href="css/slick.css">
<link rel="stylesheet" type="text/css" href="css/nouislider.css">
<link id="switcher" href="css/theme-color/default-theme.css" rel="stylesheet">
<link href="css/sequence-theme.modern-slide-in.css" rel="stylesheet" media="all">
<link href="css/style.css" rel="stylesheet">
<link href='https://fonts.googleapis.com/css?family=Lato'rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>
<jsp:include page="css/page/header.jsp"></jsp:include>
<jsp:include page="css/page/menu.jsp"></jsp:include>
</head>
<body class="productPage">
	<div id="wpf-loader-two">
		<div class="wpf-loader-two-inner">
			<span>Loading</span>
		</div>
	</div>
	<a class="scrollToTop" href="#"><i class="fa fa-chevron-up"></i></a>


	<section id="aa-product-category">
		<div class="container">
			<div class="row">
				<div class="col-lg-9 col-md-9 col-sm-8 col-md-push-3">
					<div class="aa-product-catg-content">
						<div class="aa-product-catg-head">
							<div class="aa-product-catg-head-left">
								<form action="" class="aa-sort-form">
									<label for="">Sort by</label> <select name="">
										<option value="1" selected="Default">Default</option>
										<option value="2">Name</option>
										<option value="3">Price</option>
										<option value="4">Date</option>
									</select>
								</form>
								<form action="" class="aa-show-form">
									<label for="">Show</label> <select name="">
										<option value="1" selected="9">9</option>																
									</select>
								</form>
							</div>

							<div class="aa-product-catg-head-right">
								<a id="grid-catg" href="#"><span class="fa fa-th"></span></a> 
								<a id="list-catg" href="#"><span class="fa fa-list"></span></a>
							</div>
						</div>
						<div class="aa-product-catg-body">
							<ul class="aa-product-catg"> 
							<c:forEach items="${ListP}" var="product">
								<li>
									<figure> 
										<a class="aa-product-img" href="#"><img src="${product.image}"></a>
										<form action="cart" method="POST">
                            				<input name="id" type="hidden" value="${product.id}">
                            				<button class="aa-add-card-btn" href=""><span class="fa fa-shopping-cart"></span>Thêm vào giỏ hàng</button>
                           				 </form>
										<figcaption>
											<h4 class="aa-product-title">
												<a href="#">${product.name}</a>
											</h4>
											<span class="aa-product-price"> Giá: ${product.price} </span>
										</figcaption>
									</figure>
									<div class="aa-product-hvr-content">
										<a href="#" data-toggle="tooltip" data-placement="top" title="Add to Wishlist">
										<span class="fa fa-heart-o"></span></a>
										<a href="#" data-toggle="tooltip" data-placement="top" title="Compare">
										<span class="fa fa-exchange"></span></a> 
										<a href="detail?pid=${product.id}" >
										<span class="fa fa-search"></span></a>
									</div>
									
								</li>
							</c:forEach>
							</ul>						
						</div>
						

						<div class="aa-product-catg-pagination">
							<nav>
								<ul class="pagination">
									<li><a href="#" aria-label="Previous"> <span aria-hidden="true">&laquo;</span> </a></li>									
									<li><a href="pagingList?index=0">1</a></li>
									<li><a href="pagingList?index=10">2</a></li>
									<li><a href="pagingList?index=20">3</a></li>
									<li><a href="pagingList?index=30">4</a></li>
									<li><a href="pagingList?index=30">5</a></li>																		
									<li><a href="#" aria-label="Next"> <span aria-hidden="true">&raquo;</span>
									</a></li>
								</ul>
							</nav>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-3 col-sm-4 col-md-pull-9">
					<aside class="aa-sidebar">						
						<div class="aa-sidebar-widget">
							<h3>Category</h3>
							<ul class="aa-catg-nav">
							<c:forEach items="${ListCategories}" var="category">
								<li class="active"><a href="category?cid=${category.cid}">${category.cname}</a></li>
						    </c:forEach>
							</ul>
						</div>						
						<div class="aa-sidebar-widget">
							<h3>Tags</h3>
							<div class="tag-cloud">
								<a href="#">Bún Bò Huế</a> <a href="#">Cá</a> 
								<a href="#">Bánh kem trứng bơ</a> 
								<a href="#">Trà sữa </a> <a href="#">Nước giải khát </a> 
								<a href="#">Trà matcha</a>
							</div>
						</div>						
						<div class="aa-sidebar-widget">
							<h3>Shop By Price</h3>						
							<div class="aa-sidebar-price-range">
								<form action="">
									<div id="skipstep" class="noUi-target noUi-ltr noUi-horizontal noUi-background"></div>
									<span id="skip-value-lower" class="example-val">30.00</span> <span id="skip-value-upper" class="example-val">100.00</span>
									<button class="aa-filter-btn" type="submit">Filter</button>
								</form>
							</div>
						</div>
					</aside>
				</div>
			</div>
		</div>
	</section>
	

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