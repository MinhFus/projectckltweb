<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Daily Shop | Product Detail</title>

<link href="css/font-awesome.css" rel="stylesheet">
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/jquery.smartmenus.bootstrap.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/jquery.simpleLens.css">
<link rel="stylesheet" type="text/css" href="css/slick.css">
<link rel="stylesheet" type="text/css" href="css/nouislider.css">
<link id="switcher" href="css/theme-color/default-theme.css"
	rel="stylesheet">
<link href="css/sequence-theme.modern-slide-in.css" rel="stylesheet"
	media="all">
<link href="css/style.css" rel="stylesheet">
<link href='https://fonts.googleapis.com/css?family=Lato'
	rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Raleway'
	rel='stylesheet' type='text/css'>
<jsp:include page="css/page/header.jsp"></jsp:include>
<jsp:include page="css/page/menu.jsp"></jsp:include>
</head>
<body>
	<div id="wpf-loader-two">
		<div class="wpf-loader-two-inner">
			<span>Loading</span>
		</div>
	</div>
	<a class="scrollToTop" href="#"><i class="fa fa-chevron-up"></i></a>

	<section id="aa-product-details">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="aa-product-details-area">
						<div class="aa-product-details-content">
							<div class="row">



								<div class="col-md-5 col-sm-5 col-xs-12">
									<div class="aa-product-view-slider">
										<div id="demo-1" class="simpleLens-gallery-container">
											<div class="simpleLens-container">
												<div class="simpleLens-big-image-container">
													<a> <img src="${detail.image}"
														class="simpleLens-big-image"></a>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-md-7 col-sm-7 col-xs-12">
									<div class="aa-product-view-content">
										<h2>${detail.name}</h2>
										<h3>Giờ bán: ${detail.time}</h3>
										<p>Địa Chỉ: ${detail.address}.</p>
										<div class="aa-price-block">
											<span class="aa-product-view-price">Giá:
												${detail.price}</span>
										</div>
										<h4>Số lượng:</h4>
										<div class="aa-prod-quantity">
											<form action="">
												<select id="" name="">
													<option selected="1" value="0">1</option>
													<option value="1">2</option>
													<option value="2">3</option>
													<option value="3">4</option>
													<option value="4">5</option>
													<option value="5">6</option>
												</select>
											</form>
											<p class="aa-prod-category">
												Loại Món Ăn: <a href="#"></a>
											</p>
										</div>
										<div class="aa-prod-view-bottom">
											<a class="aa-add-to-cart-btn" href="product">Thêm vào giỏ hàng</a> 
										</div>
									</div>
								</div>
							</div>
						</div>

						<div class="aa-product-details-bottom">
							<ul class="nav nav-tabs" id="myTab2">
								<li><a href="#description" data-toggle="tab">Description</a></li>
								<li><a href="#review" data-toggle="tab">Reviews</a></li>
							</ul>


							<div class="tab-content">
								<div class="tab-pane fade in active" id="description">
									<p>Lorem Ipsum is simply dummy text of the printing and
										typesetting industry. Lorem Ipsum has been the industry's
										standard dummy text ever since the 1500s, when an unknown
										printer took a galley of type and scrambled it to make a type
										specimen book. It has survived not only five centuries, but
										also the leap into electronic typesetting, remaining
										essentially unchanged. It was popularised in the 1960s with
										the release of Letraset sheets containing Lorem Ipsum
										passages, and more recently with desktop publishing software
										like Aldus PageMaker including versions of Lorem Ipsum.</p>
									<ul>
										<li>Lorem ipsum dolor sit amet, consectetur adipisicing
											elit. Quod, culpa!</li>
										<li>Lorem ipsum dolor sit amet.</li>
										<li>Lorem ipsum dolor sit amet, consectetur adipisicing
											elit.</li>
										<li>Lorem ipsum dolor sit amet, consectetur adipisicing
											elit. Dolor qui eius esse!</li>
										<li>Lorem ipsum dolor sit amet, consectetur adipisicing
											elit. Quibusdam, modi!</li>
									</ul>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing
										elit. Illum, iusto earum voluptates autem esse molestiae
										ipsam, atque quam amet similique ducimus aliquid voluptate
										perferendis, distinctio!</p>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing
										elit. Blanditiis ea, voluptas! Aliquam facere quas cumque
										rerum dolore impedit, dicta ducimus repellat dignissimos,
										fugiat, minima quaerat necessitatibus? Optio adipisci ab,
										obcaecati, porro unde accusantium facilis repudiandae.</p>
								</div>
								<div class="tab-pane fade " id="review">
									<div class="aa-product-review-area">
										<h4>2 Reviews for T-Shirt</h4>
										<ul class="aa-review-nav">
											<li>
												<div class="media">
													<div class="media-left">
														<a href="#"> <img class="media-object"
															src="img/testimonial-img-3.jpg" alt="girl image">
														</a>
													</div>
													<div class="media-body">
														<h4 class="media-heading">
															<strong>Marla Jobs</strong> - <span>March 26, 2016</span>
														</h4>
														<div class="aa-product-rating">
															<span class="fa fa-star"></span> <span class="fa fa-star"></span>
															<span class="fa fa-star"></span> <span class="fa fa-star"></span>
															<span class="fa fa-star-o"></span>
														</div>
														<p>Lorem ipsum dolor sit amet, consectetur adipisicing
															elit.</p>
													</div>
												</div>
											</li>
											<li>
												<div class="media">
													<div class="media-left">
														<a href="#"> <img class="media-object"
															src="img/testimonial-img-3.jpg" alt="girl image">
														</a>
													</div>
													<div class="media-body">
														<h4 class="media-heading">
															<strong>Marla Jobs</strong> - <span>March 26, 2016</span>
														</h4>
														<div class="aa-product-rating">
															<span class="fa fa-star"></span> <span class="fa fa-star"></span>
															<span class="fa fa-star"></span> <span class="fa fa-star"></span>
															<span class="fa fa-star-o"></span>
														</div>
														<p>Lorem ipsum dolor sit amet, consectetur adipisicing
															elit.</p>
													</div>
												</div>
											</li>
										</ul>
										<h4>Add a review</h4>
										<div class="aa-your-rating">
											<p>Your Rating</p>
											<a href="#"><span class="fa fa-star-o"></span></a> <a
												href="#"><span class="fa fa-star-o"></span></a> <a href="#"><span
												class="fa fa-star-o"></span></a> <a href="#"><span
												class="fa fa-star-o"></span></a> <a href="#"><span
												class="fa fa-star-o"></span></a>
										</div>
										<!-- review form -->
										<form action="" class="aa-review-form">
											<div class="form-group">
												<label for="message">Your Review</label>
												<textarea class="form-control" rows="3" id="message"></textarea>
											</div>
											<div class="form-group">
												<label for="name">Name</label> <input type="text"
													class="form-control" id="name" placeholder="Name">
											</div>
											<div class="form-group">
												<label for="email">Email</label> <input type="email"
													class="form-control" id="email"
													placeholder="example@gmail.com">
											</div>

											<button type="submit"
												class="btn btn-default aa-review-submit">Submit</button>
										</form>
									</div>
								</div>
							</div>
						</div>



						<div class="aa-product-related-item">
							<h3>Related Products</h3>
							<ul class="aa-product-catg aa-related-item-slider">
								<c:forEach items="${ListProduct}" var="product">
									<li>

										<figure>
											<a class="aa-product-img" href="#"><img
												src="${product.image}" alt="polo shirt img"></a>
											<a class="aa-add-card-btn" href="#"><span
												class="fa fa-shopping-cart"></span>Add To Cart</a>
											<figcaption>
												<h4 class="aa-product-title">
													<a href="#">${product.name}</a>
												</h4>
												<span class="aa-product-price">Giá: ${product.price}</span>
											</figcaption>
										</figure>
										<div class="aa-product-hvr-content">
											<a href="#" data-toggle="tooltip" data-placement="top"
												title="Add to Wishlist"><span class="fa fa-heart-o"></span></a>
											<a href="#" data-toggle="tooltip" data-placement="top"
												title="Compare"><span class="fa fa-exchange"></span></a> <a
												href="#" data-toggle2="tooltip" data-placement="top"
												title="Quick View" data-toggle="modal"
												data-target="#quick-view-modal"><span
												class="fa fa-search"></span></a>
										</div> <!-- product badge --> <span class="aa-badge aa-sale"
										href="#">SALE!</span>
									</li>
								</c:forEach>
							</ul>

							<div class="modal fade" id="quick-view-modal" tabindex="-1"
								role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-body">
											<button type="button" class="close" data-dismiss="modal"
												aria-hidden="true">&times;</button>
											<div class="row">
												<!-- Modal view slider -->
												<div class="col-md-6 col-sm-6 col-xs-12">
													<div class="aa-product-view-slider">
														<div class="simpleLens-gallery-container" id="demo-1">
															<div class="simpleLens-container">
																<div class="simpleLens-big-image-container">
																	<a class="simpleLens-lens-image"
																		data-lens-image="img/view-slider/large/polo-shirt-1.png">
																		<img src="img/view-slider/medium/polo-shirt-1.png"
																		class="simpleLens-big-image">
																	</a>
																</div>
															</div>
															<div class="simpleLens-thumbnails-container">
																<a href="#" class="simpleLens-thumbnail-wrapper"
																	data-lens-image="img/view-slider/large/polo-shirt-1.png"
																	data-big-image="img/view-slider/medium/polo-shirt-1.png">
																	<img src="img/view-slider/thumbnail/polo-shirt-1.png">
																</a> <a href="#" class="simpleLens-thumbnail-wrapper"
																	data-lens-image="img/view-slider/large/polo-shirt-3.png"
																	data-big-image="img/view-slider/medium/polo-shirt-3.png">
																	<img src="img/view-slider/thumbnail/polo-shirt-3.png">
																</a> <a href="#" class="simpleLens-thumbnail-wrapper"
																	data-lens-image="img/view-slider/large/polo-shirt-4.png"
																	data-big-image="img/view-slider/medium/polo-shirt-4.png">
																	<img src="img/view-slider/thumbnail/polo-shirt-4.png">
																</a>
															</div>
														</div>
													</div>
												</div>
												<!-- Modal view content -->
												<div class="col-md-6 col-sm-6 col-xs-12">
													<div class="aa-product-view-content">
														<h3>T-Shirt</h3>
														<div class="aa-price-block">
															<span class="aa-product-view-price">$34.99</span>
															<p class="aa-product-avilability">
																Avilability: <span>In stock</span>
															</p>
														</div>
														<p>Lorem ipsum dolor sit amet, consectetur adipisicing
															elit. Officiis animi, veritatis quae repudiandae quod
															nulla porro quidem, itaque quis quaerat!</p>
														<h4>Size</h4>
														<div class="aa-prod-view-size">
															<a href="#">S</a> <a href="#">M</a> <a href="#">L</a> <a
																href="#">XL</a>
														</div>
														<div class="aa-prod-quantity">
															<form action="">
																<select name="" id="">
																	<option value="0" selected="1">1</option>
																	<option value="1">2</option>
																	<option value="2">3</option>
																	<option value="3">4</option>
																	<option value="4">5</option>
																	<option value="5">6</option>
																</select>
															</form>
															<p class="aa-prod-category">
																Category: <a href="#">Polo T-Shirt</a>
															</p>
														</div>
														<div class="aa-prod-view-bottom">
															<a href="#" class="aa-add-to-cart-btn"><span
																class="fa fa-shopping-cart"></span>Add To Cart</a> <a
																href="#" class="aa-add-to-cart-btn">View Details</a>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<!-- /.modal-content -->
								</div>
								<!-- /.modal-dialog -->
							</div>
							<!-- / quick view modal -->
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- / product category -->






	<jsp:include page="css/page/footer.jsp"></jsp:include>
	<!-- jQuery library -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/bootstrap.js"></script>
	<!-- SmartMenus jQuery plugin -->
	<script type="text/javascript" src="js/jquery.smartmenus.js"></script>
	<!-- SmartMenus jQuery Bootstrap Addon -->
	<script type="text/javascript" src="js/jquery.smartmenus.bootstrap.js"></script>
	<!-- To Slider JS -->
	<script src="js/sequence.js"></script>
	<script src="js/sequence-theme.modern-slide-in.js"></script>
	<!-- Product view slider -->
	<script type="text/javascript" src="js/jquery.simpleGallery.js"></script>
	<script type="text/javascript" src="js/jquery.simpleLens.js"></script>
	<!-- slick slider -->
	<script type="text/javascript" src="js/slick.js"></script>
	<!-- Price picker slider -->
	<script type="text/javascript" src="js/nouislider.js"></script>
	<!-- Custom js -->
	<script src="js/custom.js"></script>

</body>
</html>