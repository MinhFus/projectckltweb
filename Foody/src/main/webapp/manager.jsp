<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Daily Shop | Admin Page</title>

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

	<section id="cart-view">
		<div class="container">
			<div class="cart-view-total">
				<h3>
					 <a href="#" class="aa-cart-view-btn" data-toggle="modal" data-target="#add-modal">Thêm sản phẩm</a>
				</h3>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="cart-view-area">
						<div class="cart-view-table aa-wishlist-table">
							<form action="">
								<div class="table-responsive">
									<table class="table">
										<thead>
											<tr>
												<th>Image</th>
												<th>Food</th>
												<th>Price</th>
												<th>Address</th>
												<th></th>
												<th></th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${ListProduct}" var="product">
												<tr>
													<td><a href="#"><img src="${product.image}" alt="img"></a></td>
													<td><a class="aa-cart-title" href="">${product.name}</a></td>
													<td>${product.price}</td>
													<td>${product.address}</td>
													<td><a href="load?pid=${product.id}" class="aa-add-to-cart-btn">Edit</a></td>
													<td><a class="remove" href="delete?pid=${product.id}">
													<fa class="fa fa-close"></fa></a></td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<div class="modal fade" id="add-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-body">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4>Upload Product</h4>
					<form action="add" class="aa-login-form" method="post">
						<label for="">Tên Sản Phẩm:<span>*</span></label> 
						<input name="name" type="text" placeholder="Tên Sản Phẩm"> 
						<label for="">Địa Chỉ:<span>*</span> </label> 
						<input name="address" type="text" placeholder="Địa Chỉ Buôn Bán">
						<label for="">Giá Sản Phẩm:<span>*</span></label>
						<input name="price" type="text" placeholder="Giá Bán Sản Phẩm"> 
						<label for="">Thời Gian Bán:<span>*</span> </label> 
						<input name="time" type="text" placeholder="Thời Gian Cửa Hàng Hoạt Động"> 
						<label for="">Mô Tả:<span>*</span> </label> 
						<input name="descript" type="text" placeholder="Mô tả sản phẩm của bạn"> 
						<label for="">Hình Ảnh:<span>*</span></label> 
						<input name="url" type="text" placeholder="URL">
						<div>
							<label for="">Loại món ăn:<span>*</span></label> 
							<select id="" name="catogogy">
								<c:forEach items="${ListCategories}" var="product">
									<option value="${product.cid}">${product.cname}</option>
								</c:forEach>
							</select>
						</div>
						<button type="submit" class="aa-browse-btn">Thêm sản phẩm</button>
					</form>
				</div>
			</div>
		</div>
	</div>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
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